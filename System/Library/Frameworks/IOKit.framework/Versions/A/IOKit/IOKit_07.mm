void IOHIDEventSystemUnregisterServicesCallback(CFMutableDictionaryRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = CFGetAllocator(a1);
  v11 = CFStringCreateWithFormat(v10, 0, @"%p%p%p%p", a2, a3, a4, a5);
  if (v11)
  {
    v12 = v11;
    os_unfair_recursive_lock_lock_with_options();
    CFDictionaryRemoveValue(a1[22], v12);
    os_unfair_recursive_lock_unlock();

    CFRelease(v12);
  }
}

void __CopyRecordForCientFunction(uint64_t a1, _DWORD *a2, __CFArray *a3)
{
  v4 = _IOHIDServiceCopyServiceInfoForClient(a2, *MEMORY[0x1E695E738]);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(a3, v4);

    CFRelease(v5);
  }
}

uint64_t _IOHIDEventSystemRegisterRecordClientChanged(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  CFSetAddValue(*(a1 + 424), a2);

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemUnregisterRecordClientChanged(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  CFSetRemoveValue(*(a1 + 424), a2);

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemRegisterRecordServiceChanged(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  CFSetAddValue(*(a1 + 432), a2);

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemUnregisterRecordServiceChanged(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  CFSetRemoveValue(*(a1 + 432), a2);

  return os_unfair_recursive_lock_unlock();
}

void __GDBIOHIDEventSystemDump()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = CFCopyDescription(__IOHIDEventSystem_debug);
  v1 = _IOHIDLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    CStringPtr = CFStringGetCStringPtr(v0, 0);
    _os_log_impl(&dword_197195000, v1, OS_LOG_TYPE_INFO, "event system =\n%s", &v3, 0xCu);
  }

  CFRelease(v0);
  v2 = *MEMORY[0x1E69E9840];
}

void __IOHIDEventSystemRelease(uint64_t a1)
{
  v2 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_197195000, v2, OS_LOG_TYPE_DEFAULT, "__IOHIDEventSystemRelease", buf, 2u);
  }

  v3 = _IOHIDLog();
  if (os_signpost_enabled(v3))
  {
    *v24 = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemRelease", &unk_19724ED59, v24, 2u);
  }

  if (__IOHIDEventSystem_debug == a1)
  {
    __IOHIDEventSystem_debug = 0;
  }

  v4 = *(a1 + 440);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(a1 + 440));
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 128) = 0;
  }

  v6 = *(a1 + 152);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 152) = 0;
  }

  v7 = *(a1 + 424);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 424) = 0;
  }

  v8 = *(a1 + 432);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 432) = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 32) = 0;
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 48) = 0;
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 56) = 0;
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 64) = 0;
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 72) = 0;
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 24) = 0;
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    IONotificationPortDestroy(v16);
  }

  v17 = *(a1 + 168);
  if (v17)
  {
    IOObjectRelease(v17);
  }

  v18 = *(a1 + 80);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 80) = 0;
  }

  v19 = *(a1 + 176);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 176) = 0;
  }

  v20 = *(a1 + 136);
  if (v20)
  {
    hid_dispatch_queue_release(v20);
  }

  v21 = *(a1 + 144);
  if (v21)
  {
    hid_dispatch_queue_release(v21);
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 40) = 0;
  }

  if (qword_1ED446AC8)
  {
    IOHIDAnalyticsEventCancel();
    CFRelease(qword_1ED446AC8);
    qword_1ED446AC8 = 0;
  }

  v23 = *(a1 + 16);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 16) = 0;
  }
}

CFStringRef __IOHIDEventSystemCopyDebugDesc(void *a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  v4 = CFStringCreateWithFormat(v2, 0, @"<IOHIDEventSystem %p [%p]>{\n\tserviceDict=%@ \n\tnotificationDict=%@ \n\tmatchNotifySet=%@ \n\tclientSet=%@}", a1, v3, a1[2], a1[3], a1[5], a1[6]);
  os_unfair_recursive_lock_unlock();
  return v4;
}

CFTypeID IOHIDEventSystemClientGetTypeID(void)
{
  result = __kIOHIDEventSystemClientTypeID;
  if (!__kIOHIDEventSystemClientTypeID)
  {
    pthread_once(&__systemTypeInit_0, __IOHIDEventSystemClientRegister);
    return __kIOHIDEventSystemClientTypeID;
  }

  return result;
}

uint64_t __IOHIDEventSystemClientTerminationCallback(uint64_t a1, uint64_t a2, char a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __IOHIDEventSystemClientTerminationCallback_cold_1();
  }

  os_unfair_recursive_lock_lock_with_options();
  v6 = *(a2 + 32);
  if (v6)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v6);
    *(a2 + 32) = 0;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 384);
  v9 = *(a2 + 392);
  v10 = *(a2 + 400);
  os_unfair_recursive_lock_unlock();
  if (*(a2 + 384))
  {
    __IOHIDEventSystemClientUnscheduleWithRunLoop(a2, v8, v9);
  }

  else if (v10 && v7)
  {
    IOMIGMachPortUnscheduleFromDispatchQueue(v7, v10);
  }

  os_unfair_recursive_lock_lock_with_options();
  v11 = *(a2 + 288);
  if (v11)
  {
    CFRelease(v11);
    *(a2 + 288) = 0;
  }

  v12 = *(a2 + 272);
  if (v12)
  {
    CFRelease(v12);
    *(a2 + 272) = 0;
  }

  if (v7)
  {
    Port = IOMIGMachPortGetPort(v7);
    IOMIGMachPortCacheRemove(Port);
    CFRelease(*(a2 + 40));
    *(a2 + 40) = 0;
  }

  ++*(a2 + 144);
  os_unfair_recursive_lock_unlock();
  __IOHIDEventSystemClientRefresh(a2, a3);
  os_unfair_recursive_lock_lock_with_options();
  v14 = *(a2 + 136);
  if (v14 && CFArrayGetCount(v14) >= 1)
  {
    v15 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 136), v15);
      if (ValueAtIndex)
      {
        v17 = ValueAtIndex;
        TypeID = CFDataGetTypeID();
        if (TypeID == CFGetTypeID(v17))
        {
          BytePtr = CFDataGetBytePtr(v17);
          if (*BytePtr)
          {
            v20 = BytePtr;
            v21 = _IOHIDLogCategory(0xDu);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = *v20;
              v23 = *(v20 + 1);
              v24 = *(v20 + 2);
              *buf = 134218496;
              v28 = v22;
              v29 = 2048;
              v30 = v23;
              v31 = 2048;
              v32 = v24;
              _os_log_impl(&dword_197195000, v21, OS_LOG_TYPE_INFO, "posting reset to (%p)(%p, %p)", buf, 0x20u);
            }

            (*v20)(*(v20 + 1), *(v20 + 2));
          }
        }
      }

      ++v15;
    }

    while (CFArrayGetCount(*(a2 + 136)) > v15);
  }

  result = os_unfair_recursive_lock_unlock();
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOHIDEventSystemClient()
{
  v0 = _IOHIDLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    IOHIDEventSystemClient_cold_1();
  }

  result = IOHIDEventSystemClient___hidClient;
  if (!IOHIDEventSystemClient___hidClient)
  {
    result = IOHIDEventSystemClientCreateWithType(*MEMORY[0x1E695E480], 1, 0x61746368);
    IOHIDEventSystemClient___hidClient = result;
  }

  return result;
}

uint64_t IOHIDEventSystemClientScheduleWithDispatchQueue(uint64_t a1, NSObject *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 408) = 1;
  os_unfair_recursive_lock_unlock();
  IOHIDEventSystemClientSetDispatchQueue(a1, a2);

  return IOHIDEventSystemClientActivate(a1);
}

void *IOHIDEventSystemClientSetCancelHandler(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 304);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 304) = result;
  return result;
}

uint64_t IOHIDEventSystemClientRegisterEventBlock(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
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
  if (a2)
  {
    v9 = _Block_copy(a2);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 208) = v9;
  *(a1 + 216) = a3;
  *(a1 + 224) = a4;
  os_unfair_recursive_lock_unlock();

  return __IOHIDEventSystemClientStartQueue(a1);
}

uint64_t IOHIDEventSystemClientUnregisterEventCallback(void *a1)
{
  os_unfair_recursive_lock_lock_with_options();
  a1[25] = 0;
  a1[27] = 0;
  a1[28] = 0;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventSystemClientUnregisterEventBlock(void *a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = a1[26];
  if (v2)
  {
    _Block_release(v2);
    a1[26] = 0;
  }

  a1[27] = 0;
  a1[28] = 0;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventSystemClientRegisterEventFilterCallbackWithPriority(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  *(a1 + 232) = a3;
  *(a1 + 248) = a4;
  *(a1 + 256) = a5;
  *(a1 + 264) = a2;
  os_unfair_recursive_lock_unlock();

  return __IOHIDEventSystemClientStartFilter(a1);
}

uint64_t IOHIDEventSystemClientRegisterEventFilterBlockWithPriority(uint64_t a1, int a2, const void *a3, uint64_t a4, uint64_t a5)
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
  if (a3)
  {
    v11 = _Block_copy(a3);
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 240) = v11;
  *(a1 + 248) = a4;
  *(a1 + 256) = a5;
  *(a1 + 264) = a2;
  os_unfair_recursive_lock_unlock();

  return __IOHIDEventSystemClientStartFilter(a1);
}

uint64_t IOHIDEventSystemClientUnregisterEventFilterCallback(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  if (*(a1 + 232))
  {
    *(a1 + 232) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    io_hideventsystem_unregister_event_filter(*(a1 + 32));
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventSystemClientUnregisterEventFilterBlock(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 240);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    io_hideventsystem_unregister_event_filter(*(a1 + 32));
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemClientDispatchEventFilter(void *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = a1[30];
  if (v6)
  {
    v7 = (*(v6 + 16))(v6, a1[31], a1[32], a2, a3);
  }

  else
  {
    v8 = a1[29];
    if (!v8)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v7 = v8(a1[31], a1[32], a2, a3);
  }

  v9 = v7;
LABEL_6:
  os_unfair_recursive_lock_unlock();
  return v9;
}

uint64_t _IOHIDEventSystemClientUngroupAndDispatchEventFilter(uint64_t a1, const void *a2, uint64_t a3, vm_offset_t **a4, _DWORD **a5)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9C0]);
  Children = IOHIDEventGetChildren(a3);
  if (Children)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = ___IOHIDEventSystemClientUngroupAndDispatchEventFilter_block_invoke;
    v18[3] = &unk_1E74A8708;
    v18[4] = &v19;
    v18[5] = a1;
    v18[6] = a2;
    v18[7] = Mutable;
    _IOHIDCFArrayApplyBlock(Children, v18);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___IOHIDEventSystemClientUngroupAndDispatchEventFilter_block_invoke_2;
    v17[3] = &__block_descriptor_tmp_26_0;
    v17[4] = a3;
    _IOHIDCFArrayApplyBlock(Mutable, v17);
    if (*(v20 + 6))
    {
      v12 = IOHIDEventGetChildren(a3);
      if (!CFArrayGetCount(v12))
      {
        v15 = 1;
        goto LABEL_7;
      }

      if (*(v20 + 6))
      {
        v13 = CFGetAllocator(a2);
        DataInternal = IOHIDEventCreateDataInternal(v13, a3);
        **a5 = _IOHIDSerialize(DataInternal, *a4);
        CFRelease(DataInternal);
      }
    }
  }

  v15 = 0;
LABEL_7:
  _Block_object_dispose(&v19, 8);
  return v15;
}

void IOHIDEventSystemClientDispatchEvent(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E695E480];
  DataInternal = IOHIDEventCreateDataInternal(*MEMORY[0x1E695E480], a2);
  if (DataInternal)
  {
    v5 = DataInternal;
    v6 = _IOHIDCreateBinaryData(v3, DataInternal);
    if (v6)
    {
      v7 = v6;
      BytePtr = CFDataGetBytePtr(v6);
      Length = CFDataGetLength(v7);
      os_unfair_recursive_lock_lock_with_options();
      v10 = io_hideventsystem_dispatch_event(*(a1 + 32), BytePtr, Length, 0);
      if (v10 == 268435459 && !*(a1 + 384) && !*(a1 + 400))
      {
        __IOHIDEventSystemClientTerminationCallback(v10, a1, 0);
        io_hideventsystem_dispatch_event(*(a1 + 32), BytePtr, Length, 0);
      }

      os_unfair_recursive_lock_unlock();
      CFRelease(v7);
    }

    CFRelease(v5);
  }
}

uint64_t _IOHIDEventSystemClientRegisterServiceRecordsChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 352) = a2;
  *(a1 + 368) = a3;
  *(a1 + 376) = a4;
  io_hideventsystem_register_record_service_changed_notification(*(a1 + 32));

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemClientRegisterServiceRecordsChangedBlock(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  if (a2)
  {
    v8 = _Block_copy(a2);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 360) = v8;
  *(a1 + 368) = a3;
  *(a1 + 376) = a4;
  io_hideventsystem_register_record_service_changed_notification(*(a1 + 32));

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemClientUnregisterServiceRecordsChangedCallback(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 352) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  io_hideventsystem_unregister_record_service_changed_notification(*(a1 + 32));

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemClientUnregisterServiceRecordsChangedBlock(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 360);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 360) = 0;
  }

  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  io_hideventsystem_unregister_record_service_changed_notification(*(a1 + 32));

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemClientRegisterClientRecordsChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 320) = a2;
  *(a1 + 336) = a3;
  *(a1 + 344) = a4;
  io_hideventsystem_register_record_client_changed_notification(*(a1 + 32));

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemClientRegisterClientRecordsChangedBlock(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  if (a2)
  {
    v8 = _Block_copy(a2);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 328) = v8;
  *(a1 + 336) = a3;
  *(a1 + 344) = a4;
  io_hideventsystem_register_record_client_changed_notification(*(a1 + 32));

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemClientUnregisterClientRecordsChangedCallback(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  io_hideventsystem_unregister_record_client_changed_notification(*(a1 + 32));

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemClientUnregisterClientRecordsChangedBlock(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 328);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 328) = 0;
  }

  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  io_hideventsystem_unregister_record_client_changed_notification(*(a1 + 32));

  return os_unfair_recursive_lock_unlock();
}

void __IOHIDEventSystemClientHandleServiceCacheRefresh(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3)
{
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = ____IOHIDEventSystemClientHandleServiceCacheRefresh_block_invoke;
  context[3] = &__block_descriptor_tmp_121;
  context[4] = a3;
  _IOHIDCFDictionaryApplyBlock(a2, context);
  if (a3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ____IOHIDEventSystemClientHandleServiceCacheRefresh_block_invoke_2;
    v6[3] = &__block_descriptor_tmp_122;
    v6[4] = a2;
    v6[5] = a1;
    _IOHIDCFDictionaryApplyBlock(a3, v6);
  }
}

uint64_t IOHIDEventSystemClientRegisterDeviceMatchingCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  *(a1 + 168) = a2;
  *(a1 + 184) = a3;
  *(a1 + 192) = a4;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventSystemClientUnregisterDeviceMatchingCallback(void *a1)
{
  os_unfair_recursive_lock_lock_with_options();
  a1[21] = 0;
  a1[23] = 0;
  a1[24] = 0;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventSystemClientRegisterDeviceMatchingBlock(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
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
  if (a2)
  {
    v9 = _Block_copy(a2);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 176) = v9;
  *(a1 + 184) = a3;
  *(a1 + 192) = a4;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventSystemClientUnregisterDeviceMatchingBlock(void *a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = a1[22];
  if (v2)
  {
    _Block_release(v2);
    a1[22] = 0;
  }

  a1[23] = 0;
  a1[24] = 0;

  return os_unfair_recursive_lock_unlock();
}

const void *IOHIDEventSystemClientCopyServiceForRegistryID(uint64_t a1, uint64_t a2)
{
  Service = __IOHIDEventSystemClientGetService(a1, a2);
  v3 = Service;
  if (Service)
  {
    CFRetain(Service);
  }

  return v3;
}

void *_IOHIDEventSystemClientCopyMatchingEventForService(uint64_t a1, IOHIDServiceClientRef service, const UInt8 *BytePtr)
{
  v36[0] = 0;
  v35 = 0;
  v34 = 0;
  if (!a1 || !service)
  {
    _IOHIDEventSystemClientCopyMatchingEventForService_cold_6();
    return v36[1];
  }

  RegistryID = IOHIDServiceClientGetRegistryID(service);
  if (!RegistryID || (v6 = RegistryID, v7 = CFGetTypeID(RegistryID), v7 != CFNumberGetTypeID()))
  {
    _IOHIDEventSystemClientCopyMatchingEventForService_cold_5();
    return v36[1];
  }

  CFNumberGetValue(v6, kCFNumberSInt64Type, &v34);
  if (!BytePtr)
  {
    v9 = 0;
    v18 = 0;
    Length = 0;
    v15 = 0;
    goto LABEL_20;
  }

  Value = CFDictionaryGetValue(BytePtr, @"MatchingEvent");
  v9 = Value;
  if (!Value)
  {
    v18 = 0;
    v12 = *MEMORY[0x1E695E480];
    goto LABEL_15;
  }

  v10 = CFGetTypeID(Value);
  TypeID = IOHIDEventGetTypeID();
  v12 = *MEMORY[0x1E695E480];
  if (v10 != TypeID)
  {
    v9 = 0;
    v18 = 0;
    goto LABEL_15;
  }

  DataInternal = IOHIDEventCreateDataInternal(*MEMORY[0x1E695E480], v9);
  if (!DataInternal)
  {
    _IOHIDEventSystemClientCopyMatchingEventForService_cold_3();
    return v36[1];
  }

  v9 = DataInternal;
  v14 = _IOHIDCreateBinaryData(v12, DataInternal);
  if (!v14)
  {
    v32 = _IOHIDLogCategory(0xDu);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      _IOHIDEventSystemClientCopyMatchingEventForService_cold_2();
    }

    v24 = 0;
    v15 = 0;
    goto LABEL_49;
  }

  v15 = v14;
  Count = CFDictionaryGetCount(BytePtr);
  MutableCopy = CFDictionaryCreateMutableCopy(v12, Count, BytePtr);
  if (!MutableCopy)
  {
    v33 = _IOHIDLogCategory(0xDu);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      _IOHIDEventSystemClientCopyMatchingEventForService_cold_1();
    }

    v24 = 0;
LABEL_49:
    v18 = 0;
    goto LABEL_27;
  }

  v18 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"MatchingEvent", v15);
  CFRelease(v15);
LABEL_15:
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = BytePtr;
  }

  v21 = _IOHIDCreateBinaryData(v12, v20);
  if (!v21)
  {
    v31 = _IOHIDLogCategory(0xDu);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      _IOHIDEventSystemClientCopyMatchingEventForService_cold_4();
    }

    v15 = 0;
    goto LABEL_26;
  }

  v15 = v21;
  BytePtr = CFDataGetBytePtr(v21);
  Length = CFDataGetLength(v15);
LABEL_20:
  os_unfair_recursive_lock_lock_with_options();
  v22 = io_hideventsystem_copy_matching_event_for_service(*(a1 + 32), v34, BytePtr, Length, v36, &v35);
  v23 = v22;
  if (v22 == 268435459)
  {
    if (*(a1 + 384) || *(a1 + 400))
    {
      os_unfair_recursive_lock_unlock();
      goto LABEL_26;
    }

    __IOHIDEventSystemClientTerminationCallback(v22, a1, 0);
    v23 = io_hideventsystem_copy_matching_event_for_service(*(a1 + 32), v34, BytePtr, Length, v36, &v35);
  }

  os_unfair_recursive_lock_unlock();
  if (!v23)
  {
    v26 = v36[0];
    v27 = v35;
    v28 = CFDataGetTypeID();
    v29 = _IOHIDUnserializeAndVMDeallocWithTypeID(v26, v27, v28);
    if (v29)
    {
      v30 = v29;
      v24 = IOHIDEventCreateWithDataInternal(*MEMORY[0x1E695E480], v29);
      CFRelease(v30);
      if (!v9)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

LABEL_26:
  v24 = 0;
  if (v9)
  {
LABEL_27:
    CFRelease(v9);
  }

LABEL_28:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v24;
}

uint64_t _IOHIDEventSystemClientSetElementValueForService(uint64_t a1, IOHIDServiceClientRef service, int a3, int a4, int a5)
{
  v5 = 3758097090;
  v18 = -536870206;
  if (a1)
  {
    if (service)
    {
      v10 = *MEMORY[0x1E695E480];
      RegistryID = IOHIDServiceClientGetRegistryID(service);
      v12 = _IOHIDCreateBinaryData(v10, RegistryID);
      if (v12)
      {
        v13 = v12;
        BytePtr = CFDataGetBytePtr(v12);
        Length = CFDataGetLength(v13);
        os_unfair_recursive_lock_lock_with_options();
        v16 = io_hideventsystem_set_element_value_for_service(*(a1 + 32), BytePtr, Length, a3, a4, a5, &v18);
        if (v16 == 268435459 && !*(a1 + 384) && !*(a1 + 400))
        {
          __IOHIDEventSystemClientTerminationCallback(v16, a1, 0);
          io_hideventsystem_set_element_value_for_service(*(a1 + 32), BytePtr, Length, a3, a4, a5, &v18);
        }

        os_unfair_recursive_lock_unlock();
        CFRelease(v13);
        return v18;
      }
    }
  }

  return v5;
}

void IOHIDEventSystemClientRegisterPropertyChangedCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  if (!*(a1 + 120))
  {
    memset(&v14, 0, sizeof(v14));
    v11 = CFGetAllocator(a1);
    *(a1 + 120) = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], &v14);
  }

  os_unfair_recursive_lock_unlock();
  v12 = malloc_type_malloc(0x20uLL, 0xE00408373F082uLL);
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  os_unfair_recursive_lock_lock_with_options();
  CFDictionarySetValue(*(a1 + 120), a2, v12);
  os_unfair_recursive_lock_unlock();
  __IOHIDEventSystemClientRegisterPropertyCallbackRegisterFunction(a2, v13, a1);
}

void __IOHIDEventSystemClientRegisterPropertyCallbackRegisterFunction(const void *a1, uint64_t a2, uint64_t a3)
{
  v4 = _IOHIDCreateBinaryData(*MEMORY[0x1E695E480], a1);
  if (v4)
  {
    v5 = v4;
    os_unfair_recursive_lock_lock_with_options();
    v6 = *(a3 + 32);
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    io_hideventsystem_register_property_changed_notification(v6, BytePtr, Length);
    os_unfair_recursive_lock_unlock();

    CFRelease(v5);
  }
}

void IOHIDEventSystemClientUnregisterPropertyChangedCallback(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  Value = CFDictionaryGetValue(*(a1 + 120), a2);
  CFDictionaryRemoveValue(*(a1 + 120), a2);
  os_unfair_recursive_lock_unlock();
  if (Value)
  {
    free(Value);
  }

  v5 = _IOHIDCreateBinaryData(*MEMORY[0x1E695E480], a2);
  if (v5)
  {
    v6 = v5;
    os_unfair_recursive_lock_lock_with_options();
    v7 = *(a1 + 32);
    BytePtr = CFDataGetBytePtr(v6);
    Length = CFDataGetLength(v6);
    io_hideventsystem_unregister_property_changed_notification(v7, BytePtr, Length);
    os_unfair_recursive_lock_unlock();

    CFRelease(v6);
  }
}

const char *IOHIDEventSystemClientGetTypeString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Invalid";
  }

  else
  {
    return off_1E74A8828[a1];
  }
}

uint64_t _iohideventsystem_output_event_to_virtual_service(unsigned int a1, const void *a2, UInt8 *a3, unsigned int a4, _DWORD *a5)
{
  v9 = a4;
  TypeID = CFDataGetTypeID();
  v11 = _IOHIDUnserializeAndVMDeallocWithTypeID(a3, v9, TypeID);
  if (!v11)
  {
    _iohideventsystem_output_event_to_virtual_service_cold_2(a5);
    return 0;
  }

  v12 = v11;
  v13 = IOHIDEventCreateWithDataInternal(*MEMORY[0x1E695E480], v11);
  if (!v13)
  {
    *a5 = -536870211;
    v22 = v12;
    goto LABEL_13;
  }

  v14 = v13;
  v15 = IOMIGMachPortCacheCopy(a1);
  v16 = v15;
  if (!v15)
  {
    goto LABEL_15;
  }

  v17 = CFGetTypeID(v15);
  v18 = __kIOHIDEventSystemClientTypeID;
  if (!__kIOHIDEventSystemClientTypeID)
  {
    pthread_once(&__systemTypeInit_0, __IOHIDEventSystemClientRegister);
    v18 = __kIOHIDEventSystemClientTypeID;
  }

  if (v17 == v18)
  {
    os_unfair_recursive_lock_lock_with_options();
    Value = CFDictionaryGetValue(v16[13], a2);
    if (Value)
    {
      v20 = Value;
      CFRetain(Value);
      os_unfair_recursive_lock_unlock();
      *a5 = _IOHIDVirtualServiceClientSetOputputEvent(v20, v14);
      CFRelease(v20);
      CFRelease(v12);
      CFRelease(v14);
LABEL_12:
      v22 = v16;
LABEL_13:
      CFRelease(v22);
      return 0;
    }

    os_unfair_recursive_lock_unlock();
    *a5 = -536870208;
    v21 = _IOHIDLogCategory(0xDu);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _iohideventsystem_output_event_to_virtual_service_cold_1();
    }
  }

  else
  {
LABEL_15:
    *a5 = -536870212;
  }

  CFRelease(v12);
  CFRelease(v14);
  if (v16)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t _iohideventsystem_copy_matching_event_from_virtual_service(unsigned int a1, const void *a2, UInt8 *a3, unsigned int a4, vm_offset_t *a5, _DWORD *a6)
{
  v11 = a4;
  TypeID = CFDictionaryGetTypeID();
  v13 = _IOHIDUnserializeAndVMDeallocWithTypeID(a3, v11, TypeID);
  v14 = IOMIGMachPortCacheCopy(a1);
  v15 = v14;
  if (!v14)
  {
    goto LABEL_21;
  }

  v16 = CFGetTypeID(v14);
  v17 = __kIOHIDEventSystemClientTypeID;
  if (!__kIOHIDEventSystemClientTypeID)
  {
    pthread_once(&__systemTypeInit_0, __IOHIDEventSystemClientRegister);
    v17 = __kIOHIDEventSystemClientTypeID;
  }

  if (v16 != v17)
  {
LABEL_21:
    _iohideventsystem_copy_event_from_virtual_service_cold_2();
    if (!v13)
    {
      goto LABEL_18;
    }

LABEL_17:
    CFRelease(v13);
    goto LABEL_18;
  }

  os_unfair_recursive_lock_lock_with_options();
  Value = CFDictionaryGetValue(v15[13], a2);
  if (Value)
  {
    v19 = Value;
    CFRetain(Value);
    os_unfair_recursive_lock_unlock();
    v20 = _IOHIDVirtualServiceClientCopyMatchingEvent(v19, v13);
    if (v20)
    {
      v21 = CFGetAllocator(v19);
      DataInternal = IOHIDEventCreateDataInternal(v21, v20);
    }

    else
    {
      DataInternal = 0;
    }

    *a6 = _IOHIDSerialize(DataInternal, a5);
    CFRelease(v19);
    if (v20)
    {
      CFRelease(v20);
    }

    if (DataInternal)
    {
      CFRelease(DataInternal);
    }

LABEL_16:
    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  os_unfair_recursive_lock_unlock();
  v23 = _IOHIDLogCategory(0xDu);
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_16;
  }

  _iohideventsystem_output_event_to_virtual_service_cold_1();
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v15)
  {
    CFRelease(v15);
  }

  return 0;
}

uint64_t __IOHIDEventSystemClientConnectionPropertyFunction(const __CFString *a1, const void *a2, __IOHIDEventSystemClient *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = _IOHIDLogCategory(0xDu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = a1;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_197195000, v6, OS_LOG_TYPE_INFO, "restore property %@ to %@", &v9, 0x16u);
  }

  result = IOHIDEventSystemClientSetProperty(a3, a1, a2);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OUTLINED_FUNCTION_10_0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{

  return io_hideventsystem_service_conforms_to(v12, v13, a1, v11, v10, &a10);
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return _IOHIDLogCategory(0xDu);
}

uint64_t IOHIDNotificationGetTypeID()
{
  result = __kIOHIDNotificationTypeID;
  if (!__kIOHIDNotificationTypeID)
  {
    pthread_once(&__notificationTypeInit, __IOHIDNotificationRegister);
    return __kIOHIDNotificationTypeID;
  }

  return result;
}

CFStringRef __IOHIDNotificationCopyDebugDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = *(a1 + 24);
  return CFStringCreateWithFormat(v2, 0, @"<IOHIDNotificationRef %p (ref:%d xref:%d), flags:%x  %p,%p,%p,%p,%p,%p>", a1, *(a1 + 16), *(a1 + 20), *(a1 + 72), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

uint64_t _IOHIDServiceCreate(uint64_t a1, io_registry_entry_t entry)
{
  v79 = *MEMORY[0x1E69E9840];
  theScore = 0;
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(entry, &entryID);
  if (__serviceRunLoopInit != -1)
  {
    _IOHIDServiceCreate_cold_1();
  }

  _IOHIDDebugTrace(8257, 1, entryID, 0, 0, 0);
  Private = _IOHIDServiceCreatePrivate(a1);
  if (!Private)
  {
    goto LABEL_7;
  }

  if (IOObjectRetain(entry))
  {
    v5 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _IOHIDServiceCreate_cold_2();
    }

    goto LABEL_7;
  }

  *(Private + 16) = entry;
  v8 = CFUUIDGetConstantUUIDWithBytes(0, 5u, 0x16u, 0xB5u, 0x63u, 0xB1u, 0x5Bu, 0x11u, 0xDAu, 0x96u, 0xEBu, 0, 0x14u, 0x51u, 0x97u, 0x58u, 0xEFu);
  v9 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v63 = IOCreatePlugInInterfaceForService(entry, v8, v9, (Private + 40), &theScore);
  if (v63)
  {
    object = *(Private + 16);
    allocator = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      goto LABEL_78;
    }

    v11 = Mutable;
    v12 = _IOHIDLoadServicePluginBundles();
    if (!v12)
    {
      goto LABEL_77;
    }

    v13 = v12;
    if (CFArrayGetCount(v12) >= 1)
    {
      v64 = 0;
      for (i = 0; i < CFArrayGetCount(v13); ++i)
      {
        *v77 = 0;
        *&v77[8] = v77;
        *&v77[16] = 0x2000000000;
        v78 = 0;
        valuePtr = 0;
        value = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
        InfoDictionary = CFBundleGetInfoDictionary(ValueAtIndex);
        if (InfoDictionary)
        {
          v17 = InfoDictionary;
          v18 = CFDictionaryGetValue(InfoDictionary, @"Matching");
          if (v18 && (v19 = v18, v20 = CFGetTypeID(v18), v20 == CFDictionaryGetTypeID()))
          {
            if (CFDictionaryGetValueIfPresent(v19, @"IOKitPersonalities", &value) && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(value)))
            {
              *context = MEMORY[0x1E69E9820];
              *&context[8] = 0x40000000;
              *&context[16] = ____IOHIDServiceMatchObjcServicePlugin_block_invoke;
              v73 = &unk_1E74A8C50;
              v75 = object;
              v74 = v77;
              _IOHIDCFDictionaryApplyBlock(value, context);
            }

            else if (IOObjectConformsTo(object, "IOHIDDevice") || IOObjectConformsTo(object, "IOHIDEventService"))
            {
              IOServiceMatchPropertyTable(object, v19, (*&v77[8] + 24));
            }

            else
            {
              v26 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (!v26)
              {
                _Block_object_dispose(v77, 8);
LABEL_77:
                CFRelease(v11);
LABEL_78:
                v51 = 0;
                goto LABEL_79;
              }

              v27 = v26;
              CFDictionarySetValue(v26, @"IOPropertyMatch", v19);
              IOServiceMatchPropertyTable(object, v27, (*&v77[8] + 24));
              CFRelease(v27);
            }

            if (*(*&v77[8] + 24))
            {
              v23 = CFDictionaryGetValue(v17, @"ProbeScore");
              if (v23)
              {
                v24 = v23;
                v25 = CFGetTypeID(v19);
                if (v25 != CFNumberGetTypeID())
                {
                  CFNumberGetValue(v24, kCFNumberSInt32Type, &valuePtr);
                }
              }

              if (valuePtr <= v64)
              {
                if (valuePtr == v64)
                {
                  CFArrayAppendValue(v11, ValueAtIndex);
                }
              }

              else
              {
                CFArrayRemoveAllValues(v11);
                CFArrayAppendValue(v11, ValueAtIndex);
                v64 = valuePtr;
              }
            }
          }

          else
          {
            v22 = _IOHIDLogCategory(0);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v17;
              _os_log_error_impl(&dword_197195000, v22, OS_LOG_TYPE_ERROR, "__IOHIDServiceLoadObjcServicePlugin plugin did not provide passive matching dictionary %@", buf, 0xCu);
            }
          }
        }

        _Block_object_dispose(v77, 8);
      }
    }

    if (CFArrayGetCount(v11) < 1)
    {
      goto LABEL_77;
    }

    v28 = 0;
    v29 = 0;
    v65 = -1;
    do
    {
      *buf = 0;
      v30 = CFArrayGetValueAtIndex(v11, v29);
      v31 = CFBundleGetInfoDictionary(v30);
      if (v31)
      {
        v32 = v31;
        v33 = CFDictionaryGetValue(v31, @"NSPrincipalClass");
        if (v33)
        {
          v34 = v33;
          v35 = CFGetTypeID(v33);
          if (v35 == CFStringGetTypeID())
          {
            v36 = CFStringCreateWithFormat(allocator, 0, @"OBJC_CLASS_$_%@", v34);
            if (v36)
            {
              v37 = v36;
              DataPointerForName = CFBundleGetDataPointerForName(v30, v36);
              if (DataPointerForName)
              {
                v39 = DataPointerForName;
                CFRelease(v37);
                if ([v39 getUid("matchService:object options:0 score:buf")])
                {
                  v40 = *buf;
                  if (*buf > v65)
                  {
                    *(Private + 488) = v34;
                    v65 = v40;
                    v28 = v39;
                  }
                }
              }

              else
              {
                v41 = _IOHIDLogCategory(0);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  *v77 = 138412546;
                  *&v77[4] = v37;
                  *&v77[12] = 2112;
                  *&v77[14] = v32;
                  _os_log_error_impl(&dword_197195000, v41, OS_LOG_TYPE_ERROR, "__IOHIDServiceLoadObjcServicePlugin failed to find symbol %@ for bundle %@", v77, 0x16u);
                }

                CFRelease(v37);
              }
            }
          }
        }
      }

      ++v29;
    }

    while (v29 < CFArrayGetCount(v11));
    CFRelease(v11);
    if (v28)
    {
      v42 = *(Private + 16);
      v43 = [v28 getUid("alloc")];
      if (v43)
      {
        v44 = v43;
        if ([v43 getUid("initWithService:v42")])
        {
          Protocol = objc_getProtocol("HIDServicePlugin");
          if (Protocol)
          {
            if (class_conformsToProtocol(v28, Protocol))
            {
              *(Private + 480) = v44;
              *(Private + 496) = sel_getUid("propertyForKey:client:");
              *(Private + 504) = sel_getUid("setProperty:forKey:client:");
              *(Private + 512) = sel_getUid("eventMatching:forClient:");
              *(Private + 520) = sel_getUid("setEventDispatcher:");
              *(Private + 528) = sel_getUid("setCancelHandler:");
              *(Private + 536) = sel_getUid("activate");
              *(Private + 544) = sel_getUid("cancel");
              Uid = sel_getUid("setDispatchQueue:");
              if (class_respondsToSelector(v28, Uid))
              {
                *(Private + 552) = sel_getUid("setDispatchQueue:");
              }

              v47 = sel_getUid("clientNotification:added:");
              if (class_respondsToSelector(v28, v47))
              {
                *(Private + 560) = sel_getUid("clientNotification:added:");
              }

              v48 = sel_getUid("setHIDEventService:");
              if (class_respondsToSelector(v28, v48))
              {
                *(Private + 584) = sel_getUid("setHIDEventService:");
              }

              v49 = sel_getUid("copyEvent:matching:options:");
              if (class_respondsToSelector(v28, v49))
              {
                *(Private + 568) = sel_getUid("copyEvent:matching:options:");
              }

              v50 = sel_getUid("setOutputEvent:");
              if (class_respondsToSelector(v28, v50))
              {
                *(Private + 576) = sel_getUid("setOutputEvent:");
              }

              v51 = 1;
              goto LABEL_80;
            }

            _IOHIDServiceCreate_cold_3();
          }

          else
          {
            _IOHIDServiceCreate_cold_4();
          }

          CFRelease(v44);
        }

        else
        {
          v61 = _IOHIDLogCategory(0);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            _IOHIDServiceCreate_cold_5();
          }
        }
      }
    }

    v51 = 0;
    goto LABEL_80;
  }

  v52 = *(Private + 40);
  v53 = *(*v52 + 8);
  v54 = *MEMORY[0x1E695E4A8];
  v55 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0x6Fu, 0xE2u, 0x2Au, 0xBFu, 0x68u, 0xB9u, 0x11u, 0xDBu, 0xA7u, 0x1Fu, 0, 0x16u, 0xCBu, 0xC1u, 0x10u, 0xF7u);
  v56 = CFUUIDGetUUIDBytes(v55);
  if (!v53(v52, *&v56.byte0, *&v56.byte8, Private + 32))
  {
    goto LABEL_78;
  }

  *(Private + 32) = 0;
  v57 = *(Private + 40);
  v58 = *(*v57 + 8);
  v59 = CFUUIDGetConstantUUIDWithBytes(v54, 0xD1u, 0x2Cu, 0x83u, 0x3Fu, 0xB1u, 0x5Bu, 0x11u, 0xDAu, 0x90u, 0x2Du, 0, 0x14u, 0x51u, 0x97u, 0x58u, 0xEFu);
  v60 = CFUUIDGetUUIDBytes(v59);
  if (!v58(v57, *&v60.byte0, *&v60.byte8, Private + 24))
  {
    goto LABEL_78;
  }

  v51 = 0;
  *(Private + 24) = 0;
LABEL_79:
  LODWORD(v65) = -1;
LABEL_80:
  if (*(Private + 32))
  {
    goto LABEL_90;
  }

  if (*(Private + 24))
  {
    v51 = 1;
  }

  if (v51)
  {
LABEL_90:
    if (__IOHIDServiceInit(Private, entryID))
    {
      _IOHIDDebugTrace(8257, 2, Private, entryID, 0, 0);
      goto LABEL_8;
    }
  }

  else
  {
    v62 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *context = 134218752;
      *&context[4] = entryID;
      *&context[12] = 1024;
      *&context[14] = v63;
      *&context[18] = 1024;
      *&context[20] = theScore;
      LOWORD(v73) = 1024;
      *(&v73 + 2) = v65;
      _os_log_error_impl(&dword_197195000, v62, OS_LOG_TYPE_ERROR, "0x%llx _IOHIDServiceCreate failed to load service plugin ret: 0x%x score: %d objcScore: %d", context, 0x1Eu);
    }
  }

LABEL_7:
  CFRelease(Private);
  _IOHIDDebugTrace(8257, 2, entryID, 0, 0, 0);
  Private = 0;
LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
  return Private;
}

__CFArray *_IOHIDServiceCopyFilterDebugInfoForClient(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v18, v19);
  }

  ++**(a1 + 72);
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    Count = CFArrayGetCount(*(a1 + 256));
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v9 = MEMORY[0x1E695E9E8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 256), v8);
        v11 = IOHIDServiceFilterCopyPropertyForClient(ValueAtIndex, @"ServiceFilterDebug", a2);
        if (v11)
        {
          v12 = v11;
          DeepCopy = CFPropertyListCreateDeepCopy(v4, v11, 0);
          CFRelease(v12);
          if (DeepCopy)
          {
            goto LABEL_9;
          }
        }

        v14 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], v9);
        if (v14)
        {
          break;
        }

LABEL_10:
        if (v7 == ++v8)
        {
          goto LABEL_11;
        }
      }

      DeepCopy = v14;
      CFDictionaryAddValue(v14, @"Class", @"Unknown");
LABEL_9:
      CFArrayAppendValue(Mutable, DeepCopy);
      CFRelease(DeepCopy);
      goto LABEL_10;
    }
  }

LABEL_11:
  v15 = *(a1 + 72);
  if (*v15)
  {
    --*v15;
    if (pthread_mutex_unlock((v15 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v18, v19);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t IOHIDServiceCopyMatchingEvent(uint64_t a1, CFDictionaryRef theDict, const void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  if (!theDict || (v6 = *(a1 + 32)) == 0 || !*(*v6 + 88))
  {
LABEL_9:
    v14 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(theDict, @"EventType");
  v8 = Value;
  if (Value)
  {
    v9 = CFGetTypeID(Value);
    if (v9 == CFNumberGetTypeID())
    {
      v10 = CFDictionaryGetValue(theDict, @"MatchingEvent");
      if (v10)
      {
        v11 = v10;
        v12 = CFGetTypeID(v10);
        if (v12 == CFDataGetTypeID())
        {
          CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
          v13 = CFGetAllocator(a3);
          v8 = IOHIDEventCreateWithDataInternal(v13, v11);
          v14 = 1;
          goto LABEL_10;
        }
      }
    }

    goto LABEL_9;
  }

  v14 = 0;
LABEL_10:
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v31, v37);
  }

  ++**(a1 + 72);
  if (v14)
  {
    v15 = (*(**(a1 + 32) + 88))(*(a1 + 32), valuePtr, v8, 0);
LABEL_13:
    v16 = v15;
    goto LABEL_21;
  }

  v17 = *(a1 + 480);
  if (!v17)
  {
    v19 = *(a1 + 360);
    if (!v19 || (v20 = *(v19 + 80)) == 0)
    {
      v16 = 0;
      goto LABEL_21;
    }

    v15 = v20(*(a1 + 344), *(a1 + 352), theDict);
    goto LABEL_13;
  }

  v18 = [v17 *(a1 + 512)];
  v16 = v18;
  if (v18)
  {
    CFRetain(v18);
  }

LABEL_21:
  v21 = *(a1 + 72);
  if (*v21)
  {
    --*v21;
    if (pthread_mutex_unlock((v21 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v31, v37);
    }
  }

  if (v16)
  {
    v33[3] = v16;
    if (!IOHIDEventGetSenderID(v16))
    {
      v22 = *(a1 + 48);
      *&v37[0] = 0;
      if (v22)
      {
        CFNumberGetValue(v22, kCFNumberSInt64Type, v37);
        v23 = *&v37[0];
      }

      else
      {
        v23 = 0;
      }

      IOHIDEventSetSenderID(v16, v23);
    }

    if (pthread_mutex_lock((*(a1 + 72) + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v31, v37);
    }

    ++**(a1 + 72);
    v24 = *(a1 + 248);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v29[2] = __IOHIDServiceCopyMatchingEvent_block_invoke;
    v29[3] = &unk_1E74A8998;
    v30 = v14;
    v29[4] = &v32;
    v29[5] = v16;
    v29[6] = a3;
    v29[7] = theDict;
    _IOHIDCFArrayApplyBlock(v24, v29);
    v25 = *(a1 + 72);
    if (*v25)
    {
      --*v25;
      if (pthread_mutex_unlock((v25 + 8)))
      {
        __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v31, v37);
      }
    }

    if (!v33[3])
    {
      CFRelease(v16);
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v26 = v33[3];
  _Block_object_dispose(&v32, 8);
  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t __IOHIDServiceCopyMatchingEvent_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (*(a1 + 64) == 1)
  {
    v5 = *(a1 + 48);
    result = IOHIDServiceFilterFilterCopyEvent(a2, v4);
  }

  else
  {
    result = IOHIDServiceFilterFilterCopyMatchingEvent(a2, v4, *(a1 + 56), *(a1 + 48));
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IOHIDServiceSetOutputEvent(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((a1[9] + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v16, v17);
  }

  ++*a1[9];
  v4 = a1[32];
  v19.length = CFArrayGetCount(v4);
  v19.location = 0;
  CFArrayApplyFunction(v4, v19, __FilterFunctionSetOutputEvent, a2);
  v5 = a1[4];
  if (v5)
  {
    v6 = *(*v5 + 96);
    if (v6)
    {
      v7 = v6();
LABEL_11:
      v10 = v7;
      goto LABEL_12;
    }
  }

  v8 = a1[45];
  if (v8)
  {
    v9 = *(v8 + 72);
    if (v9)
    {
      v7 = v9(a1[43], a1[44], a2);
      goto LABEL_11;
    }
  }

  v10 = 3758097095;
  v11 = a1[60];
  if (v11)
  {
    v12 = a1[72];
    if (v12)
    {
      v7 = [v11 v12];
      goto LABEL_11;
    }
  }

LABEL_12:
  v13 = a1[9];
  if (*v13)
  {
    --*v13;
    if (pthread_mutex_unlock((v13 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v16, v17);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t IOHIDServiceSetElementValue(uint64_t a1, int a2, unsigned __int8 a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = 3758097095;
  v9 = mach_absolute_time();
  if (a2 == 8)
  {
    if (pthread_mutex_lock((*(a1 + 72) + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v23, buf);
    }

    ++**(a1 + 72);
    v10 = 1 << (a3 - 1);
    if (a4)
    {
      v11 = *(a1 + 152) | v10;
    }

    else
    {
      v11 = *(a1 + 152) & ~v10;
    }

    *(a1 + 152) = v11;
    v12 = CFGetAllocator(a1);
    v13 = mach_absolute_time();
    LEDEvent = IOHIDEventCreateLEDEvent(v12, v13, *(a1 + 152), a3, a4);
    v15 = *(a1 + 72);
    if (*v15)
    {
      --*v15;
      if (pthread_mutex_unlock((v15 + 8)))
      {
        __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v23, buf);
      }
    }

    if (LEDEvent)
    {
      v8 = IOHIDServiceSetOutputEvent(a1, LEDEvent);
      CFRelease(LEDEvent);
    }
  }

  v16 = mach_absolute_time();
  v17 = _IOHIDGetTimestampDelta(v16, v9, 1u);
  if (v17 > *(a1 + 392))
  {
    v18 = v17;
    *(a1 + 392) = v17;
    if (v17 >= 0x2FAF081)
    {
      v19 = _IOHIDLogCategory(6u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = *(a1 + 400);
        *buf = 134218240;
        v25 = v20;
        v26 = 2048;
        v27 = v18;
        _os_log_impl(&dword_197195000, v19, OS_LOG_TYPE_INFO, "0x%llx: IOHIDServiceSetElementValue time:%lluns", buf, 0x16u);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v8;
}

void __IOHIDServiceCreateRemovalNotification_block_invoke(uint64_t a1)
{
  __IOHIDServiceNotificationSetApplier(*(a1 + 32), *(a1 + 40));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void *IOHIDServiceCreatePropertyChangedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 224))
  {
    v9 = 0;
  }

  else
  {
    if (pthread_mutex_lock((*(a1 + 72) + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v13, v14);
    }

    ++**(a1 + 72);
    v8 = CFGetAllocator(a1);
    v9 = IOHIDNotificationCreate(v8, __IOHIDServiceNotificationRelease, a1, 0, a2, a3, a4);
    if (v9)
    {
      CFSetAddValue(*(a1 + 112), v9);
    }

    v10 = *(a1 + 72);
    if (*v10)
    {
      --*v10;
      if (pthread_mutex_unlock((v10 + 8)))
      {
        __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v13, v14);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

void __IOHIDServiceCompleteEventsInProgressApplier(const __CFNumber *a1, const void *a2)
{
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
  v4 = valuePtr;
  v3 = HIDWORD(valuePtr);
  v5 = CFGetAllocator(a2);
  v6 = mach_absolute_time();
  KeyboardEvent = IOHIDEventCreateKeyboardEvent(v5, v6, v3, v4, 0);
  if (KeyboardEvent)
  {
    v10 = KeyboardEvent;
    __IOHIDServiceEventCallback(a2, v8, v9, KeyboardEvent);
    CFRelease(v10);
  }
}

void __IOHIDServiceHandleCancelTimerTimeout(uint64_t a1)
{
  v2 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __IOHIDServiceHandleCancelTimerTimeout_cold_1();
  }

  if (*(a1 + 440) == 1)
  {
    v3 = CFCopyDescription(*(a1 + 480));
    v4 = _IOHIDLogCategory(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      if (!v3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    __IOHIDServiceHandleCancelTimerTimeout_cold_2(a1);
    if (v3)
    {
LABEL_6:
      CFRelease(v3);
    }
  }

LABEL_7:
  if (*(a1 + 444))
  {
    v5 = *(a1 + 256);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ____IOHIDServiceHandleCancelTimerTimeout_block_invoke;
    v6[3] = &__block_descriptor_tmp_89;
    v6[4] = a1;
    _IOHIDCFArrayApplyBlock(v5, v6);
  }
}

void IOHIDServiceRegister(uint64_t a1)
{
  EventSystem = IOHIDSessionGetEventSystem(*(a1 + 8));
  v3 = CFGetAllocator(EventSystem);
  Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (EventSystem)
  {
    v6 = Mutable == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    CFDictionaryAddValue(Mutable, *(a1 + 48), a1);
    if (*(a1 + 304))
    {
      IOHIDServiceRegister_cold_1((a1 + 48));
    }

    else
    {
      *(a1 + 304) = 1;
      IOHIDEventSystemRematchServices(EventSystem, v5);
    }

    goto LABEL_10;
  }

  if (Mutable)
  {
LABEL_10:
    CFRelease(v5);
  }
}

CFMutableArrayRef _IOHIDServiceCopyEventLog(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1[51])
  {
    v2 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v2, 50, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      if (pthread_mutex_lock((a1[9] + 8)))
      {
        __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v9, v10);
      }

      ++*a1[9];
      v4 = a1[51];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = ___IOHIDServiceCopyEventLog_block_invoke;
      v8[3] = &__block_descriptor_tmp_165;
      v8[4] = a1;
      _IOHIDSimpleQueueApplyBlock(v4, v8, Mutable);
      v5 = a1[9];
      if (*v5)
      {
        --*v5;
        if (pthread_mutex_unlock((v5 + 8)))
        {
          __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v9, v10);
        }
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFMutableDictionaryRef _IOHIDServiceCopyConnectionIntervals(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    if (pthread_mutex_lock((*(a1 + 72) + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v6, v7);
    }

    ++**(a1 + 72);
    CFDictionaryApplyFunction(*(a1 + 240), __CopyConnectionCache, Mutable);
    v3 = *(a1 + 72);
    if (*v3)
    {
      --*v3;
      if (pthread_mutex_unlock((v3 + 8)))
      {
        __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v6, v7);
      }
    }

    if (!CFDictionaryGetCount(Mutable))
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void _IOHIDServiceSetMiscDebugDebugInfo(uint64_t a1, void *a2, uint64_t a3)
{
  _IOHIDDictionaryAddSInt64(a2, @"MaxPropertyGetTime", *(a1 + 376));
  _IOHIDDictionaryAddSInt64(a2, @"MaxPropertyGetTime", *(a1 + 384));
  _IOHIDDictionaryAddSInt32(a2, @"propertyCacheHit", *(a1 + 320));
  _IOHIDDictionaryAddSInt32(a2, @"propertyCacheMiss", *(a1 + 324));
  _IOHIDDictionaryAddSInt32(a2, @"elementSetTime", *(a1 + 392));
  v6 = _IOHIDServiceCopyProperyFromPlugin(a1, @"ServicePluginDebug", a3);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(a2, @"ServicePluginDebug", v6);
    CFRelease(v7);
  }

  v8 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v10 = Mutable;
    v11 = _IOHIDServiceCopyConnections(a1, 0);
    if (v11)
    {
      v12 = v11;
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 0x40000000;
      context[2] = ___IOHIDServiceSetMiscDebugDebugInfo_block_invoke;
      context[3] = &__block_descriptor_tmp_185;
      context[4] = v10;
      _IOHIDCFSetApplyBlock(v11, context);
      CFRelease(v12);
    }

    v13 = _IOHIDServiceCopyConnections(a1, 2);
    if (v13)
    {
      v14 = v13;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v24[2] = ___IOHIDServiceSetMiscDebugDebugInfo_block_invoke_2;
      v24[3] = &__block_descriptor_tmp_186_0;
      v24[4] = v10;
      _IOHIDCFSetApplyBlock(v13, v24);
      CFRelease(v14);
    }

    CFDictionarySetValue(a2, @"Connections", v10);
    CFRelease(v10);
  }

  v15 = CFGetAllocator(a1);
  v16 = CFArrayCreateMutable(v15, 0, MEMORY[0x1E695E9C0]);
  if (v16)
  {
    v17 = v16;
    v18 = _IOHIDServiceCopyConnections(a1, 1);
    if (v18)
    {
      v19 = v18;
      if (CFArrayGetCount(v18) >= 1)
      {
        v20 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v19, v20);
          UUID = IOHIDEventSystemConnectionGetUUID(ValueAtIndex);
          if (UUID)
          {
            v23 = UUID;
          }

          else
          {
            v23 = @"unknown";
          }

          CFArrayAppendValue(v17, v23);
          ++v20;
        }

        while (v20 < CFArrayGetCount(v19));
      }

      CFRelease(v19);
    }

    CFDictionarySetValue(a2, @"Filters", v17);
    CFRelease(v17);
  }
}

void __CopyConnectionCache(__CFString *cf, uint64_t a2, __CFDictionary *a3)
{
  UUID = cf;
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == IOHIDEventSystemConnectionGetTypeID())
    {
      UUID = IOHIDEventSystemConnectionGetUUID(UUID);
    }

    else
    {
      UUID = 0;
    }
  }

  v7 = IOHIDServiceConnectionCacheCopyDebugInfo(a2);
  if (v7)
  {
    v8 = v7;
    if (UUID)
    {
      v9 = UUID;
    }

    else
    {
      v9 = @"0";
    }

    CFDictionarySetValue(a3, v9, v7);

    CFRelease(v8);
  }
}

const void *_IOHIDServiceCopyProperyFromPlugin(uint64_t a1, const void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v20, v21);
  }

  ++**(a1 + 72);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(*v6 + 48);
    if (v7)
    {
      v8 = v7();
LABEL_11:
      v14 = v8;
      goto LABEL_17;
    }
  }

  v9 = *(a1 + 24);
  if (v9 && (v10 = *(*v9 + 48)) != 0)
  {
    v11 = v10();
  }

  else
  {
    v12 = *(a1 + 360);
    if (v12)
    {
      v13 = *(v12 + 24);
      if (v13)
      {
        v8 = v13(*(a1 + 344), *(a1 + 352), a2);
        goto LABEL_11;
      }
    }

    v15 = *(a1 + 480);
    if (!v15)
    {
      v14 = 0;
      goto LABEL_17;
    }

    v11 = [v15 *(a1 + 496)];
  }

  v14 = v11;
  if (v11)
  {
    CFRetain(v11);
  }

LABEL_17:
  if (CFEqual(@"ServicePluginDebug", a2) && v14)
  {
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v14, 0);
    CFRelease(v14);
    v14 = DeepCopy;
  }

  v17 = *(a1 + 72);
  if (*v17)
  {
    --*v17;
    if (pthread_mutex_unlock((v17 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v20, v21);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

void IOHIDServiceRequestTerminate(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _IOHIDLogCategory(6u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 400);
    *buf = 134217984;
    v10 = v3;
    _os_log_impl(&dword_197195000, v2, OS_LOG_TYPE_DEFAULT, "0x%llx: IOHIDServiceRequestTerminate", buf, 0xCu);
  }

  *(a1 + 224) |= 1u;
  os_unfair_lock_lock((a1 + 456));
  v4 = CFGetAllocator(*(a1 + 120));
  Copy = CFSetCreateCopy(v4, *(a1 + 120));
  os_unfair_lock_unlock((a1 + 456));
  if (Copy)
  {
    CFSetApplyFunction(Copy, __IOHIDServiceNotificationSetApplier, a1);
    CFRelease(Copy);
  }

  CFRetain(a1);
  v6 = *(a1 + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IOHIDServiceRequestTerminate_block_invoke;
  block[3] = &__block_descriptor_tmp_193;
  block[4] = a1;
  dispatch_async(v6, block);
  _IOHIDServiceTerminate(a1);
  v7 = *MEMORY[0x1E69E9840];
}

void __IOHIDServiceRequestTerminate_block_invoke(uint64_t a1)
{
  _IOHIDServiceSetPropertyForClient(*(a1 + 32), @"RequestTerminate", *MEMORY[0x1E695E4D0], *MEMORY[0x1E695E738]);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t OUTLINED_FUNCTION_10_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(result + 32) + 400);
  return result;
}

uint64_t IOHIDSessionCreate(const __CFAllocator *a1)
{
  v74 = *MEMORY[0x1E69E9840];
  v73.__sig = 0;
  *v73.__opaque = 0;
  Private = _IOHIDSessionCreatePrivate(a1);
  v3 = _IOHIDLog();
  v4 = os_signpost_id_make_with_pointer(v3, Private);
  v5 = _IOHIDLog();
  v6 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v5;
    if (os_signpost_enabled(v5))
    {
      LOWORD(buf.version) = 0;
      _os_signpost_emit_with_name_impl(&dword_197195000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "IOHIDSessionCreate", &unk_19724ED59, &buf, 2u);
    }
  }

  if (!Private)
  {
    goto LABEL_68;
  }

  v8 = malloc_type_calloc(1uLL, 0x48uLL, 0x10000400131AABDuLL);
  *(Private + 32) = v8;
  if (!v8)
  {
    goto LABEL_68;
  }

  if (pthread_mutexattr_init(&v73))
  {
    __IOHIDServiceInit_cold_1(v68, &buf);
  }

  pthread_mutexattr_settype(&v73, 2);
  if (pthread_mutex_init((*(Private + 32) + 8), &v73))
  {
    IOHIDSessionCreate_cold_2(v68, &buf);
  }

  if (pthread_cond_init((Private + 40), 0))
  {
    IOHIDSessionCreate_cold_3(v68, &buf);
  }

  if (pthread_mutexattr_destroy(&v73))
  {
    IOHIDSessionCreate_cold_4(v68, &buf);
  }

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = hid_dispatch_queue_create_with_context_destructor("IOHIDSession - SessionEventDispatch", v9, kIOHIDServiceInterruptWorkloop, __IOHIDSessionQueueWillExecute, __IOHIDSessionQueueDidExecute, *(Private + 32), __IOHIDSessionQueueContextDestructor);
  *(Private + 96) = v10;
  if (!v10)
  {
    goto LABEL_68;
  }

  v11 = dispatch_source_create(MEMORY[0x1E69E96B0], 0, 0, v10);
  *(Private + 104) = v11;
  if (!v11)
  {
    goto LABEL_68;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __IOHIDSessionCreate_block_invoke;
  handler[3] = &__block_descriptor_tmp_17;
  handler[4] = Private;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_resume(*(Private + 104));
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(Private + 112) = Mutable;
  if (!Mutable)
  {
    goto LABEL_68;
  }

  v13 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(Private + 144) = v13;
  if (!v13)
  {
    goto LABEL_68;
  }

  v14 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(Private + 152) = v14;
  if (!v14)
  {
    goto LABEL_68;
  }

  v15 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(Private + 160) = v15;
  if (!v15)
  {
    goto LABEL_68;
  }

  v16 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(Private + 120) = v16;
  if (!v16)
  {
    goto LABEL_68;
  }

  v17 = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
  *(Private + 136) = v17;
  if (!v17)
  {
    goto LABEL_68;
  }

  *(Private + 128) = 6;
  v18 = CFNumberCreate(a1, kCFNumberIntType, (Private + 128));
  if (v18)
  {
    v19 = v18;
    CFDictionarySetValue(*(Private + 120), @"LogLevel", v18);
    CFRelease(v19);
  }

  buf = *byte_1F0B912C8;
  v20 = CFSetCreateMutable(a1, 2, &buf);
  *(Private + 192) = v20;
  if (v20)
  {
    spid = v4;
    v21 = _IOHIDLog();
    if (os_signpost_enabled(v21))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_197195000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionCreate - Load bundles", &unk_19724ED59, v68, 2u);
    }

    v22 = _IOHIDLoadBundles();
    if (v22)
    {
      v23 = v22;
      if (CFArrayGetCount(v22) >= 1)
      {
        v24 = 0;
        alloc = *MEMORY[0x1E695E4A8];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v23, v24);
          PlugIn = CFBundleGetPlugIn(ValueAtIndex);
          if (PlugIn)
          {
            v27 = PlugIn;
            v28 = CFUUIDGetConstantUUIDWithBytes(alloc, 0x7Fu, 0x1Au, 0x3Au, 0xE6u, 0x3Eu, 0x3Du, 0x47u, 0xAu, 0xBDu, 0x15u, 0xA2u, 0xDDu, 0x7Eu, 0x1Bu, 0xB7u, 0x19u);
            FactoriesForPlugInTypeInPlugIn = CFPlugInFindFactoriesForPlugInTypeInPlugIn(v28, v27);
            if (FactoriesForPlugInTypeInPlugIn)
            {
              v30 = FactoriesForPlugInTypeInPlugIn;
              if (CFArrayGetCount(FactoriesForPlugInTypeInPlugIn) >= 1)
              {
                v31 = 0;
                do
                {
                  v32 = CFArrayGetValueAtIndex(v30, v31);
                  v33 = IOHIDSessionFilterCreate(a1, ValueAtIndex, v32);
                  if (v33)
                  {
                    v34 = v33;
                    v35 = _IOHIDLogCategory(0);
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                    {
                      *v68 = 138412290;
                      v69 = v34;
                      _os_log_impl(&dword_197195000, v35, OS_LOG_TYPE_DEFAULT, "Add session filter:%@", v68, 0xCu);
                    }

                    CFArrayAppendValue(*(Private + 144), v34);
                    if (!IOHIDSessionFilterGetType(v34))
                    {
                      CFArrayAppendValue(*(Private + 160), v34);
                    }

                    CFRelease(v34);
                  }

                  ++v31;
                }

                while (v31 < CFArrayGetCount(v30));
              }

              CFRelease(v30);
            }
          }

          ++v24;
        }

        while (v24 < CFArrayGetCount(v23));
      }
    }

    v36 = _IOHIDLoadSessionFilterBundles();
    if (v36)
    {
      v37 = v36;
      if (CFArrayGetCount(v36) >= 1)
      {
        v38 = 0;
        v66 = *MEMORY[0x1E695E4D0];
        do
        {
          v39 = CFArrayGetValueAtIndex(v37, v38);
          InfoDictionary = CFBundleGetInfoDictionary(v39);
          if (InfoDictionary)
          {
            v41 = InfoDictionary;
            Value = CFDictionaryGetValue(InfoDictionary, @"NSPrincipalClass");
            if (Value)
            {
              v43 = Value;
              v44 = CFGetTypeID(Value);
              if (v44 == CFStringGetTypeID())
              {
                v45 = CFStringCreateWithFormat(a1, 0, @"OBJC_CLASS_$_%@", v43);
                if (v45)
                {
                  v46 = v45;
                  DataPointerForName = CFBundleGetDataPointerForName(v39, v45);
                  if (DataPointerForName)
                  {
                    v48 = DataPointerForName;
                    CFRelease(v46);
                    v49 = CFBundleCopyExecutableURL(v39);
                    v50 = _IOHIDLogCategory(0);
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                    {
                      *v68 = 138412290;
                      v69 = v49;
                      _os_log_impl(&dword_197195000, v50, OS_LOG_TYPE_DEFAULT, "Loading session filter:%@", v68, 0xCu);
                    }

                    if (v49)
                    {
                      CFRelease(v49);
                    }

                    v51 = CFDictionaryGetValue(v41, @"LogIOHIDFilteredEvents");
                    if (v51)
                    {
                      v52 = v51 == v66;
                    }

                    else
                    {
                      v52 = 1;
                    }

                    v53 = v52;
                    v46 = IOHIDSessionFilterCreateWithClass(a1, v48, Private, v53);
                    v54 = _IOHIDLogCategory(0);
                    v55 = v54;
                    if (!v46)
                    {
                      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                      {
                        *v68 = 138412290;
                        v69 = v41;
                        _os_log_error_impl(&dword_197195000, v55, OS_LOG_TYPE_ERROR, "IOHIDSessionFilterCreateWithClass failed for bundle %@", v68, 0xCu);
                      }

                      goto LABEL_66;
                    }

                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      *v68 = 138412290;
                      v69 = v46;
                      _os_log_impl(&dword_197195000, v55, OS_LOG_TYPE_DEFAULT, "Add session filter:%@", v68, 0xCu);
                    }

                    CFArrayAppendValue(*(Private + 144), v46);
                    CFArrayAppendValue(*(Private + 152), v46);
                  }

                  else
                  {
                    v56 = _IOHIDLogCategory(0);
                    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                    {
                      *v68 = 138412546;
                      v69 = v46;
                      v70 = 2112;
                      v71 = v41;
                      _os_log_error_impl(&dword_197195000, v56, OS_LOG_TYPE_ERROR, "IOHIDSessionCreate failed to find symbol %@ for bundle %@", v68, 0x16u);
                    }
                  }

                  CFRelease(v46);
                }
              }
            }
          }

LABEL_66:
          ++v38;
        }

        while (v38 < CFArrayGetCount(v37));
      }

      v61 = _IOHIDLog();
      if (os_signpost_enabled(v61))
      {
        *v68 = 0;
        _os_signpost_emit_with_name_impl(&dword_197195000, v61, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionCreate - Load bundles", &unk_19724ED59, v68, 2u);
      }

      v62 = _IOHIDLog();
      if (v6 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v63 = v62;
        if (os_signpost_enabled(v62))
        {
          *v68 = 0;
          _os_signpost_emit_with_name_impl(&dword_197195000, v63, OS_SIGNPOST_INTERVAL_END, spid, "IOHIDSessionCreate", &unk_19724ED59, v68, 2u);
        }
      }
    }
  }

  else
  {
LABEL_68:
    v57 = _IOHIDLog();
    if (v6 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v58 = v57;
      if (os_signpost_enabled(v57))
      {
        LOWORD(buf.version) = 0;
        _os_signpost_emit_with_name_impl(&dword_197195000, v58, OS_SIGNPOST_INTERVAL_END, v4, "IOHIDSessionCreate", &unk_19724ED59, &buf, 2u);
      }
    }

    if (Private)
    {
      CFRelease(Private);
      Private = 0;
    }
  }

  v59 = *MEMORY[0x1E69E9840];
  return Private;
}

uint64_t __IOHIDSessionQueueWillExecute(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  result = pthread_mutex_lock((a1 + 8));
  if (result)
  {
    __IOHIDServiceQueueWillExecute_cold_1(&v4, v5);
  }

  ++*a1;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IOHIDSessionQueueDidExecute(uint64_t result)
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

void __IOHIDSessionQueueContextDestructor(uint64_t a1)
{
  if (a1)
  {
    pthread_mutex_destroy((a1 + 8));

    free(a1);
  }
}

void __IOHIDSessionCreate_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    if (pthread_mutex_lock((*(v1 + 32) + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_1(&v8, v9);
    }

    ++**(v1 + 32);
    Count = CFArrayGetCount(*(v1 + 112));
    if (Count && (v3 = Count, (Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(v1 + 112))) != 0))
    {
      v5 = Copy;
      CFArrayRemoveAllValues(*(v1 + 112));
      v6 = *(v1 + 32);
      if (*v6)
      {
        --*v6;
        if (pthread_mutex_unlock((v6 + 8)))
        {
          __IOHIDSessionCreate_block_invoke_cold_2(&v8, v9);
        }
      }

      __IOHIDSessionCreate_block_invoke_cold_5(v3, v5, v1);
    }

    else
    {
      __IOHIDSessionCreate_block_invoke_cold_3((v1 + 32));
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t _IOHIDSessionReleasePrivate(uint64_t a1)
{
  v2 = _IOHIDLog();
  if (os_signpost_enabled(v2))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionRelease", &unk_19724ED59, v15, 2u);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    IOHIDSessionClose(a1, v3);
    v4 = *(a1 + 8);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 160);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 152);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 144);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 112);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 104);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(a1 + 192);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 96);
  if (v13)
  {
    hid_dispatch_queue_release(v13);
    *(a1 + 96) = 0;
  }

  return pthread_cond_destroy((a1 + 40));
}

void IOHIDSessionClose(uint64_t a1, const void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _IOHIDLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionClose", &unk_19724ED59, buf, 2u);
  }

  if (pthread_mutex_lock((*(a1 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(&v19, buf);
  }

  ++**(a1 + 32);
  __IOHIDSessionSetStateBusy(a1, 1);
  if (*(a1 + 8) == a2)
  {
    v5 = _IOHIDLog();
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_197195000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionFiltersClose", &unk_19724ED59, buf, 2u);
    }

    v6 = *(a1 + 152);
    v22.length = CFArrayGetCount(v6);
    v22.location = 0;
    CFArrayApplyFunction(v6, v22, __FilterFunctionClose_0, a1);
    v7 = _IOHIDLog();
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_197195000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionFiltersClose", &unk_19724ED59, buf, 2u);
    }

    v8 = _IOHIDLog();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_197195000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionUnregisterServices", &unk_19724ED59, buf, 2u);
    }

    CFSetApplyFunction(*(a1 + 136), __UnregisterServiceFunction, a1);
    v9 = _IOHIDLog();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_197195000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionUnregisterServices", &unk_19724ED59, buf, 2u);
    }

    CFArrayRemoveAllValues(*(a1 + 152));
    v10 = _IOHIDLog();
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_197195000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionUnschedule", &unk_19724ED59, buf, 2u);
    }

    if (pthread_mutex_lock((*(a1 + 32) + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_1(&v19, buf);
    }

    ++**(a1 + 32);
    dispatch_source_cancel(*(a1 + 104));
    v11 = *(a1 + 152);
    v23.length = CFArrayGetCount(v11);
    v23.location = 0;
    CFArrayApplyFunction(v11, v23, __FilterFunctionUnscheduleAsync_0, a1);
    v12 = *(a1 + 32);
    if (*v12)
    {
      --*v12;
      if (pthread_mutex_unlock((v12 + 8)))
      {
        __IOHIDSessionCreate_block_invoke_cold_2(&v19, buf);
      }
    }

    v13 = _IOHIDLog();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_197195000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionUnschedule", &unk_19724ED59, buf, 2u);
    }

    *(a1 + 88) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    CFRelease(a2);
  }

  pthread_cond_signal((a1 + 40));
  *(a1 + 92) = 0;
  v14 = *(a1 + 32);
  if (*v14)
  {
    --*v14;
    if (pthread_mutex_unlock((v14 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v19, buf);
    }
  }

  CFRetain(a1);
  v15 = *(a1 + 96);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = __IOHIDSessionClose_block_invoke;
  v18[3] = &__block_descriptor_tmp_12;
  v18[4] = a1;
  dispatch_async(v15, v18);
  v16 = _IOHIDLog();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionClose", &unk_19724ED59, buf, 2u);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __RegisterServiceWithSessionFunction(void *a1, uint64_t a2)
{
  __RegisterServiceFunction(a1, a2);
  if (_IOHIDServiceGetOwner(a1) != a2)
  {
    v4 = CFGetAllocator(*(a2 + 136));
    MutableCopy = CFSetCreateMutableCopy(v4, 0, *(a2 + 136));
    CFRelease(*(a2 + 136));
    *(a2 + 136) = MutableCopy;

    CFSetRemoveValue(MutableCopy, a1);
  }
}

uint64_t IOHIDSessionOpen(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = _IOHIDLog();
  if (os_signpost_enabled(v8))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionOpen", &unk_19724ED59, &buf, 2u);
  }

  if (pthread_mutex_lock((*(a1 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(&v19, &buf);
  }

  ++**(a1 + 32);
  __IOHIDSessionSetStateBusy(a1, 1);
  if (*(a1 + 88))
  {
    v9 = 0;
  }

  else
  {
    *(a1 + 8) = CFRetain(a2);
    *(a1 + 16) = a3;
    *(a1 + 24) = a4;
    v10 = *(a1 + 32);
    if (*v10)
    {
      --*v10;
      if (pthread_mutex_unlock((v10 + 8)))
      {
        __IOHIDSessionCreate_block_invoke_cold_2(&v19, &buf);
      }
    }

    v11 = dispatch_semaphore_create(0);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 96);
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 0x40000000;
      v21 = ____IOHIDSessionScheduleAsync_block_invoke;
      v22 = &__block_descriptor_tmp_40_0;
      v23 = a1;
      v24 = v12;
      dispatch_async(v13, &buf);
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v12);
    }

    if (pthread_mutex_lock((*(a1 + 32) + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_1(&v19, &buf);
    }

    ++**(a1 + 32);
    v9 = 1;
    *(a1 + 88) = 1;
    v14 = _IOHIDLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_197195000, v14, OS_LOG_TYPE_INFO, "Successfully opened the IOHIDSession", &buf, 2u);
    }
  }

  pthread_cond_signal((a1 + 40));
  *(a1 + 92) = 0;
  v15 = *(a1 + 32);
  if (*v15)
  {
    --*v15;
    if (pthread_mutex_unlock((v15 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v19, &buf);
    }
  }

  v16 = _IOHIDLog();
  if (os_signpost_enabled(v16))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionOpen", &unk_19724ED59, &buf, 2u);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

void __IOHIDSessionClose_block_invoke(uint64_t a1)
{
  v2 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __IOHIDSessionClose_block_invoke_cold_1(v2);
  }

  CFRelease(*(a1 + 32));
}

__CFArray *IOHIDSessionGetProperty(uint64_t a1, const void *a2)
{
  v2 = _IOHIDSessionCopyPropertyForClient(a1, a2, *MEMORY[0x1E695E738]);

  return v2;
}

uint64_t IOHIDSessionCopyEvent(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(context, v18);
  }

  ++**(a1 + 32);
  context[0] = a1;
  context[1] = a3;
  v14 = 0;
  v15 = a2;
  v16 = a4;
  v17 = *(a1 + 152);
  v20.length = CFArrayGetCount(v17);
  v20.location = 0;
  CFArrayApplyFunction(v17, v20, __FilterFunctionCopyEvent, context);
  v8 = 0;
  if (!v14)
  {
    v8 = CFRetain(*(a1 + 136));
  }

  v9 = *(a1 + 32);
  if (*v9)
  {
    --*v9;
    if (pthread_mutex_unlock((v9 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v12, v18);
    }
  }

  if (v8)
  {
    CFSetApplyFunction(v8, __CopyEventForObjectFunction, context);
    CFRelease(v8);
  }

  result = v14;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __FilterFunctionCopyEvent(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    result = IOHIDSessionFilterCopyEvent(result);
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t __CopyEventForObjectFunction(uint64_t result, uint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a2[2])
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    result = IOHIDServiceGetTypeID();
    if (v4 == result)
    {
      result = IOHIDServiceCopyEvent(v3, *(a2 + 6), a2[1], *(a2 + 7));
      a2[2] = result;
      if (result)
      {
        v5 = *a2;
        context[0] = v5;
        context[1] = v3;
        context[2] = result;
        if (pthread_mutex_lock((*(v5 + 32) + 8)))
        {
          __IOHIDSessionCreate_block_invoke_cold_1(&v8, v10);
        }

        ++**(v5 + 32);
        v6 = a2[4];
        v12.length = CFArrayGetCount(v6);
        v12.location = 0;
        CFArrayApplyFunction(v6, v12, __FilterFunctionFilterCopyEvent, context);
        result = *(v5 + 32);
        if (*result)
        {
          --*result;
          result = pthread_mutex_unlock((result + 8));
          if (result)
          {
            __IOHIDSessionCreate_block_invoke_cold_2(&v8, v10);
          }
        }
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void _IOHIDSessionDispatchEvent(uint64_t a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  TimeStampOfType = IOHIDEventGetTimeStampOfType(a2, 2);
  TimeStampType = IOHIDEventGetTimeStampType(a2);
  _IOHIDDebugTrace(8272, 0, TimeStampOfType, TimeStampType, 0, 0);
  if (a2)
  {
    if (pthread_mutex_lock((*(a1 + 32) + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_1(&v9, v10);
    }

    ++**(a1 + 32);
    Count = CFArrayGetCount(*(a1 + 112));
    CFArrayAppendValue(*(a1 + 112), a2);
    if (!Count)
    {
      dispatch_source_merge_data(*(a1 + 104), 1uLL);
    }

    v7 = *(a1 + 32);
    if (*v7)
    {
      --*v7;
      if (pthread_mutex_unlock((v7 + 8)))
      {
        __IOHIDSessionCreate_block_invoke_cold_2(&v9, v10);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __IOHIDSessionActivityNotificationRelease(uint64_t a1, uint64_t a2, const void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(&v7, v8);
  }

  ++**(a1 + 32);
  CFSetRemoveValue(*(a1 + 192), a3);
  result = *(a1 + 32);
  if (*result)
  {
    --*result;
    result = pthread_mutex_unlock((result + 8));
    if (result)
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v7, v8);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *_IOHIDSessionCreateActivityNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = CFGetAllocator(a1);
  v9 = IOHIDNotificationCreate(v8, __IOHIDSessionActivityNotificationRelease, a1, 0, a2, a3, a4);
  if (v9)
  {
    if (pthread_mutex_lock((*(a1 + 32) + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_1(&v13, v14);
    }

    ++**(a1 + 32);
    CFSetAddValue(*(a1 + 192), v9);
    v10 = *(a1 + 32);
    if (*v10)
    {
      --*v10;
      if (pthread_mutex_unlock((v10 + 8)))
      {
        __IOHIDSessionCreate_block_invoke_cold_2(&v13, v14);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t IOHIDEventQueueSuspend(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 152) = 1;
  while (!_IODataQueueDequeue(*(a1 + 16), *(a1 + 56), 0))
  {
    ++*(a1 + 168);
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventQueueResume(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 152) = 0;

  return os_unfair_recursive_lock_unlock();
}

void IOHIDEventQueueNotify(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  if (*(a1 + 148) && !*(a1 + 152))
  {
    v2 = _IODataQueueSendDataAvailableNotification(*(a1 + 16), (a1 + 60));
    os_unfair_recursive_lock_unlock();
    if (v2)
    {
      v3 = _IOHIDLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        IOHIDEventQueueNotify_cold_1(v2, v3, v4);
      }
    }
  }

  else
  {

    os_unfair_recursive_lock_unlock();
  }
}

IOReturn IOPMCopyCPUPowerStatus(CFDictionaryRef *cpuPowerStatus)
{
  v1 = -536870160;
  if (!cpuPowerStatus)
  {
    return -536870206;
  }

  v3 = _io_SCDynamicStoreCreate(*MEMORY[0x1E695E480], @"IOKit Power", 0, 0);
  if (!v3)
  {
    return -536870212;
  }

  v4 = v3;
  SCKeyForIOKitString = createSCKeyForIOKitString(@"CPU_Power_Limits");
  if (SCKeyForIOKitString)
  {
    v6 = SCKeyForIOKitString;
    v7 = _io_SCDynamicStoreCopyValue(v4, SCKeyForIOKitString);
    *cpuPowerStatus = v7;
    TypeID = CFDictionaryGetTypeID();
    if (v7 && CFGetTypeID(v7) == TypeID)
    {
      v1 = 0;
    }

    else if (*cpuPowerStatus)
    {
      CFRelease(*cpuPowerStatus);
      *cpuPowerStatus = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v1 = -536870199;
  }

  CFRelease(v4);
  return v1;
}

CFStringRef createSCKeyForIOKitString(const void *a1)
{
  if (CFEqual(a1, @"Thermal_Level_Warning"))
  {
    v2 = @"ThermalWarning";
    return _io_SCDynamicStoreKeyCreate(*MEMORY[0x1E695E480], @"%@%@/%@", @"State:", @"/IOKit/Power", v2);
  }

  if (CFEqual(a1, @"CPU_Power_Limits"))
  {
    v2 = @"CPUPower";
    return _io_SCDynamicStoreKeyCreate(*MEMORY[0x1E695E480], @"%@%@/%@", @"State:", @"/IOKit/Power", v2);
  }

  if (CFEqual(a1, @"Performance_Warning"))
  {
    v2 = @"PerformanceWarning";
    return _io_SCDynamicStoreKeyCreate(*MEMORY[0x1E695E480], @"%@%@/%@", @"State:", @"/IOKit/Power", v2);
  }

  return 0;
}

IOReturn IOPMGetThermalWarningLevel(uint32_t *thermalLevel)
{
  v1 = -536870160;
  if (!thermalLevel)
  {
    return -536870206;
  }

  v3 = _io_SCDynamicStoreCreate(*MEMORY[0x1E695E480], @"IOKit Power", 0, 0);
  if (!v3)
  {
    return -536870212;
  }

  v4 = v3;
  SCKeyForIOKitString = createSCKeyForIOKitString(@"Thermal_Level_Warning");
  if (SCKeyForIOKitString)
  {
    v6 = SCKeyForIOKitString;
    v7 = _io_SCDynamicStoreCopyValue(v4, SCKeyForIOKitString);
    if (v7)
    {
      v8 = v7;
      TypeID = CFNumberGetTypeID();
      if (CFGetTypeID(v8) == TypeID)
      {
        CFNumberGetValue(v8, kCFNumberIntType, thermalLevel);
        v1 = 0;
      }

      CFRelease(v8);
    }

    CFRelease(v6);
  }

  else
  {
    v1 = -536870199;
  }

  CFRelease(v4);
  return v1;
}

uint64_t IOPMGetPerformanceWarningLevel(void *a1)
{
  v1 = 3758097136;
  if (!a1)
  {
    return 3758097090;
  }

  v3 = _io_SCDynamicStoreCreate(*MEMORY[0x1E695E480], @"IOKit Power", 0, 0);
  if (!v3)
  {
    return 3758097084;
  }

  v4 = v3;
  SCKeyForIOKitString = createSCKeyForIOKitString(@"Performance_Warning");
  if (SCKeyForIOKitString)
  {
    v6 = SCKeyForIOKitString;
    v7 = _io_SCDynamicStoreCopyValue(v4, SCKeyForIOKitString);
    if (v7)
    {
      v8 = v7;
      TypeID = CFNumberGetTypeID();
      if (CFGetTypeID(v8) == TypeID)
      {
        CFNumberGetValue(v8, kCFNumberIntType, a1);
        v1 = 0;
      }

      CFRelease(v8);
    }

    CFRelease(v6);
  }

  else
  {
    v1 = 3758097097;
  }

  CFRelease(v4);
  return v1;
}

uint64_t IOUSBDeviceDataGetTypeID()
{
  result = __kIOUSBDeviceDataTypeID;
  if (!__kIOUSBDeviceDataTypeID)
  {
    pthread_once(&__dataTypeInit, __IOUSBDeviceDataRegister);
    return __kIOUSBDeviceDataTypeID;
  }

  return result;
}

uint64_t __IOUSBDeviceDataRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOUSBDeviceDataTypeID = result;
  return result;
}

double IOUSBDeviceDataCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!__kIOUSBDeviceDataTypeID)
  {
    pthread_once(&__dataTypeInit, __IOUSBDeviceDataRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    result = 0.0;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 16) = a3;
    *(Instance + 24) = a4;
    *(Instance + 32) = a2;
    *(Instance + 40) = a5;
    *(Instance + 48) = a6;
  }

  return result;
}

void IOUSBDeviceControllerRemoveArrivalCallback()
{
  if (_notifyPort)
  {
    IOObjectRelease(_notifyIterator);
    v0 = _runLoop;
    RunLoopSource = IONotificationPortGetRunLoopSource(_notifyPort);
    CFRunLoopRemoveSource(v0, RunLoopSource, _runLoopMode);
    IONotificationPortDestroy(_notifyPort);
    _notifyIterator = 0;
    _runLoop = 0;
    _runLoopMode = 0;
    _notifyPort = 0;
  }
}

uint64_t IOUSBDeviceControllerRegisterArrivalCallback(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  _runLoop = a3;
  _runLoopMode = a4;
  if (a3)
  {
    v6 = a3;
    v7 = _notifyPort;
    if (!_notifyPort)
    {
      v7 = IONotificationPortCreate(0);
      _notifyPort = v7;
      v6 = _runLoop;
    }

    RunLoopSource = IONotificationPortGetRunLoopSource(v7);
    CFRunLoopAddSource(v6, RunLoopSource, _runLoopMode);
  }

  if (!_notifyPort)
  {
    return 3758097084;
  }

  _arrivalCallback = a1;
  _arrivalContext = a2;
  v9 = IOServiceMatching("IOUSBDeviceController");
  result = IOServiceAddMatchingNotification(_notifyPort, "IOServicePublish", v9, __IOUSBDeviceControllerPublished, 0, &_notifyIterator);
  if (!result)
  {
    __IOUSBDeviceControllerPublished(0, _notifyIterator);
    return 0;
  }

  return result;
}

uint64_t __IOUSBDeviceControllerPublished(int a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v4 = result;
    v5 = *MEMORY[0x1E695E480];
    do
    {
      cf = 0;
      if (!IOUSBDeviceControllerCreateWithService(v5, v4, &cf))
      {
        if (cf)
        {
          _arrivalCallback(_arrivalContext);
          CFRelease(cf);
        }
      }

      result = IOIteratorNext(iterator);
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t IOHIDUserDeviceCopyService(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    IOObjectRetain(*(a1 + 32));
  }

  return v1;
}

CFTypeID IOHIDUserDeviceGetTypeID(void)
{
  result = qword_1EAF1D928;
  if (!qword_1EAF1D928)
  {
    pthread_once(&_MergedGlobals_0, __IOHIDUserDeviceRegister);
    return qword_1EAF1D928;
  }

  return result;
}

uint64_t __IOHIDUserDeviceRegister()
{
  IOMasterPort(*MEMORY[0x1E69E99F8], &_MergedGlobals_68);
  result = _CFRuntimeRegisterClass();
  qword_1EAF1D928 = result;
  return result;
}

void IOHIDUserDeviceScheduleWithRunLoop(uint64_t a1, __CFRunLoop *a2, const __CFString *a3)
{
  __IOHIDUserDeviceSetupAsyncSupport(a1);
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  if (*(a1 + 152) || (v6 = CFGetAllocator(a1), v7 = CFMachPortCreateRunLoopSource(v6, *(a1 + 144), 0), (*(a1 + 152) = v7) != 0))
  {
    RunLoopSource = *(a1 + 200);
    if (RunLoopSource || (RunLoopSource = IONotificationPortGetRunLoopSource(*(a1 + 192)), (*(a1 + 200) = RunLoopSource) != 0))
    {
      CFRunLoopAddSource(a2, RunLoopSource, a3);
      CFRunLoopAddSource(a2, *(a1 + 152), a3);
      if (*(a1 + 216) || *(a1 + 232) || *(a1 + 248))
      {
        v9 = *(a1 + 28);
        Port = CFMachPortGetPort(*(a1 + 144));
        IOConnectSetNotificationPort(v9, 0, Port, 0);
      }

      if (*(a1 + 48))
      {
        IOConnectCallMethod(*(a1 + 28), 4u, 0, 0, 0, 0, 0, 0, 0, 0);
      }
    }
  }
}

void __IOHIDUserDeviceSetupAsyncSupport(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) || *(a1 + 120))
  {
    __IOHIDDeviceSetupAsyncSupport_cold_1();
  }

  if (!*(a1 + 160))
  {
    ofSize = 0;
    atAddress = 0;
    if (IOConnectMapMemory(*(a1 + 28), 0, *MEMORY[0x1E69E9A60], &atAddress, &ofSize, 1u))
    {
      __IOHIDUserDeviceSetupAsyncSupport_cold_2(&v9, &context);
    }

    v2 = ofSize;
    *(a1 + 160) = atAddress;
    *(a1 + 168) = v2;
  }

  if (!*(a1 + 144))
  {
    NotificationPort = IODataQueueAllocateNotificationPort();
    if (!NotificationPort)
    {
      __IOHIDUserDeviceSetupAsyncSupport_cold_5();
    }

    v4 = NotificationPort;
    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = a1;
    v5 = CFGetAllocator(a1);
    v6 = CFMachPortCreateWithPort(v5, v4, __IOHIDUserDeviceQueueCallback, &context, 0);
    *(a1 + 144) = v6;
    if (!v6)
    {
      __IOHIDUserDeviceSetupAsyncSupport_cold_4();
    }
  }

  if (!*(a1 + 192))
  {
    v7 = IONotificationPortCreate(0);
    *(a1 + 192) = v7;
    if (!v7)
    {
      __IOHIDUserDeviceSetupAsyncSupport_cold_3();
    }
  }

  _IOHIDDebugTrace(8196, 0, a1, 0, 0, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void IOHIDUserDeviceUnscheduleFromRunLoop(uint64_t a1)
{
  v1 = a1;
  v7 = *MEMORY[0x1E69E9840];
  _IOHIDDebugTrace(8197, 0, a1, 0, 0, 0);
  if (*(v1 + 96))
  {
    v2 = *(v1 + 120) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    v1 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  IOConnectSetNotificationPort(*(v1 + 28), 0, 0, 0);
  CFRunLoopRemoveSource(*(v1 + 96), *(v1 + 152), *(v1 + 104));
  v3 = *(v1 + 200);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *MEMORY[0x1E69E9840];

  CFRunLoopRemoveSource(v4, v3, v5);
}

void IOHIDUserDeviceScheduleWithDispatchQueue(__IOHIDUserDevice *a1, NSObject *a2)
{
  IOHIDUserDeviceSetDispatchQueue(a1, a2);

  IOHIDUserDeviceActivate(a1);
}

void IOHIDUserDeviceActivate(IOHIDUserDeviceRef device)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(device + 15))
  {
    v1 = *(device + 12) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    device = _os_crash_msg();
    __break(1u);
  }

  v2 = device;
  if ((atomic_fetch_or(device + 28, 1u) & 1) == 0)
  {
    IONotificationPortSetDispatchQueue(*(device + 24), *(device + 15));
    if (*(v2 + 27) || *(v2 + 29) || *(v2 + 31) || *(v2 + 33) || *(v2 + 34))
    {
      v3 = *(v2 + 7);
      Port = CFMachPortGetPort(*(v2 + 18));
      IOConnectSetNotificationPort(v3, 0, Port, 0);
    }

    v5 = *(v2 + 16);
    CFMachPortGetPort(*(v2 + 18));
    dispatch_mach_connect();
    if (*(v2 + 48))
    {
      IOConnectCallMethod(*(v2 + 7), 4u, 0, 0, 0, 0, 0, 0, 0, 0);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void IOHIDUserDeviceCancel(IOHIDUserDeviceRef device)
{
  v6 = *MEMORY[0x1E69E9840];
  _IOHIDDebugTrace(8199, 0, device, 0, 0, 0);
  if ((atomic_fetch_or(device + 28, 2u) & 2) != 0)
  {
    goto LABEL_7;
  }

  if (*(device + 15))
  {
    v2 = *(device + 12) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    v3 = *MEMORY[0x1E69E9840];
    return;
  }

  IOConnectSetNotificationPort(*(device + 7), 0, 0, 0);
  v4 = *(device + 16);
  v5 = *MEMORY[0x1E69E9840];

  dispatch_mach_cancel();
}

uint64_t __IOHIDUserDeviceSetDispatchQueue_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 == 8)
  {
    dispatch_release(*(*(result + 32) + 128));
    *(*(v2 + 32) + 128) = 0;
    __IOHIDUserDeviceDestroyDevice(*(v2 + 32));
    v6 = *(v2 + 32);
    v7 = *(v6 + 136);
    if (v7)
    {
      (*(v7 + 16))();
      _Block_release(*(*(v2 + 32) + 136));
      v6 = *(v2 + 32);
      *(v6 + 136) = 0;
    }

    dispatch_release(*(v6 + 120));
    v8 = *(v2 + 32);

    return _IOHIDObjectInternalRelease(v8);
  }

  else if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();
    return __IOHIDUserDeviceQueueCallback(msg, v4, v5, *(v2 + 32));
  }

  return result;
}

uint64_t __IOHIDUserDeviceQueueCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  input[2] = *MEMORY[0x1E69E9840];
  _IOHIDDebugTrace(8200, 0, a4, 0, 0, 0);
  result = mach_continuous_time();
  *(a4 + 72) = result;
  v6 = *(a4 + 160);
  if (v6)
  {
    if (*(a4 + 184))
    {
      head = v6->head;
      tail = v6->tail;
      if (tail != *(a4 + 176))
      {
        v9 = *(a4 + 168);
        IOHIDAnalyticsHistogramEventSetIntegerValue();
        *(a4 + 176) = tail;
        v6 = *(a4 + 160);
      }
    }

    dataSize = 0;
    result = IODataQueuePeek(v6);
    if (result)
    {
      v10 = result;
      while (1)
      {
        v11 = *(v10 + 5);
        input[0] = -536870201;
        input[1] = v11;
        inputStructCnt = 0;
        v12 = v10[3];
        v13 = v10[1];
        if (v13)
        {
          if (v13 == 1)
          {
            if (v12)
            {
              if (*v10 > 0x23)
              {
                v15 = *(v10 + 7);
                v14 = v10[9];
                goto LABEL_20;
              }

              v31 = _IOHIDLogCategory(5u);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v32 = *(a4 + 88);
                v33 = *v10;
                *buf = 134218496;
                *&buf[4] = v32;
                v38 = 1024;
                v39 = v12;
                v40 = 1024;
                v41 = v33;
                _os_log_error_impl(&dword_197195000, v31, OS_LOG_TYPE_ERROR, "0x%llx: Packet size is to small for large report, but large report flag is set. reportFlags:%#x entrySize:%u", buf, 0x18u);
              }
            }

            else
            {
              if (*v10 - 24 >= v10[4])
              {
                v14 = v10[4];
              }

              else
              {
                v14 = *v10 - 24;
              }

              v15 = v10 + 7;
LABEL_20:
              ++*(a4 + 280);
              if (*(a4 + 216))
              {
                _IOHIDDebugTrace(8203, 0, a4, 0, 0, 0);
                v20 = (*(a4 + 216))(*(a4 + 224), v10[2], v12 >> 8, v15, v14);
                goto LABEL_31;
              }

              v24 = *(a4 + 264);
              if (v24)
              {
                v20 = (*(v24 + 16))(v24, v10[2], v12 >> 8, v15, v14);
LABEL_31:
                input[0] = v20;
              }

              else
              {
                v28 = _IOHIDLogCategory(5u);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                {
                  v29 = *(a4 + 88);
                  *buf = 134217984;
                  *&buf[4] = v29;
                  _os_log_impl(&dword_197195000, v28, OS_LOG_TYPE_INFO, "0x%llx: set report not handled", buf, 0xCu);
                }
              }

              if (v12)
              {
                *buf = *(v10 + 7);
                IOConnectCallMethod(*(a4 + 28), 5u, buf, 1u, 0, 0, 0, 0, 0, 0);
              }
            }
          }

          v16 = 0;
          goto LABEL_35;
        }

        v16 = malloc_type_malloc(v10[4], 0x100004077774924uLL);
        inputStructCnt = v10[4];
        ++*(a4 + 284);
        v17 = *(a4 + 232);
        if (v17)
        {
          input[0] = v17(*(a4 + 240), v10[2], v12 >> 8, v16);
        }

        v18 = *(a4 + 248);
        if (v18)
        {
          break;
        }

        v21 = *(a4 + 272);
        if (v21)
        {
          v19 = (*(v21 + 16))(v21, v10[2], v12 >> 8, v16, &inputStructCnt);
LABEL_24:
          input[0] = v19;
          if (*(a4 + 248))
          {
            goto LABEL_35;
          }
        }

        if (!*(a4 + 232) && !*(a4 + 272))
        {
          v22 = _IOHIDLogCategory(5u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = *(a4 + 88);
            *buf = 134217984;
            *&buf[4] = v23;
            _os_log_impl(&dword_197195000, v22, OS_LOG_TYPE_INFO, "0x%llx: get report not handled", buf, 0xCu);
          }
        }

LABEL_35:
        v25 = IOConnectCallMethod(*(a4 + 28), 3u, input, 2u, v16, inputStructCnt, 0, 0, 0, 0);
        if (v25)
        {
          v26 = v25;
          v27 = _IOHIDLogCategory(5u);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v30 = *(a4 + 88);
            *buf = 134218240;
            *&buf[4] = v30;
            v38 = 1024;
            v39 = v26;
            _os_log_error_impl(&dword_197195000, v27, OS_LOG_TYPE_ERROR, "0x%llx: kIOHIDResourceDeviceUserClientMethodPostReportResponse:%x", buf, 0x12u);
            if (!v16)
            {
              goto LABEL_39;
            }

LABEL_38:
            free(v16);
            goto LABEL_39;
          }
        }

        if (v16)
        {
          goto LABEL_38;
        }

LABEL_39:
        dataSize = 0;
        *(a4 + 80) = mach_continuous_time();
        IODataQueueDequeue(*(a4 + 160), 0, &dataSize);
        result = IODataQueuePeek(*(a4 + 160));
        v10 = result;
        if (!result)
        {
          goto LABEL_47;
        }
      }

      v19 = v18(*(a4 + 256), v10[2], v12 >> 8, v16, &inputStructCnt);
      goto LABEL_24;
    }
  }

LABEL_47:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IOHIDUserDeviceDestroyDevice(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = _IOHIDLogCategory(5u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 88);
    v9 = 134218242;
    v10 = v3;
    v11 = 2112;
    v12 = a1;
    _os_log_impl(&dword_197195000, v2, OS_LOG_TYPE_DEFAULT, "0x%llx: Destroy: %@", &v9, 0x16u);
  }

  v4 = *(a1 + 192);
  if (v4)
  {
    IONotificationPortDestroy(v4);
    *(a1 + 192) = 0;
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    IOConnectUnmapMemory(*(a1 + 28), 0, *MEMORY[0x1E69E9A60], v5);
    *(a1 + 160) = 0;
  }

  v6 = *(a1 + 28);
  if (v6)
  {
    IOServiceClose(v6);
    *(a1 + 28) = 0;
  }

  result = *(a1 + 24);
  if (result)
  {
    result = IOObjectRelease(result);
    *(a1 + 24) = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void IOHIDUserDeviceSetCancelHandler(IOHIDUserDeviceRef device, dispatch_block_t handler)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!handler || *(device + 17))
  {
    IOHIDUserDeviceSetCancelHandler_cold_1(&v3, v4);
  }

  *(device + 17) = _Block_copy(handler);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t IOHIDUserDeviceRegisterGetReportCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 232) = a2;
  *(result + 240) = a3;
  if (a2 && *(result + 144))
  {
    v3 = *(result + 28);
    Port = CFMachPortGetPort(*(result + 144));

    return IOConnectSetNotificationPort(v3, 0, Port, 0);
  }

  return result;
}

uint64_t IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 248) = a2;
  *(result + 256) = a3;
  if (a2 && *(result + 144))
  {
    v3 = *(result + 28);
    Port = CFMachPortGetPort(*(result + 144));

    return IOConnectSetNotificationPort(v3, 0, Port, 0);
  }

  return result;
}

uint64_t IOHIDUserDeviceRegisterSetReportCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 216) = a2;
  *(result + 224) = a3;
  if (a2 && *(result + 144))
  {
    v3 = *(result + 28);
    Port = CFMachPortGetPort(*(result + 144));

    return IOConnectSetNotificationPort(v3, 0, Port, 0);
  }

  return result;
}

void IOHIDUserDeviceRegisterGetReportBlock(IOHIDUserDeviceRef device, IOHIDUserDeviceGetReportBlock block)
{
  if (*(device + 34))
  {
    IOHIDUserDeviceRegisterGetReportBlock_cold_1();
  }

  *(device + 34) = _Block_copy(block);
}

void IOHIDUserDeviceRegisterSetReportBlock(IOHIDUserDeviceRef device, IOHIDUserDeviceSetReportBlock block)
{
  if (*(device + 33))
  {
    IOHIDUserDeviceRegisterSetReportBlock_cold_1();
  }

  *(device + 33) = _Block_copy(block);
}

uint64_t IOHIDUserDeviceHandleReportAsyncWithTimeStamp(uint64_t a1, uint64_t a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  reference[8] = *MEMORY[0x1E69E9840];
  v12 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  if (v12)
  {
    v13 = v12;
    *v12 = a5;
    v12[1] = a6;
    MachPort = IONotificationPortGetMachPort(*(a1 + 192));
    reference[1] = __IOHIDUserDeviceHandleReportAsyncCallback;
    reference[2] = v13;
    if (dynLinkrosetta_is_current_process_translated_0 && dynLinkrosetta_is_current_process_translated_0() && dynLinkrosetta_convert_to_system_absolute_time_0[0])
    {
      a2 = (dynLinkrosetta_convert_to_system_absolute_time_0[0])(a2);
    }

    input = a2;
    result = IOConnectCallAsyncMethod(*(a1 + 28), 2u, MachPort, reference, 8u, &input, 1u, a3, a4, 0, 0, 0, 0);
  }

  else
  {
    result = 3758097085;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void __IOHIDUserDeviceHandleReportAsyncCallback(void *a1, uint64_t a2)
{
  _IOHIDDebugTrace(8202, 0, a1, 0, 0, 0);
  if (*a1)
  {
    (*a1)(a1[1], a2);
  }

  free(a1);
}

uint64_t IOHIDUserDeviceHandleReport(__IOHIDUserDevice *a1, const uint8_t *a2, CFIndex a3)
{
  v6 = mach_absolute_time();

  return IOHIDUserDeviceHandleReportWithTimeStamp(a1, v6, a2, a3);
}

uint64_t IOHIDUserDeviceHandleReportAsync(uint64_t a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v10 = mach_absolute_time();

  return IOHIDUserDeviceHandleReportAsyncWithTimeStamp(a1, v10, a2, a3, a4, a5);
}

void __IOHIDUserDeviceExtRelease(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  _IOHIDDebugTrace(8194, 0, a1, 0, 0, 0);
  if (*(a1 + 120))
  {
    v2 = atomic_load((a1 + 112));
    if (v2 != 3)
    {
      __IOHIDUserDeviceExtRelease_cold_1(&v7, v8, (a1 + 112));
    }
  }

  if (*(a1 + 56))
  {
    os_state_remove_handler();
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    dispatch_set_context(v3, a1);
    dispatch_set_finalizer_f(*(a1 + 64), __IOHIDUserDeviceFinalizeStateHandler);
    _IOHIDObjectInternalRetain(a1);
    dispatch_release(*(a1 + 64));
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    v5 = *MEMORY[0x1E69E9840];

    CFMachPortInvalidate(v4);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];
  }
}

void __IOHIDUserDeviceIntRelease(uint64_t a1)
{
  _IOHIDDebugTrace(8194, 0, a1, 0, 0, 0);
  __IOHIDUserDeviceDestroyDevice(a1);
  v2 = *(a1 + 152);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 152) = 0;
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    v4 = *MEMORY[0x1E69E9A60];
    Port = CFMachPortGetPort(v3);
    mach_port_mod_refs(v4, Port, 1u, -1);
    CFRelease(*(a1 + 144));
    *(a1 + 144) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    IOObjectRelease(v7);
    *(a1 + 32) = 0;
  }

  if (*(a1 + 184))
  {
    IOHIDAnalyticsEventCancel();
    CFRelease(*(a1 + 184));
    *(a1 + 184) = 0;
  }

  v8 = *(a1 + 264);
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = *(a1 + 272);
  if (v9)
  {

    _Block_release(v9);
  }
}

uint64_t initrosetta_convert_to_system_absolute_time_1(uint64_t a1)
{
  v2 = RosettaLibrary_libLibrary_1;
  if (!RosettaLibrary_libLibrary_1)
  {
    v2 = dlopen("/usr/lib/libRosetta.dylib", 2);
    RosettaLibrary_libLibrary_1 = v2;
  }

  v3 = dlsym(v2, "rosetta_convert_to_system_absolute_time");
  dynLinkrosetta_convert_to_system_absolute_time_0[0] = v3;
  if (!v3)
  {
    return a1;
  }

  return (v3)(a1);
}

uint64_t IOEthernetControllerGetTypeID()
{
  result = __kIOEthernetControllerTypeID;
  if (!__kIOEthernetControllerTypeID)
  {
    pthread_once(&__controllerTypeInit, __IOEthernetControllerRegister);
    return __kIOEthernetControllerTypeID;
  }

  return result;
}

uint64_t __IOEthernetControllerRegister()
{
  IOMasterPort(*MEMORY[0x1E69E99F8], &__masterPort);
  result = _CFRuntimeRegisterClass();
  __kIOEthernetControllerTypeID = result;
  return result;
}

uint64_t IOEthernetControllerCreate(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!__kIOEthernetControllerTypeID)
  {
    pthread_once(&__controllerTypeInit, __IOEthernetControllerRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 192) = 0;
    *(Instance + 160) = 0u;
    *(Instance + 176) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 144) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 88) = -1;
    v5 = __masterPort;
    v6 = IOServiceMatching("IOUserEthernetResource");
    MatchingService = IOServiceGetMatchingService(v5, v6);
    *(v4 + 16) = MatchingService;
    if (!MatchingService)
    {
      return 0;
    }

    if (IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, (v4 + 20)))
    {
      goto LABEL_9;
    }

    if (IOCreateReceivePort(0x35u, (v4 + 56)))
    {
      goto LABEL_9;
    }

    if (IOConnectSetNotificationPort(*(v4 + 20), 0, *(v4 + 56), 0))
    {
      goto LABEL_9;
    }

    v9 = IOCFSerialize(a2, 0);
    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = v9;
    outputCnt = 1;
    v11 = *(v4 + 20);
    BytePtr = CFDataGetBytePtr(v9);
    Length = CFDataGetLength(v10);
    v14 = IOConnectCallMethod(v11, 0, 0, 0, BytePtr, Length, (v4 + 128), &outputCnt, 0, 0);
    CFRelease(v10);
    if (v14 || (InterfaceWithID = __IOEthernetControllerGetInterfaceWithID(*(v4 + 128)), (*(v4 + 32) = InterfaceWithID) == 0) || (v16 = __connect_to_kernel((v4 + 128)), *(v4 + 88) = v16, v16 == -1))
    {
LABEL_9:
      CFRelease(v4);
      return 0;
    }
  }

  return v4;
}

CFMutableDictionaryRef __IOEthernetControllerGetInterfaceWithID(uint64_t a1)
{
  valuePtr = a1;
  result = IOServiceMatching("IONetworkInterface");
  if (result)
  {
    v2 = result;
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFDictionarySetValue(v2, @"IORegistryEntryID", v3);
      CFRelease(v4);
      return IOServiceGetMatchingService(0, v2);
    }

    else
    {
      CFRelease(v2);
      return 0;
    }
  }

  return result;
}

uint64_t __connect_to_kernel(const void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0x4000;
  v10 = 0x10000;
  v2 = socket(32, 2, 2);
  if (v2 != -1)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    __strlcpy_chk();
    if (ioctl(v2, 0xC0644E03uLL, v11) == -1 || (v7 = 0, *&v6[12] = 0, v8 = 0, *v6 = 139296, *&v6[4] = v11[0], *&v6[8] = 0, connect(v2, v6, 0x20u) == -1) || setsockopt(v2, 2, 12, a1, 8u) == -1 || setsockopt(v2, 0xFFFF, 4098, &v10, 4u) || setsockopt(v2, 0xFFFF, 4097, &v9, 4u) || (v5 = fcntl(v2, 3), fcntl(v2, 4, v5 | 4u) == -1))
    {
      close(v2);
      v2 = 0xFFFFFFFFLL;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t IOEthernetControllerWritePacket(uint64_t a1, const void *a2, int64_t a3)
{
  v3 = 3758097084;
  if (a3 >= 14)
  {
    if (send(*(a1 + 88), a2, a3, 0) <= 0)
    {
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void IOEthernetControllerScheduleWithRunLoop(uint64_t a1, CFRunLoopRef rl, CFRunLoopMode mode)
{
  if (a1)
  {
    if (rl)
    {
      v5 = *(a1 + 56);
      if (v5 + 1 >= 2 && *(a1 + 88) != -1 && !*(a1 + 40) && !*(a1 + 48))
      {
        v7 = *(a1 + 64);
        if (v7 || (v11.version = 0, memset(&v11.retain, 0, 24), v11.info = a1, v7 = CFMachPortCreateWithPort(*MEMORY[0x1E695E480], v5, __IOEthernetControllerCFMachPortCallBack, &v11, 0), (*(a1 + 64) = v7) != 0))
        {
          if (*(a1 + 72) || (v8 = CFMachPortCreateRunLoopSource(*MEMORY[0x1E695E480], v7, 0), (*(a1 + 72) = v8) != 0))
          {
            v9 = *(a1 + 96);
            if (v9 || (v11.version = 0, memset(&v11.retain, 0, 24), v11.info = a1, v9 = CFSocketCreateWithNative(*MEMORY[0x1E695E480], *(a1 + 88), 1uLL, __IOEthernetControllerCFSocketCallback, &v11), (*(a1 + 96) = v9) != 0))
            {
              if (*(a1 + 104) || (RunLoopSource = CFSocketCreateRunLoopSource(*MEMORY[0x1E695E480], v9, 0), (*(a1 + 104) = RunLoopSource) != 0))
              {
                CFRunLoopAddSource(rl, *(a1 + 72), mode);
                CFRunLoopAddSource(rl, *(a1 + 104), mode);
                *(a1 + 40) = rl;
                *(a1 + 48) = mode;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t __IOEthernetControllerCFMachPortCallBack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 121))
  {
    CFProperty = IORegistryEntryCreateCFProperty(*(a4 + 32), @"BSD Name", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      *(a4 + 121) = 1;
      CFRelease(CFProperty);
      v10 = *(a4 + 184);
      if (v10)
      {
        v10(a4, *(a4 + 192));
      }
    }
  }

  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(*(a4 + 20), 2u, 0, 0, &output, &outputCnt);
  v6 = output;
  if (output != *(a4 + 120))
  {
    *(a4 + 120) = output;
    if (v6)
    {
      v7 = *(a4 + 136);
      if (!v7)
      {
        return result;
      }

      v8 = 144;
    }

    else
    {
      v7 = *(a4 + 152);
      if (!v7)
      {
        return result;
      }

      v8 = 160;
    }

    return v7(a4, *(a4 + v8));
  }

  return result;
}

uint64_t __IOEthernetControllerCFSocketCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5 && a2 == 1 && a5[12] == result)
  {
    v5 = a5[21];
    if (v5)
    {
      return v5(a5, a5[22]);
    }
  }

  return result;
}

void IOEthernetControllerUnscheduleFromRunLoop(void *a1, CFRunLoopRef rl, CFRunLoopMode mode)
{
  if (a1 && rl)
  {
    v6 = a1[13];
    if (v6)
    {
      CFRunLoopRemoveSource(rl, v6, mode);
    }

    v7 = a1[9];
    if (v7)
    {
      CFRunLoopRemoveSource(rl, v7, mode);
    }

    a1[5] = 0;
    a1[6] = 0;
  }
}

void IOEthernetControllerSetDispatchQueue(uint64_t a1, dispatch_queue_t queue)
{
  if (a1)
  {
    v4 = *(a1 + 56);
    if ((v4 + 1) >= 2 && *(a1 + 88) != -1)
    {
      v5 = *(a1 + 80);
      if (queue)
      {
        if (!v5)
        {
          v6 = dispatch_source_create(MEMORY[0x1E69E96D8], v4, 0, queue);
          *(a1 + 80) = v6;
          if (v6)
          {
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 0x40000000;
            handler[2] = __IOEthernetControllerSetDispatchQueue_block_invoke;
            handler[3] = &__block_descriptor_tmp_20;
            handler[4] = a1;
            dispatch_source_set_event_handler(v6, handler);
            dispatch_resume(*(a1 + 80));
          }
        }

        if (!*(a1 + 112) && *(a1 + 168))
        {
          v7 = dispatch_source_create(MEMORY[0x1E69E96F8], *(a1 + 88), 0, queue);
          *(a1 + 112) = v7;
          if (v7)
          {
            v9[0] = MEMORY[0x1E69E9820];
            v9[1] = 0x40000000;
            v9[2] = __IOEthernetControllerSetDispatchQueue_block_invoke_2;
            v9[3] = &__block_descriptor_tmp_9_0;
            v9[4] = a1;
            dispatch_source_set_event_handler(v7, v9);
            dispatch_resume(*(a1 + 112));
          }
        }
      }

      else
      {
        if (v5)
        {
          dispatch_release(v5);
          *(a1 + 80) = 0;
        }

        v8 = *(a1 + 112);
        if (v8)
        {
          dispatch_release(v8);
          *(a1 + 112) = 0;
        }
      }
    }
  }
}

uint64_t __IOEthernetControllerSetDispatchQueue_block_invoke(uint64_t a1)
{
  memset(v5, 0, sizeof(v5));
  result = mach_msg(v5, 258, 0, 0x20u, *(*(a1 + 32) + 56), 0, 0);
  if (!result)
  {
    return __IOEthernetControllerCFMachPortCallBack(result, v3, v4, *(a1 + 32));
  }

  return result;
}

uint64_t __IOEthernetControllerSetDispatchQueue_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = *(result + 168);
  if (v2)
  {
    return v2(result, *(result + 176));
  }

  return result;
}

uint64_t IOEthernetControllerRegisterEnableCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 136) = a2;
  *(result + 144) = a3;
  return result;
}

uint64_t IOEthernetControllerRegisterDisableCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 152) = a2;
  *(result + 160) = a3;
  return result;
}

uint64_t IOEthernetControllerRegisterPacketAvailableCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 168) = a2;
  *(result + 176) = a3;
  return result;
}

uint64_t IOEthernetControllerRegisterBSDAttachCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 184) = a2;
  *(result + 192) = a3;
  return result;
}

uint64_t IOEthernetControllerGetBSDSocket(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 88);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void __IOEthernetControllerRelease(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 80) = 0;
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 112) = 0;
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    CFSocketInvalidate(v5);
    *(a1 + 88) = -1;
    CFRelease(*(a1 + 96));
    *(a1 + 96) = 0;
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 104) = 0;
  }

  v7 = *(a1 + 88);
  if (v7 != -1)
  {
    close(v7);
    *(a1 + 88) = -1;
  }

  v8 = *(a1 + 20);
  if (v8)
  {
    IOServiceClose(v8);
    *(a1 + 20) = 0;
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    IOObjectRelease(v9);
    *(a1 + 16) = 0;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    IOObjectRelease(v10);
    *(a1 + 32) = 0;
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    CFMachPortInvalidate(v11);
    CFRelease(*(a1 + 64));
    *(a1 + 64) = 0;
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 72) = 0;
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v13, 1u, -1);
    *(a1 + 56) = 0;
  }
}

uint64_t IOMIGMachPortGetTypeID()
{
  result = __IOMIGMachPortTypeID;
  if (!__IOMIGMachPortTypeID)
  {
    pthread_once(&__IOMIGMachPortTypeInit, __IOMIGMachPortRegister);
    return __IOMIGMachPortTypeID;
  }

  return result;
}

uint64_t __sOSKextDefaultLogFunction(uint64_t a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  v3 = *MEMORY[0x1E69E9848];
  vfprintf(*MEMORY[0x1E69E9848], a3, va);
  return fputc(10, v3);
}

void __OSKextReinit(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 88) & 4) == 0)
    {
      v2 = *(a1 + 24);
      if (v2)
      {
        CFRelease(v2);
      }

      *(a1 + 24) = 0;
      OSKextFlushDiagnostics(a1, -1);
      *(a1 + 92) = 0;

      __OSKextProcessInfoDictionary(a1, 0, v3, v4, v5, v6, v7, v8);
    }
  }

  else
  {
    v9 = __sOSKextsByURL;
    if (__sOSKextsByURL)
    {

      CFDictionaryApplyFunction(v9, __OSKextReinitApplierFunction, 0);
    }
  }
}

void OSKextFlushLoadInfo(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  context = a2;
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  if (a1)
  {
    if (*(a1 + 16))
    {
      __OSKextGetFileSystemPath(a1, 0, 0, buffer, v5, v6, v7, v8);
    }

    v9 = *(a1 + 72);
    if (v9)
    {
      if ((OSKextFlushLoadInfo_flushingAll & 1) == 0)
      {
        OSKextLog(a1, 262149, "Flushing load info for %s (%s dependencies)", v4, v5, v6, v7, v8, buffer);
        v9 = *(a1 + 72);
      }

      if (v9[1])
      {
        CFRelease(v9[1]);
        v9 = *(a1 + 72);
      }

      v9[1] = 0;
      if (v9[16])
      {
        CFRelease(v9[16]);
        v9 = *(a1 + 72);
      }

      v9[16] = 0;
      if (v9[17])
      {
        CFRelease(v9[17]);
        v9 = *(a1 + 72);
      }

      v9[17] = 0;
      if (v9[18])
      {
        CFRelease(v9[18]);
        v9 = *(a1 + 72);
      }

      v9[18] = 0;
      if (!a2 || (OSKextFlushDependencies(a1), (v9 = *(a1 + 72)) != 0))
      {
        free(v9);
      }

      *(a1 + 72) = 0;
      v10 = *(a1 + 92);
      if ((~v10 & 0x4900) != 0)
      {
        *(a1 + 92) = v10 & 0xFFFD81FF;
      }
    }
  }

  else if (__sOSKextsByURL)
  {
    OSKextFlushLoadInfo_flushingAll = 1;
    v11 = "with";
    if (!a2)
    {
      v11 = "keeping";
    }

    OSKextLog(0, 262149, "Flushing load info for all kexts (%s dependencies)", v4, v5, v6, v7, v8, v11);
    CFDictionaryApplyFunction(__sOSKextsByURL, __OSKextFlushLoadInfoApplierFunction, &context);
    OSKextFlushLoadInfo_flushingAll = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t OSKextGetExecutableURL(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = *MEMORY[0x1E69E9840];
  result = a1[4];
  if (!result)
  {
    memset(&v48, 0, sizeof(v48));
    __OSKextGetFileSystemPath(a1, 0, 1u, v58, a5, a6, a7, a8);
    OSKextLog(a1, 131079, "Checking CFBundle of %s for executable URL.", v10, v11, v12, v13, v14, v58);
    v15 = a1[2];
    v16 = _CFBundleCopyExecutableURLInDirectory();
    if (v16)
    {
LABEL_3:
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v17 = v16 != 0;
      *buffer = 0u;
      v50 = 0u;
      if (v16 && __sOSKextTargetString)
      {
        ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(a1, @"OSKextVariantOverride");
        if (ValueForInfoDictionaryKey && (v23 = ValueForInfoDictionaryKey, CFDictionaryContainsKey(ValueForInfoDictionaryKey, __sOSKextTargetString)) && (Value = CFDictionaryGetValue(v23, __sOSKextTargetString)) != 0 && !CFStringGetCString(Value, buffer, 128, 0x8000100u))
        {
          *buffer = 0;
        }

        else if (buffer[0])
        {
LABEL_23:
          if (!__OSKextGetFileSystemPath(0, v16, 1u, __s, v19, v20, v21, v22))
          {
LABEL_30:
            CFRelease(v16);
            goto LABEL_31;
          }

          v35 = strlen(__s);
          strlcpy(&__s[v35], buffer, 1024 - v35);
          OSKextLog(a1, 131079, "Statting %s for suffix.", v36, v37, v38, v39, v40, __s);
          if (!stat(__s, &v48))
          {
            v41 = CFGetAllocator(a1);
            v42 = CFStringCreateWithCString(v41, __s, 0x8000100u);
            if (v42)
            {
              v43 = v42;
              v44 = CFGetAllocator(a1);
              v45 = CFURLCreateWithFileSystemPath(v44, v43, kCFURLPOSIXPathStyle, 0);
              CFRelease(v43);
              if (v45)
              {
                CFRelease(v16);
                v16 = v45;
              }
            }
          }

LABEL_29:
          a1[4] = CFRetain(v16);
          goto LABEL_30;
        }

        v17 = 1;
      }

      goto LABEL_21;
    }

    v25 = OSKextGetValueForInfoDictionaryKey(a1, *MEMORY[0x1E695E4E8]);
    if (v25)
    {
      v29 = v25;
      v30 = @"Kext has a CFBundleExecutable property but the executable can't be found";
      v31 = a1;
    }

    else
    {
      v32 = OSKextGetValueForInfoDictionaryKey(a1, @"OSBundleSharedExecutableIdentifier");
      v16 = v32;
      if (!v32)
      {
        v17 = 0;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        *buffer = 0u;
        v50 = 0u;
LABEL_21:
        __strlcpy_chk();
        if (v17 && buffer[0])
        {
          goto LABEL_23;
        }

        if (v16)
        {
          goto LABEL_29;
        }

LABEL_31:
        result = a1[4];
        goto LABEL_32;
      }

      KextWithIdentifier = OSKextGetKextWithIdentifier(v32);
      if (KextWithIdentifier)
      {
        v34 = KextWithIdentifier[2];
        v16 = _CFBundleCopyExecutableURLInDirectory();
        goto LABEL_3;
      }

      v30 = @"Kext claims a shared executable with named kext, but that kext can't be found";
      v31 = a1;
      v29 = v16;
    }

    __OSKextAddDiagnostic(v31, 1, v30, v29, 0, v26, v27, v28, v47);
    goto LABEL_31;
  }

LABEL_32:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __OSKextGetFileSystemPath(uint64_t a1, CFURLRef url, Boolean resolveAgainstBase, UInt8 *buffer, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    url = *(a1 + 16);
  }

  if (!url || (result = CFURLGetFileSystemRepresentation(url, resolveAgainstBase, buffer, 1024), !result))
  {
    OSKextLog(a1, 17, "String/URL conversion failure.", buffer, a5, a6, a7, a8, v11);
    result = 0;
    strcpy(buffer, "(unknown)");
  }

  return result;
}

const void *OSKextGetValueForInfoDictionaryKey(uint64_t a1, const __CFString *a2)
{
  if (!__OSKextReadInfoDictionary(a1, 0))
  {
    return 0;
  }

  if (CFStringHasPrefix(a2, @"OS") || CFStringHasPrefix(a2, @"IO"))
  {
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    v4 = NXGetArchInfoFromCpuType(*(__sOSKextArchInfo + 2), -1);
    if (v4)
    {
      v5 = *(a1 + 56);
      name = v4->name;
      v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@%s%s");
      if (v6)
      {
        v12 = v6;
        Value = CFDictionaryGetValue(v5, v6);
        if (Value)
        {
          v14 = Value;
          CFRelease(v12);
          return v14;
        }

        v14 = CFDictionaryGetValue(v5, a2);
        CFRelease(v12);
        if (v14)
        {
          return v14;
        }
      }

      else
      {
        OSKextLog(0, 17, "Memory allocation failure.", v7, v8, v9, v10, v11, a2);
      }
    }
  }

  v16 = *(a1 + 56);

  return CFDictionaryGetValue(v16, a2);
}

void __OSKextAddDiagnostic(uint64_t a1, int a2, const void *a3, const __CFString *a4, const __CFString *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a4)
  {
    return;
  }

  if ((__sOSKextRecordsDiagnositcs & a2) == 0)
  {
    return;
  }

  v10 = a4;
  Diagnostics = __OSKextGetDiagnostics(a1, a2);
  if (!Diagnostics)
  {
    return;
  }

  v14 = Diagnostics;
  v15 = CFGetTypeID(v10);
  if (v15 == CFURLGetTypeID())
  {
    v16 = CFURLCopyFileSystemPath(v10, kCFURLPOSIXPathStyle);
    if (v16)
    {
      v22 = v16;
      v23 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v24 = CFGetTypeID(v10);
    if (v24 != CFArrayGetTypeID())
    {
      v23 = 0;
      v22 = 0;
      if (!a5)
      {
LABEL_17:
        Value = CFDictionaryGetValue(v14, a3);
        if (Value)
        {
          v32 = Value;
          TypeID = CFArrayGetTypeID();
          if (TypeID != CFGetTypeID(v32))
          {
            OSKextLog(a1, 262145, "Internal error in diagnositcs recording", v34, v35, v36, v37, v38, v40);
            if (!v23)
            {
              goto LABEL_30;
            }

            goto LABEL_29;
          }

          v39 = 0;
          goto LABEL_22;
        }

        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v39 = Mutable;
          CFDictionarySetValue(v14, a3, Mutable);
          v32 = v39;
LABEL_22:
          v42.length = CFArrayGetCount(v32);
          v42.location = 0;
          if (!CFArrayGetCountOfValue(v32, v42, v10))
          {
            CFArrayAppendValue(v32, v10);
          }

          if (v39)
          {
            CFRelease(v39);
            if (!v23)
            {
              goto LABEL_30;
            }

            goto LABEL_29;
          }

          goto LABEL_28;
        }

LABEL_27:
        OSKextLog(Mutable, 17, "Memory allocation failure.", v26, v27, v28, v29, v30, v40);
LABEL_28:
        if (!v23)
        {
LABEL_30:
          if (a5)
          {
            CFRelease(a5);
          }

          if (v22)
          {

            CFRelease(v22);
          }

          return;
        }

LABEL_29:
        CFRelease(v23);
        goto LABEL_30;
      }

LABEL_16:
      Mutable = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@ - %@", v10, a5);
      a5 = Mutable;
      v10 = Mutable;
      if (!Mutable)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    v16 = CFStringCreateByCombiningStrings(*MEMORY[0x1E695E480], v10, @".");
    if (v16)
    {
      v23 = v16;
      v22 = 0;
LABEL_10:
      v10 = v16;
      if (!a5)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  OSKextLog(v16, 17, "Memory allocation failure.", v17, v18, v19, v20, v21, a9);
}

const void *OSKextGetKextWithIdentifier(void *a1)
{
  if (!__sOSKextsByIdentifier)
  {
    return 0;
  }

  __OSKextRealizeKextsWithIdentifier(a1);
  Value = CFDictionaryGetValue(__sOSKextsByIdentifier, a1);
  v3 = Value;
  if (!Value)
  {
    return v3;
  }

  v4 = __kOSKextTypeID;
  if (v4 == CFGetTypeID(Value))
  {
    return v3;
  }

  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(v3) || !CFArrayGetCount(v3))
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(v3, 0);
}

uint64_t OSKextGetKernelExecutableURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 92) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return OSKextGetExecutableURL(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t OSKextGetUserExecutableURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 92) & 8) != 0)
  {
    return OSKextGetExecutableURL(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 0;
  }
}

void OSKextSetExecutableSuffix(uint64_t a1, char *__s1)
{
  if (a1)
  {

    __strlcpy_chk();
    return;
  }

  if (!__s1 || (v2 = strndup(__s1, 0x400uLL)) == 0)
  {
LABEL_12:
    OSKextExecutableVariant = 0;
    return;
  }

  v3 = v2;
  v4 = basename(v2);
  if (!v4 || (v5 = strchr(v4, 46)) == 0)
  {
    free(v3);
    goto LABEL_12;
  }

  v6 = v5 + 1;
  v7 = strchr(v5 + 1, 46);
  if (v7)
  {
    v8 = v7 - v6;
  }

  else
  {
    v8 = strlen(v6);
  }

  if (v8 + 2 >= 0x80)
  {
    v9 = 128;
  }

  else
  {
    v9 = v8 + 2;
  }

  __snprintf_chk(&OSKextExecutableVariant, v9, 0, 0x80uLL, "_%s", v6);

  free(v3);
}

uint64_t OSKextSetTargetString(char *cStr)
{
  if (__sOSKextTargetString)
  {
    CFRelease(__sOSKextTargetString);
    __sOSKextTargetString = 0;
  }

  v2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (v2)
  {
    __sOSKextTargetString = v2;
    return 1;
  }

  else
  {
    OSKextLog(0, 17, "%s %d - cannot allocate memory for target string", v3, v4, v5, v6, v7, "OSKextSetTargetString");
    return 0;
  }
}

void OSKextSetLogFilter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = &__sKernelLogFilter;
  if (a2)
  {
    v9 = &__sKernelLogFilter;
  }

  else
  {
    v9 = &__sUserLogFilter;
  }

  v10 = *v9;
  *v9 = a1;
  if (v10 != a1)
  {
    v11 = "kernel";
    if (!a2)
    {
      v11 = "user";
      v8 = &__sUserLogFilter;
    }

    v12 = *v8;
    OSKextLog(0, 23, "Kext %s-space log filter changed from 0x%x to 0x%x.", a4, a5, a6, a7, a8, v11);
  }
}

uint64_t OSKextGetLogFilter(int a1)
{
  v1 = &__sKernelLogFilter;
  if (!a1)
  {
    v1 = &__sUserLogFilter;
  }

  return *v1;
}

void OSKextSetSimulatedSafeBoot(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = __sOSKextSimulatedSafeBoot;
  v10 = "true";
  if (!a1)
  {
    v10 = "false";
  }

  OSKextLog(0, 262150, "Kext library setting simulated safe boot mode to %s.", a4, a5, a6, a7, a8, v10);
  __sOSKextSimulatedSafeBoot = a1;
  if (v9 != a1)
  {
    v11 = __sOSKextsByURL;
    if (__sOSKextsByURL)
    {

      CFDictionaryApplyFunction(v11, __OSKextReinitApplierFunction, 0);
    }
  }
}

uint64_t OSKextGetActualSafeBoot()
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  *v11 = 0x4200000001;
  if ((OSKextGetActualSafeBoot_gotIt & 1) == 0)
  {
    v9 = 4;
    if (sysctl(v11, 2u, &v10, &v9, 0, 0))
    {
      v0 = __error();
      v1 = strerror(*v0);
      OSKextLog(0, 81, "Can't determine actual safe boot mode - sysctl() failed for KERN_SAFEBOOT - %s.", v2, v3, v4, v5, v6, v1);
    }

    else
    {
      OSKextGetActualSafeBoot_result = v10 != 0;
      OSKextGetActualSafeBoot_gotIt = 1;
    }
  }

  result = OSKextGetActualSafeBoot_result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void OSKextSetRecordsDiagnostics(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = " for:";
  if (!a1)
  {
    v9 = " off";
  }

  OSKextLog(0, 3436582, "Kext library recording diagnostics%s%s%s%s%s.", a4, a5, a6, a7, a8, v9);
  __sOSKextRecordsDiagnositcs = a1;
}

void OSKextSetUsesCaches(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = "now";
  if (!a1)
  {
    v9 = "not";
  }

  OSKextLog(0, 262150, "Kext library %s using caches.", a4, a5, a6, a7, a8, v9);
  __sOSKextUsesCaches = v8;
}

uint64_t (*_OSKextSetAuthenticationFunction(uint64_t (*result)(), uint64_t a2))()
{
  __sOSKextAuthenticationFunction[0] = result;
  __sOSKextAuthenticationContext = a2;
  return result;
}

void *OSKextCreate(uint64_t a1, const __CFURL *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  v3 = CFURLCopyPathExtension(a2);
  if (v3)
  {
    v4 = v3;
    if ((CFEqual(v3, @"kext") || CFEqual(v4, @"dext")) && __OSKextGetFileSystemPath(0, a2, 1u, buffer, v5, v6, v7, v8))
    {
      if (realpath_DARWIN_EXTSN(buffer, __s))
      {
        v14 = strlen(__s);
        v15 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], __s, v14, 1u);
        if (v15)
        {
          v21 = v15;
          KextWithURL = OSKextGetKextWithURL(v15);
          if (KextWithURL)
          {
            v28 = KextWithURL;
            OSKextLog(0, 393223, "%s is already open; returning existing object.", v23, v24, v25, v26, v27, buffer);
            CFRetain(v28);
LABEL_22:
            CFRelease(v21);
            goto LABEL_23;
          }

          OSKextLog(0, 393223, "Creating %s.", v23, v24, v25, v26, v27, __s);
          v28 = __OSKextAlloc();
          if (!v28)
          {
            OSKextLog(0, 17, "Memory allocation failure.", v29, v30, v31, v32, v33, v69);
            goto LABEL_22;
          }

          __OSKextGetFileSystemPath(0, v21, 1u, v72, v30, v31, v32, v33);
          OSKextLog(v28, 131079, "Opening CFBundle for %s.", v34, v35, v36, v37, v38, v72);
          v39 = CFGetAllocator(v28);
          v40 = CFBundleCreate(v39, v21);
          if (v40)
          {
            v46 = v40;
            v28[2] = CFRetain(v21);
            if (__OSKextReadInfoDictionary(v28, v46))
            {
              __OSKextProcessInfoDictionary(v28, v46, v47, v48, v49, v50, v51, v52);
              v60 = __OSKextRecordKext(v28, v53, v54, v55, v56, v57, v58, v59);
              OSKextLog(v28, 131079, "Releasing CFBundle for %s", v61, v62, v63, v64, v65, v72);
              CFRelease(v46);
              if (v60)
              {
                goto LABEL_22;
              }
            }

            else
            {
              OSKextLog(v28, 131079, "Releasing CFBundle for %s", v48, v49, v50, v51, v52, v72);
              CFRelease(v46);
            }
          }

          else
          {
            OSKextLog(0, 131073, "Can't open CFBundle for %s.", v41, v42, v43, v44, v45, v72);
          }

          CFRelease(v28);
          v28 = 0;
          goto LABEL_22;
        }

        OSKextLog(0, 17, "Memory allocation failure.", v16, v17, v18, v19, v20, v68);
      }

      else
      {
        OSKextLog(0, 131073, "Unable to determine realpath for %s - failing.", v9, v10, v11, v12, v13, buffer);
      }
    }

    v28 = 0;
LABEL_23:
    CFRelease(v4);
    goto LABEL_24;
  }

  v28 = 0;
LABEL_24:
  v66 = *MEMORY[0x1E69E9840];
  return v28;
}

_BYTE *OSKextGetKextWithURL(const __CFURL *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  if (!__OSKextGetFileSystemPath(0, a1, 0, buffer, v2, v3, v4, v5) || !__OSKextGetFileSystemPath(0, a1, 1u, v37, v6, v7, v8, v9))
  {
    goto LABEL_11;
  }

  if (!realpath_DARWIN_EXTSN(v37, __s))
  {
    OSKextLog(0, 131073, "Unable to determine realpath for %s - failing.", v10, v11, v12, v13, v14, v37);
LABEL_11:
    v32 = 0;
    goto LABEL_12;
  }

  v15 = CFGetAllocator(a1);
  v16 = strlen(__s);
  v17 = CFURLCreateFromFileSystemRepresentation(v15, __s, v16, 1u);
  if (!v17)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v18, v19, v20, v21, v22, v35);
    goto LABEL_11;
  }

  v23 = v17;
  if (__sOSKextsByURL)
  {
    Value = CFDictionaryGetValue(__sOSKextsByURL, v17);
    v32 = Value;
    if (Value && (Value[88] & 4) != 0)
    {
      __OSKextRealize(Value, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  else
  {
    v32 = 0;
  }

  CFRelease(v23);
LABEL_12:
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

_OWORD *__OSKextAlloc()
{
  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    Instance[4] = 0u;
    Instance[5] = 0u;
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v1, v2, v3, v4, v5, v8);
  }

  return v6;
}

const __CFArray *OSKextCreateKextsFromURL(const __CFAllocator *a1, const __CFURL *a2)
{
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);

  return __OSKextCreateKextsFromURL(a1, a2, 0, 1);
}

const __CFArray *__OSKextCreateKextsFromURL(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, int a4)
{
  v81 = *MEMORY[0x1E69E9840];
  v78 = 0;
  v8 = CFURLCopyPathExtension(a2);
  v9 = v8;
  if (v8 && (CFEqual(v8, @"kext") || CFEqual(v9, @"dext")))
  {
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    v78 = Mutable;
    if (Mutable)
    {
      v16 = Mutable;
      v17 = OSKextCreate(a1, a2);
      if (v17)
      {
        v18 = v17;
        CFArrayAppendValue(v16, v17);
        if (a4)
        {
          v26 = OSKextCopyPlugins(v18, v19, v20, v21, v22, v23, v24, v25);
          v27 = v26;
          if (v26 && CFArrayGetCount(v26))
          {
            v82.length = CFArrayGetCount(v27);
            v82.location = 0;
            CFArrayAppendArray(v16, v27, v82);
          }
        }

        else
        {
          v27 = 0;
        }

        CFRelease(v9);
        v73 = v18;
        goto LABEL_53;
      }
    }

    else
    {
      OSKextLog(0, 17, "Memory allocation failure.", v11, v12, v13, v14, v15, v76);
    }

    v70 = v9;
LABEL_56:
    CFRelease(v70);
    goto LABEL_57;
  }

  errorCode = 0;
  v27 = CFURLCopyAbsoluteURL(a2);
  if (!v27)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v28, v29, v30, v31, v32, v76);
    v52 = 0;
    v56 = 0;
    v39 = 0;
    goto LABEL_45;
  }

  __OSKextGetFileSystemPath(0, v27, 1u, buffer, v29, v30, v31, v32);
  v33 = CFURLCreatePropertyFromResource(a1, a2, *MEMORY[0x1E695EA80], &errorCode);
  v39 = v33;
  if (!v33)
  {
    v76 = buffer;
    v71 = "Failed to check path %s (CF error %ld).";
    v45 = a3;
    v72 = 131073;
LABEL_38:
    OSKextLog(v45, v72, v71, v34, v35, v36, v37, v38, v76);
    goto LABEL_43;
  }

  if (!CFBooleanGetValue(v33))
  {
    if (!a3)
    {
      OSKextLog(0, 131076, "%s: %s - no such file or directory.", v40, v41, v42, v43, v44, "__OSKextCreateKextsFromURL");
    }

    goto LABEL_43;
  }

  if (_OSKextReadFromIdentifierCacheForFolder(v27, &v78))
  {
LABEL_43:
    v52 = 0;
    goto LABEL_44;
  }

  v45 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v78 = v45;
  if (!v45)
  {
    v71 = "Memory allocation failure.";
    v72 = 17;
    goto LABEL_38;
  }

  OSKextLog(a3, 65540, "Scanning %s for kexts.", v34, v35, v36, v37, v38, buffer);
  v46 = CFURLCreatePropertyFromResource(a1, a2, *MEMORY[0x1E695EA78], &errorCode);
  v52 = v46;
  if (!v46 || errorCode)
  {
    v56 = 0;
    if (errorCode == -12 || !errorCode)
    {
      goto LABEL_45;
    }

    OSKextLog(a3, 131073, "Failed to read contents of %s, CFURL error %d.", v47, v48, v49, v50, v51, buffer);
LABEL_44:
    v56 = 0;
    goto LABEL_45;
  }

  Count = CFArrayGetCount(v46);
  if (Count < 1)
  {
    v56 = 0;
  }

  else
  {
    v54 = Count;
    v55 = 0;
    v56 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v52, v55);
      if (v9)
      {
        CFRelease(v9);
      }

      if (v56)
      {
        CFRelease(v56);
      }

      v58 = CFURLCopyPathExtension(ValueAtIndex);
      v9 = v58;
      if (v58 && (CFEqual(v58, @"kext") || CFEqual(v9, @"dext")))
      {
        __OSKextGetFileSystemPath(0, ValueAtIndex, 0, v79, v59, v60, v61, v62);
        if (a3)
        {
          OSKextLog(a3, 65542, "Found plugin %s.", v63, v64, v65, v66, v67, v79);
        }

        else
        {
          OSKextLog(0, 65542, "Found %s.", v63, v64, v65, v66, v67, v79);
        }

        pthread_once(&__sOSKextInitialized, __OSKextInitialize);
        KextsFromURL = __OSKextCreateKextsFromURL(a1, ValueAtIndex, 0, 1);
        v56 = KextsFromURL;
        if (KextsFromURL)
        {
          v69 = v78;
          v83.length = CFArrayGetCount(KextsFromURL);
          v83.location = 0;
          CFArrayAppendArray(v69, v56, v83);
        }
      }

      else
      {
        v56 = 0;
      }

      ++v55;
    }

    while (v54 != v55);
  }

  _OSKextWriteIdentifierCacheForKextsInDirectory(v78, v27, 0);
LABEL_45:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v56)
  {
    v73 = v56;
LABEL_53:
    CFRelease(v73);
  }

  if (v27)
  {
    v70 = v27;
    goto LABEL_56;
  }

LABEL_57:
  result = v78;
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *OSKextCreateKextsFromURLs(const __CFAllocator *a1, const __CFArray *a2)
{
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      for (i = 0; i != v11; ++i)
      {
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          if (v12)
          {
            CFRelease(v12);
          }

          KextsFromURL = __OSKextCreateKextsFromURL(a1, ValueAtIndex, 0, 1);
          v12 = KextsFromURL;
          if (KextsFromURL)
          {
            break;
          }

          if (++i == v11)
          {
            goto LABEL_12;
          }
        }

        v21.length = CFArrayGetCount(KextsFromURL);
        v21.location = 0;
        CFArrayAppendArray(Mutable, v12, v21);
      }

      CFRelease(v12);
    }

LABEL_12:
    if (CFArrayGetCount(Mutable) && CFArrayGetCount(Mutable) >= 1)
    {
      v16 = 0;
      do
      {
        v17 = CFArrayGetValueAtIndex(Mutable, v16++);
        if (v16 < CFArrayGetCount(Mutable))
        {
          v18 = v16;
          do
          {
            if (v17 == CFArrayGetValueAtIndex(Mutable, v18))
            {
              CFArrayRemoveValueAtIndex(Mutable, v18);
            }

            else
            {
              ++v18;
            }
          }

          while (v18 < CFArrayGetCount(Mutable));
        }
      }

      while (v16 < CFArrayGetCount(Mutable));
    }
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v4, v5, v6, v7, v8, v20);
  }

  return Mutable;
}

uint64_t _OSKextReadFromIdentifierCacheForFolder(const __CFURL *a1, CFTypeRef *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  cf = 0;
  valuePtr = 0;
  if (!__sOSKextUsesCaches)
  {
    v43 = 0;
    goto LABEL_41;
  }

  if (!__OSKextGetFileSystemPath(0, a1, 1u, buffer, v4, v5, v6, v7))
  {
    v44 = "String/URL conversion failure.";
LABEL_30:
    v45 = 17;
LABEL_35:
    OSKextLog(0, v45, v44, v8, v9, v10, v11, v12, v63);
LABEL_36:
    v43 = 0;
    v34 = 0;
    goto LABEL_37;
  }

  if (a2)
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = 0;
  }

  if (!_OSKextReadCache(a1, @"KextIdentifiers", 0, 2, 1, p_cf))
  {
    goto LABEL_36;
  }

  if (a2)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(cf))
    {
      Value = CFDictionaryGetValue(cf, @"OSKextIdentifierCacheVersion");
      if (Value && (v21 = Value, v22 = CFNumberGetTypeID(), v22 == CFGetTypeID(v21)) && CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr))
      {
        if (valuePtr == 2)
        {
          v23 = CFDictionaryGetValue(cf, @"OSKextIdentifierCacheBasePath");
          if (v23 && (v24 = v23, v25 = CFStringGetTypeID(), v25 == CFGetTypeID(v24)))
          {
            v26 = CFDictionaryGetValue(cf, @"OSKextIdentifierCacheKextInfo");
            if (v26)
            {
              v27 = v26;
              v28 = CFArrayGetTypeID();
              if (v28 == CFGetTypeID(v27))
              {
                OSKextLog(0, 262148, "Creating kexts from identifier->path cache for %s.", v8, v9, v10, v11, v12, buffer);
                Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
                if (Mutable)
                {
                  v30 = Mutable;
                  Count = CFArrayGetCount(v27);
                  if (Count < 1)
                  {
                    v34 = 0;
LABEL_47:
                    v48 = CFArrayGetCount(v30);
                    if (v48 >= 1)
                    {
                      v54 = v48 + 1;
                      do
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(v30, v54 - 2);
                        if (!__OSKextRecordKext(ValueAtIndex, v56, v57, v58, v59, v60, v61, v62))
                        {
                          CFArrayRemoveValueAtIndex(v30, v54 - 2);
                        }

                        --v54;
                      }

                      while (v54 > 1);
                    }

                    OSKextLog(0, 393220, "Finished reading identifier->path cache for %s.", v49, v50, v51, v52, v53, buffer);
                    *a2 = CFRetain(v30);
                    v43 = 1;
                  }

                  else
                  {
                    v32 = Count;
                    v33 = 0;
                    v34 = 0;
                    while (1)
                    {
                      v35 = CFArrayGetValueAtIndex(v27, v33);
                      v36 = CFDictionaryGetTypeID();
                      if (v36 != CFGetTypeID(v35))
                      {
                        break;
                      }

                      if (v34)
                      {
                        CFRelease(v34);
                      }

                      v42 = CFGetAllocator(0);
                      v34 = __OSKextCreateFromIdentifierCacheDict(v42, v35, v24, v33);
                      if (!v34)
                      {
                        goto LABEL_54;
                      }

                      v68.length = CFArrayGetCount(v30);
                      v68.location = 0;
                      if (CFArrayGetFirstIndexOfValue(v30, v68, v34) == -1)
                      {
                        CFArrayAppendValue(v30, v34);
                      }

                      if (v32 == ++v33)
                      {
                        goto LABEL_47;
                      }
                    }

                    OSKextLog(0, 1, "Kext identifier->path cache for %s - kext entry not a dictionary.", v37, v38, v39, v40, v41, buffer);
LABEL_54:
                    v43 = 0;
                  }

                  CFRelease(v30);
                  goto LABEL_37;
                }

                v44 = "Memory allocation failure.";
                goto LABEL_30;
              }
            }

            v44 = "Kext identifier->path cache - kext info is not an array.";
          }

          else
          {
            v63 = buffer;
            v44 = "Kext identifier->path cache for %s - base path missing or invalid.";
          }
        }

        else
        {
          v63 = buffer;
          v44 = "Kext identifier->path cache for %s - version %d unsupported.";
        }
      }

      else
      {
        v63 = buffer;
        v44 = "Kext identifier->cache for %s - cache version missing/invalid.";
      }
    }

    else
    {
      v63 = buffer;
      v44 = "Kext identifier->path cache for %s - not a dictionary.";
    }

    v45 = 262145;
    goto LABEL_35;
  }

  OSKextLog(0, 262151, "Kext identifier->path cache for %s is up to date.", v14, v15, v16, v17, v18, buffer);
  v34 = 0;
  v43 = 1;
LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

LABEL_41:
  v46 = *MEMORY[0x1E69E9840];
  return v43;
}

uint64_t _OSKextReadCache(const void *a1, uint64_t a2, const char **a3, int a4, int a5, CFTypeRef *a6)
{
  v74 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  cf = 0;
  errorCode = 0;
  v70 = 0;
  memset(&strm, 0, sizeof(strm));
  CacheFileURL = __OSKextCreateCacheFileURL(a1, a2, a3, a4);
  if (!CacheFileURL)
  {
    v19 = 0;
    v20 = 0;
    UTF8CStringForCFString = 0;
    v22 = 0;
    v23 = 0;
    v18 = 1;
    goto LABEL_7;
  }

  v18 = 1;
  if (!__OSKextGetFileSystemPath(0, CacheFileURL, 1u, buffer, v13, v14, v15, v16) || __OSKextCacheNeedsUpdate(CacheFileURL, a1))
  {
    goto LABEL_4;
  }

  if (!a6)
  {
    UTF8CStringForCFString = 0;
    v22 = 0;
    v23 = 0;
LABEL_32:
    v19 = 1;
    v20 = 1;
    goto LABEL_7;
  }

  OSKextLog(0, 393220, "Reading cache file %s.", v12, v13, v14, v15, v16, buffer);
  v26 = CFGetAllocator(CacheFileURL);
  if (!CFURLCreateDataAndPropertiesFromResource(v26, CacheFileURL, &cf, 0, 0, &errorCode))
  {
    OSKextLog(0, 131073, "Can't open cache file %s, CF error %d.", v27, v28, v29, v30, v31, buffer);
LABEL_4:
    v19 = 0;
    v20 = 0;
    UTF8CStringForCFString = 0;
    v22 = 0;
LABEL_5:
    v23 = 0;
    goto LABEL_7;
  }

  strm.next_in = CFDataGetBytePtr(cf);
  strm.avail_in = CFDataGetLength(cf);
  v32 = 5 * strm.avail_in;
  memset(&strm.zalloc, 0, 24);
  v33 = malloc_type_malloc(v32, 0x100004077774924uLL);
  v23 = v33;
  if (!v33)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v34, v35, v36, v37, v38, v68);
    v19 = 0;
    v20 = 0;
    UTF8CStringForCFString = 0;
    v22 = 0;
    goto LABEL_7;
  }

  strm.next_out = v33;
  strm.avail_out = v32;
  if (inflateInit2_(&strm, 47, "1.2.12", 112))
  {
    OSKextLog(0, 131073, "Error initializing zlib uncompression for %s.", v39, v40, v41, v42, v43, buffer);
    goto LABEL_4;
  }

  v44 = 16;
  while (1)
  {
    v45 = inflate(&strm, 0);
    if (v45 != -5 && v45 != 0)
    {
      break;
    }

    v32 *= 2;
    v52 = malloc_type_realloc(v23, v32, 0x66877EADuLL);
    v23 = v52;
    if (!v52)
    {
      OSKextLog(0, 17, "Memory allocation failure.", v46, v47, v48, v49, v50, v68);
      v19 = 0;
      v20 = 0;
      UTF8CStringForCFString = 0;
      v22 = 0;
      goto LABEL_52;
    }

    strm.next_out = &v52[strm.total_out];
    strm.avail_out = v32 - LODWORD(strm.total_out);
    if (!--v44)
    {
      goto LABEL_49;
    }
  }

  if (v45 != 1)
  {
LABEL_49:
    OSKextLog(0, 131073, "Error uncompressing kext cache file %s - zlib returned %d - %s.", v46, v47, v48, v49, v50, buffer);
    v19 = 0;
    v20 = 0;
    UTF8CStringForCFString = 0;
    v22 = 0;
LABEL_50:
    v18 = 0;
    goto LABEL_5;
  }

  v53 = *MEMORY[0x1E695E480];
  v54 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v23, strm.total_out, *MEMORY[0x1E695E488]);
  v22 = v54;
  if (!v54)
  {
    v61 = "Memory allocation failure.";
    v62 = 17;
LABEL_61:
    OSKextLog(0, v62, v61, v55, v56, v57, v58, v59, v68);
    v19 = 0;
    v20 = 0;
    UTF8CStringForCFString = 0;
    goto LABEL_50;
  }

  if (!a5)
  {
    v23 = CFRetain(v54);
LABEL_58:
    UTF8CStringForCFString = 0;
    v18 = 0;
    goto LABEL_32;
  }

  if ((a4 - 1) <= 1)
  {
    v60 = CFPropertyListCreateFromXMLData(v53, v54, 0, &v70);
    goto LABEL_57;
  }

  if (a4 != 3)
  {
    v68 = a4;
    v61 = "Invalid cache format %d specified.";
    v62 = 393217;
    goto LABEL_61;
  }

  v60 = IOCFUnserialize(v23, v53, 0, &v70);
LABEL_57:
  v23 = v60;
  if (v60)
  {
    goto LABEL_58;
  }

  UTF8CStringForCFString = createUTF8CStringForCFString(v70);
  OSKextLog(0, 393217, "Can't read plist from cache file %s - %s.", v63, v64, v65, v66, v67, buffer);
  v19 = 0;
  v20 = 0;
LABEL_52:
  v18 = 0;
LABEL_7:
  OSKextLog(0, 393220, "Finished reading cache file %s.", v12, v13, v14, v15, v16, buffer);
  if (a6 && v19 && v23)
  {
    *a6 = CFRetain(v23);
  }

  if (CacheFileURL)
  {
    CFRelease(CacheFileURL);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (UTF8CStringForCFString)
  {
    free(UTF8CStringForCFString);
  }

  if ((v18 & 1) == 0)
  {
    inflateEnd(&strm);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v20;
}

CFTypeRef *__OSKextCreateFromIdentifierCacheDict(const __CFAllocator *a1, CFDictionaryRef theDict, uint64_t a3, char a4)
{
  v66 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, @"OSBundlePath");
  if (!Value || (v14 = Value, v15 = CFGetTypeID(Value), v15 != CFStringGetTypeID()))
  {
    v64 = a4;
    v20 = "Can't create kext: missing or non-string path in identifier cache entry %d.";
LABEL_10:
    v21 = 262145;
LABEL_11:
    OSKextLog(0, v21, v20, v9, v10, v11, v12, v13, v64);
    v22 = 0;
    goto LABEL_12;
  }

  if (!CFStringHasSuffix(v14, @"kext") && !CFStringHasSuffix(v14, @"dext"))
  {
    v64 = a4;
    v20 = "Can't create kext: path in identifier cache entry %d doesn't name a kext.";
    goto LABEL_10;
  }

  v16 = CFDictionaryGetValue(theDict, @"OSBundleUsesAbsolutePath");
  if (v16)
  {
    v17 = v16;
    v18 = CFGetTypeID(v16);
    if (v18 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v17))
      {
        v19 = 0;
        goto LABEL_14;
      }
    }
  }

  v14 = CFStringCreateWithFormat(a1, 0, @"%@/%@", a3, v14);
  v19 = v14;
  if (!v14)
  {
    v20 = "Memory allocation failure.";
    v21 = 17;
    goto LABEL_11;
  }

LABEL_14:
  v25 = CFURLCreateWithFileSystemPath(a1, v14, kCFURLPOSIXPathStyle, 1u);
  v31 = v25;
  if (v25)
  {
    __OSKextGetFileSystemPath(0, v25, 1u, buffer, v27, v28, v29, v30);
    v22 = CFDictionaryGetValue(__sOSKextsByURL, v31);
    v32 = 0;
    v33 = v22;
    if (v22)
    {
LABEL_18:
      v34 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E4F0]);
      if (v34 && (v40 = v34, v41 = CFGetTypeID(v34), v41 == CFStringGetTypeID()))
      {
        if (v22)
        {
          if (!CFEqual(v40, v22[3]))
          {
            OSKextLog(v22, 262145, "Can't create kext from cache: %s is already open and has a different CFBundleIdentifier from identifier->path cache entry %d.", v42, v43, v44, v45, v46, buffer);
LABEL_27:
            CFRetain(v22);
LABEL_28:
            if (v32)
            {
              CFRelease(v32);
            }

            goto LABEL_30;
          }
        }

        else
        {
          v32[3] = CFRetain(v40);
        }

        v48 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E500]);
        if (v48 && (v49 = v48, v50 = CFGetTypeID(v48), v50 == CFStringGetTypeID()))
        {
          v51 = OSKextParseVersionCFString(v49);
          if (v51 < 0)
          {
            v47 = "Can't create kext: invalid CFBundleVersion in identifier cache entry entry %d.";
          }

          else
          {
            if (v22)
            {
              if (v51 != v22[5])
              {
                OSKextLog(v22, 262145, "Can't create kext from cache: %s is already open and has a different CFBundleVersion from identifier->path cache entry %d.", v35, v36, v37, v38, v39, buffer);
                goto LABEL_27;
              }
            }

            else
            {
              v32[5] = v51;
            }

            v52 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E138]);
            if (v52 && (v53 = v52, v54 = CFGetTypeID(v52), v54 == CFStringGetTypeID()))
            {
              v55 = CFEqual(v53, @"DEXT");
              if (v22)
              {
                if (((*(v22 + 23) >> 3) & 1) != v55)
                {
                  OSKextLog(v22, 262145, "Can't create kext from cache: %s is already open and has a different CFBundlePackageType from identifier->path cache entry %d.", v56, v57, v58, v59, v60, buffer);
                }

                if (!v32)
                {
                  goto LABEL_57;
                }
              }

              else
              {
                *(v32 + 23) = *(v32 + 23) & 0xFFFFFFF7 | (8 * (v55 != 0));
              }

              v61 = CFDictionaryGetValue(theDict, @"OSBundleEnableKextLogging");
              if (!v61)
              {
LABEL_57:
                v22 = v33;
                goto LABEL_27;
              }

              v62 = v61;
              v63 = CFGetTypeID(v61);
              if (v63 == CFBooleanGetTypeID())
              {
                *(v32 + 23) = *(v32 + 23) & 0xFFFFFFDF | (32 * (CFBooleanGetValue(v62) != 0));
                *(v32 + 23) = *(v32 + 23) & 0xFFFFFFEF | (16 * (CFBooleanGetValue(v62) != 0));
                goto LABEL_57;
              }

              v47 = "Can't create kext from cache: non-BOOLean OSKextEnableKextLogging in identifier cache entry %d.";
            }

            else
            {
              v47 = "Can't create kext: missing or non-string bundle package type in identifier cache entry %d.";
            }
          }
        }

        else
        {
          v47 = "Can't create kext: missing or non-string version in identifier cache entry %d.";
        }
      }

      else
      {
        v47 = "Can't create kext: missing or non-string CFBundleIdentifier in identifier cache entry %d.";
      }

      OSKextLog(v22, 262145, v47, v35, v36, v37, v38, v39, a4);
      if (!v22)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v25 = __OSKextAlloc();
    if (v25)
    {
      v33 = v25;
      *(v25 + 88) |= 4u;
      *(v25 + 2) = CFRetain(v31);
      v32 = v33;
      goto LABEL_18;
    }
  }

  OSKextLog(v25, 17, "Memory allocation failure.", v26, v27, v28, v29, v30, v64);
  v22 = 0;
LABEL_30:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v31)
  {
    CFRelease(v31);
  }

LABEL_12:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t __OSKextRecordKext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  if (v9)
  {
    UTF8CStringForCFString = createUTF8CStringForCFString(v9);
  }

  else
  {
    UTF8CStringForCFString = 0;
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    v13 = CFURLCopyAbsoluteURL(v11);
    if (!v13)
    {
      OSKextLog(0, 17, "Memory allocation failure.", v12, a5, a6, a7, a8, v29);
      v14 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v13 = 0;
  }

  __OSKextGetFileSystemPath(0, v13, 1u, buffer, a5, a6, a7, a8);
  v15 = __sOSAllKexts;
  v33.length = CFArrayGetCount(__sOSAllKexts);
  v33.location = 0;
  if (CFArrayGetFirstIndexOfValue(v15, v33, a1) == -1)
  {
    CFArrayAppendValue(__sOSAllKexts, a1);
  }

  if (v13 && (*(a1 + 88) & 8) == 0)
  {
    CFDictionarySetValue(__sOSKextsByURL, v13, a1);
  }

  v14 = __OSKextRecordKextInIdentifierDict(a1, __sOSKextsByIdentifier, v16, v17, v18, v19, v20, v21);
  if (v14)
  {
    OSKextVersionGetString(*(a1 + 40), v31, 0x14u);
    *(a1 + 88);
    OSKextLog(a1, 262149, "Recorded %s%s, id %s, version %s.", v22, v23, v24, v25, v26, buffer);
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_17:
  if (UTF8CStringForCFString)
  {
    free(UTF8CStringForCFString);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v14;
}

void __OSKextRealize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 88) & 4) == 0)
  {
    goto LABEL_7;
  }

  __OSKextGetFileSystemPath(a1, 0, 0, buffer, a5, a6, a7, a8);
  OSKextLog(a1, 262150, "Realizing %s from identifier cache object.", v9, v10, v11, v12, v13, buffer);
  __OSKextRemoveKextFromIdentifierDict(a1, __sOSKextsByIdentifier, v14, v15, v16, v17, v18, v19, v24);
  v20 = *(a1 + 24);
  v21 = *(a1 + 40);
  *(a1 + 40) = -1;
  *(a1 + 24) = @"__unknown__";
  __OSKextProcessInfoDictionary(a1, 0);
  if (v21 != *(a1 + 40) || (v22 = *(a1 + 24), !CFEqual(v20, v22)))
  {
    *(a1 + 88) &= ~4u;
LABEL_9:
    __OSKextRemoveIdentifierCacheForKext(a1);
    if (!v20)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(a1 + 88) &= ~4u;
  if (v22 == @"__unknown__")
  {
    goto LABEL_9;
  }

  if (v20)
  {
LABEL_6:
    CFRelease(v20);
  }

LABEL_7:
  v23 = *MEMORY[0x1E69E9840];
}

void __OSKextRemoveKextFromIdentifierDict(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  if (!v9)
  {
    goto LABEL_22;
  }

  UTF8CStringForCFString = createUTF8CStringForCFString(*(a1 + 24));
  if (UTF8CStringForCFString)
  {
    v18 = UTF8CStringForCFString;
    Value = CFDictionaryGetValue(a2, v9);
    if (Value)
    {
      v20 = Value;
      if (Value == a1)
      {
        CFDictionaryRemoveValue(a2, v9);
      }

      else
      {
        TypeID = CFArrayGetTypeID();
        if (TypeID != CFGetTypeID(v20))
        {
          goto LABEL_19;
        }

        Count = CFArrayGetCount(v20);
        if (Count < 1)
        {
LABEL_10:
          v25 = 1;
        }

        else
        {
          v23 = Count;
          v24 = 0;
          while (CFArrayGetValueAtIndex(v20, v24) != a1)
          {
            if (v23 == ++v24)
            {
              goto LABEL_10;
            }
          }

          CFArrayRemoveValueAtIndex(v20, v24);
          v25 = a1 == 0;
        }

        if (!CFArrayGetCount(v20))
        {
          CFDictionaryRemoveValue(a2, v9);
          CFRelease(v20);
        }

        if (v25)
        {
          goto LABEL_19;
        }
      }

      OSKextVersionGetString(*(a1 + 40), v38, 0x14u);
      OSKextLog(a1, 262149, "%s, version %s removed from identifier lookup dictionary.", v32, v33, v34, v35, v36, v18);
      goto LABEL_21;
    }

LABEL_19:
    strncmp(v18, "__unknown__", 0xBuLL);
    OSKextLog(a1, 262151, "%s not found in identifier lookup dictionary%s.", v27, v28, v29, v30, v31, v18);
LABEL_21:
    free(v18);
LABEL_22:
    v37 = *MEMORY[0x1E69E9840];
    return;
  }

  v26 = *MEMORY[0x1E69E9840];

  OSKextLog(0, 17, "Memory allocation failure.", v13, v14, v15, v16, v17, a9);
}

uint64_t __OSKextProcessInfoDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v100 = 0;
  cf = 0;
  BOOLean = 0;
  cf1 = 0;
  theDict = 0;
  __OSKextRemoveKextFromIdentifierDict(a1, __sOSKextsByIdentifier, a3, a4, a5, a6, a7, a8, v90);
  if (!__OSKextReadInfoDictionary(a1, a2))
  {
LABEL_110:
    v86 = 0;
    goto LABEL_111;
  }

  v16 = *MEMORY[0x1E695E138];
  v17 = *(a1 + 56);
  TypeID = CFStringGetTypeID();
  v19 = __OSKextCheckProperty(a1, v17, v16, v16, TypeID, __sOSKextPackageTypeValues, 1, 1, 1, &cf1, &v100);
  if (v19)
  {
    v20 = v100 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = v19;
    goto LABEL_106;
  }

  v22 = *MEMORY[0x1E695E4F0];
  v23 = *(a1 + 56);
  v24 = CFStringGetTypeID();
  v25 = __OSKextCheckProperty(a1, v23, v22, v22, v24, 0, 1, 1, 1, &cf, 0);
  v26 = v25 != 0;
  if (v25 && (v27 = cf) != 0)
  {
    if (!*(a1 + 24) || (CFRelease(*(a1 + 24)), v27 = cf, *(a1 + 24) = 0, v27))
    {
      *(a1 + 24) = CFRetain(v27);
      v27 = cf;
    }

    if (CFStringGetLength(v27) < 64)
    {
      v26 = 1;
    }

    else
    {
      __OSKextSetDiagnostic(a1, 1, @"CFBundleIdentifier and CFBundleVersion must be < 64 characters.");
      v26 = 0;
    }
  }

  else
  {
    *(a1 + 24) = @"__unknown__";
  }

  v28 = *MEMORY[0x1E695E500];
  v29 = *(a1 + 56);
  v30 = CFStringGetTypeID();
  v31 = __OSKextCheckProperty(a1, v29, v28, v28, v30, 0, 1, 1, 0, &cf, 0);
  if (!v31)
  {
    v26 = 0;
  }

  v32 = -1;
  if (v31 && cf)
  {
    if (CFStringGetLength(cf) < 64)
    {
      v32 = OSKextParseVersionCFString(cf);
      if (v32 == -1)
      {
        __OSKextAddDiagnostic(a1, 1, @"Info dictionary property value is illegal", v28, 0, v33, v34, v35, v91);
        v26 = 0;
      }

      *(a1 + 40) = v32;
    }

    else
    {
      __OSKextSetDiagnostic(a1, 1, @"CFBundleIdentifier and CFBundleVersion must be < 64 characters.");
      v26 = 0;
    }
  }

  v36 = *(a1 + 56);
  v37 = CFStringGetTypeID();
  v38 = __OSKextCheckProperty(a1, v36, @"OSBundleCompatibleVersion", @"OSBundleCompatibleVersion", v37, 0, 0, 1, 0, &cf, 0);
  if (v38)
  {
    v39 = v26;
  }

  else
  {
    v39 = 0;
  }

  if (v38 && cf)
  {
    v40 = OSKextParseVersionCFString(cf);
    if (v40 == -1)
    {
      v39 = 0;
    }

    *(a1 + 48) = v40;
    if (v40 > v32)
    {
      __OSKextSetDiagnostic(a1, 1, @"Compatible version must be lower than current version.");
      v39 = 0;
    }
  }

  v41 = *(a1 + 56);
  v42 = CFBooleanGetTypeID();
  if (!__OSKextCheckProperty(a1, v41, @"OSBundleIsInterface", @"OSBundleIsInterface", v42, 0, 0, 1, 0, &BOOLean, &v100))
  {
    v39 = 0;
  }

  if (v100)
  {
    *(a1 + 92) |= 2u;
  }

  if (BOOLean)
  {
    v43 = CFBooleanGetValue(BOOLean) != 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = *(a1 + 56);
  v45 = CFBooleanGetTypeID();
  if (__OSKextCheckProperty(a1, v44, @"OSKernelResource", @"OSKernelResource", v45, 0, 0, 1, 0, 0, &v100))
  {
    v46 = v39;
  }

  else
  {
    v46 = 0;
  }

  v47 = *(a1 + 92);
  if (v100)
  {
    v47 |= 1u;
    *(a1 + 92) = v47;
  }

  if (v47)
  {
    if (!v43)
    {
      __OSKextSetDiagnostic(a1, 8, @"Kext is a kernel component but OSBundleIsInterface is set to false; overriding");
      v47 = *(a1 + 92);
    }

    *(a1 + 92) = v47 | 2;
  }

  v48 = *MEMORY[0x1E695E4E8];
  v49 = *(a1 + 56);
  v50 = CFStringGetTypeID();
  if (__OSKextCheckProperty(a1, v49, v48, v48, v50, 0, 0, 1, 1, 0, &v100))
  {
    v51 = v46;
  }

  else
  {
    v51 = 0;
  }

  if (v100)
  {
    if (CFEqual(cf1, @"KEXT"))
    {
      v52 = 4;
LABEL_59:
      *(a1 + 92) |= v52;
      goto LABEL_60;
    }

    if (CFEqual(cf1, @"DEXT"))
    {
      v52 = 8;
      goto LABEL_59;
    }

    v51 = 0;
  }

LABEL_60:
  v53 = *(a1 + 56);
  v54 = CFStringGetTypeID();
  if (!__OSKextCheckProperty(a1, v53, @"OSBundleSharedExecutableIdentifier", @"OSBundleSharedExecutableIdentifier", v54, 0, 0, 1, 0, 0, &v100))
  {
    v51 = 0;
  }

  if (v100)
  {
    v55 = *(a1 + 92);
    if ((v55 & 4) != 0)
    {
      __OSKextSetDiagnostic(a1, 1, @"Kext declares both CFBundleExecutable and CFBundleSharedExecutableIdentifier; use only one.");
    }

    else if ((v55 & 8) != 0)
    {
      __OSKextSetDiagnostic(a1, 1, @"CFBundlePackageType is DEXT and bundle declares CFBundleExecutable; use only one.");
      v51 = 0;
    }

    else
    {
      *(a1 + 92) = v55 | 4;
    }
  }

  v56 = *(a1 + 56);
  v57 = CFBooleanGetTypeID();
  if (!__OSKextCheckProperty(a1, v56, @"OSBundleEnableKextLogging", @"OSBundleEnableKextLogging", v57, 0, 0, 1, 0, &BOOLean, &v100))
  {
    v51 = 0;
  }

  if (v100)
  {
    *(a1 + 92) = *(a1 + 92) & 0xFFFFFFEF | (16 * (CFBooleanGetValue(BOOLean) != 0));
    *(a1 + 92) = *(a1 + 92) & 0xFFFFFFDF | (32 * (CFBooleanGetValue(BOOLean) != 0));
  }

  if (OSKextGetValueForInfoDictionaryKey(a1, @"OSBundleDebugLevel"))
  {
    __OSKextAddDiagnostic(a1, 8, @"Deprecated property (ignored)", @"OSBundleDebugLevel", 0, v58, v59, v60, v92);
  }

  v61 = *(a1 + 56);
  v62 = CFStringGetTypeID();
  if (__OSKextCheckProperty(a1, v61, @"OSBundleRequired", @"OSBundleRequired", v62, __sOSKextOSBundleRequiredValues, 0, 1, 0, &cf, &v100))
  {
    v63 = v51;
  }

  else
  {
    v63 = 0;
  }

  if (v100)
  {
    if ((*(a1 + 92) & 8) != 0)
    {
      if (CFStringHasPrefix(*(a1 + 24), @"com.apple."))
      {
        if (CFEqual(cf, @"DriverKit") || CFEqual(cf, @"Safe Boot"))
        {
          goto LABEL_89;
        }

        v64 = @"Driver Extension lacks appropriate value for OSBundleRequired, and will not be launched without kextd present. Use one of 'DriverKit' or 'Safe Boot.'";
      }

      else
      {
        v64 = @"Third-party Driver Extensions are ineligible to run in Safe Boot, or match on devices during early boot. Please remove the OSBundleRequired key from your Info.plist.";
      }
    }

    else
    {
      if (!CFEqual(cf, @"DriverKit"))
      {
LABEL_89:
        *(a1 + 92) = *(a1 + 92) & 0xFFFFFF7F | (v63 << 7);
        goto LABEL_90;
      }

      v64 = @"Kexts may not use the DriverKit value for OSBundleRequired.";
    }

    __OSKextSetDiagnostic(a1, 16, v64);
    v63 = 0;
    goto LABEL_89;
  }

  if (OSKextGetActualSafeBoot() | __sOSKextSimulatedSafeBoot)
  {
    __OSKextSetDiagnostic(a1, 16, @"Kext isn't loadable during safe boot.");
  }

LABEL_90:
  if ((*(a1 + 92) & 8) != 0)
  {
    Count = CFArrayGetCount(__sOSKextInfoKextOnlyKeys);
    if (Count >= 1)
    {
      v66 = Count;
      v67 = 0;
      v68 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(__sOSKextInfoKextOnlyKeys, v67);
        if (OSKextGetValueForInfoDictionaryKey(a1, ValueAtIndex))
        {
          v70 = CFStringCreateWithFormat(v68, 0, @"Driver Extensions may not use the %@ key; please remove.");
          if (!v70)
          {
            OSKextLog(a1, 17, "String/URL conversion failure.", v71, v72, v73, v74, v75, ValueAtIndex);
            goto LABEL_110;
          }

          v76 = v70;
          __OSKextSetDiagnostic(a1, 1, v70);
          CFRelease(v76);
          v63 = 0;
        }

        ++v67;
      }

      while (v66 != v67);
    }
  }

  v77 = *(a1 + 56);
  v78 = CFDictionaryGetTypeID();
  if (__OSKextCheckProperty(a1, v77, @"IOKitPersonalities", @"IOKitPersonalities", v78, 0, 0, 1, 0, &theDict, &v100))
  {
    v21 = v63;
  }

  else
  {
    v21 = 0;
  }

  if (!theDict)
  {
LABEL_106:
    v86 = 0;
    if (v21)
    {
      goto LABEL_107;
    }

    goto LABEL_111;
  }

  v95 = 0;
  v79 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v79, 0, MEMORY[0x1E695E9C0]);
  v86 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, @"IOKitPersonalities");
    context[0] = a1;
    context[1] = theDict;
    context[2] = v86;
    LOWORD(v95) = 257;
    CFDictionaryApplyFunction(theDict, __OSKextValidateIOKitPersonalityApplierFunction, context);
    if (!v95)
    {
      v21 = 0;
    }

    v87 = CFArrayGetCount(v86);
    CFArrayRemoveValueAtIndex(v86, v87 - 1);
    if (!v21)
    {
      goto LABEL_111;
    }

LABEL_107:
    v88 = 1;
    goto LABEL_112;
  }

  OSKextLog(0, 17, "Memory allocation failure.", v81, v82, v83, v84, v85, v93);
LABEL_111:
  v88 = 0;
  *(a1 + 92) = *(a1 + 92) & 0xFFFFF3FF | 0x400;
LABEL_112:
  __OSKextRecordKextInIdentifierDict(a1, __sOSKextsByIdentifier, v10, v11, v12, v13, v14, v15);
  if (v86)
  {
    CFRelease(v86);
  }

  return v88;
}

void __OSKextRemoveIdentifierCacheForKext(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!geteuid())
  {
    if (__OSKextGetFileSystemPath(a1, 0, 1u, __s1, v2, v3, v4, v5))
    {
      Count = CFArrayGetCount(__sOSKextSystemExtensionsFolderURLs);
      if (Count >= 1)
      {
        v8 = Count;
        v9 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(__sOSKextSystemExtensionsFolderURLs, v9);
          CFURLGetFileSystemRepresentation(ValueAtIndex, 1u, buffer, 1024);
          if (!strncmp(__s1, buffer, 0x400uLL))
          {
            break;
          }

          if (v8 == ++v9)
          {
            goto LABEL_2;
          }
        }

        OSKextLog(0, 393220, "Removing identifier->path cache %s.", v11, v12, v13, v14, v15, __s1);
        __s1[0] = 0;
        __strlcpy_chk();
        __strlcat_chk();
        __strlcat_chk();
        if (unlink(__s1) && *__error() != 2 && *__error() != 20)
        {
          v16 = __error();
          strerror(*v16);
          OSKextLog(0, 131073, "Failed to remove identifier->path cache %s - %s.", v17, v18, v19, v20, v21, __s1);
        }
      }
    }
  }

LABEL_2:
  v6 = *MEMORY[0x1E69E9840];
}

void __OSKextRealizeKextsWithIdentifier(void *key)
{
  if (__sOSKextsByIdentifier)
  {
    Value = CFDictionaryGetValue(__sOSKextsByIdentifier, key);
    if (Value)
    {
      v2 = Value;
      CFRetain(Value);
      v3 = __kOSKextTypeID;
      if (v3 == CFGetTypeID(v2))
      {
        __OSKextRealize(v2, v4, v5, v6, v7, v8, v9, v10);
      }

      else
      {
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(v2) && CFArrayGetCount(v2))
        {
          v13.length = CFArrayGetCount(v2);
          v13.location = 0;
          CFArrayApplyFunction(v2, v13, __OSKextRealize, 0);
        }
      }

      CFRelease(v2);
    }
  }
}

CFURLRef __OSKextCreateCacheFileURL(const void *a1, uint64_t a2, const char **a3, int a4)
{
  v8 = CFGetTypeID(a1);
  v9 = CFURLGetTypeID();
  if (v8 == v9)
  {
    v10 = _CFURLCopyAbsolutePath(a1);
    if (!v10)
    {
      OSKextLog(0, 17, "Memory allocation failure.", v11, v12, v13, v14, v15, v36);
      return 0;
    }

    v16 = v10;
    if (!__OSKextURLIsSystemFolder(a1))
    {
      OSKextLogCFString(0, 262148, @"%@ is not a system extensions folder; not looking for a cache.", v17, v18, v19, v20, v21, v16);
      v34 = 0;
      v23 = 0;
      goto LABEL_24;
    }

    v22 = v16;
  }

  else
  {
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    v16 = 0;
    if (__sOSKextSystemExtensionsFolderURLs != a1)
    {
      return 0;
    }

    v22 = &stru_1F0B93200;
  }

  v24 = "";
  v25 = "";
  if ((a4 - 1) <= 2)
  {
    v25 = off_1E74A90C8[a4 - 1];
  }

  v26 = *MEMORY[0x1E695E480];
  v27 = "Startup";
  if (v8 == v9)
  {
    v27 = "Directories";
  }

  v28 = "_";
  if (a3)
  {
    v24 = *a3;
  }

  else
  {
    v28 = "";
  }

  v34 = CFStringCreateWithFormat(v26, 0, @"%s/%s%@/%@%s%s%s", "/System/Library/Caches/com.apple.kext.caches", v27, v22, a2, v28, v24, v25);
  if (!v34 || (v23 = CFURLCreateWithFileSystemPath(v26, v34, kCFURLPOSIXPathStyle, 0)) == 0)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v29, v30, v31, v32, v33, v37);
    v23 = 0;
  }

  if (v16)
  {
LABEL_24:
    CFRelease(v16);
    if (!v34)
    {
      return v23;
    }

    goto LABEL_21;
  }

  if (v34)
  {
LABEL_21:
    CFRelease(v34);
  }

  return v23;
}

const __CFURL *_CFURLCopyAbsolutePath(const __CFURL *a1)
{
  result = CFURLCopyAbsoluteURL(a1);
  if (result)
  {
    v2 = result;
    v3 = CFURLCopyFileSystemPath(result, kCFURLPOSIXPathStyle);
    CFRelease(v2);
    return v3;
  }

  return result;
}

BOOL __OSKextURLIsSystemFolder(const __CFURL *a1)
{
  v1 = CFURLCopyAbsoluteURL(a1);
  if (v1)
  {
    v7 = v1;
    v8 = __sOSKextSystemExtensionsFolderURLs;
    v12.length = CFArrayGetCount(__sOSKextSystemExtensionsFolderURLs);
    v12.location = 0;
    v9 = CFArrayGetFirstIndexOfValue(v8, v12, v7) != -1;
    CFRelease(v7);
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v2, v3, v4, v5, v6, v11);
    return 0;
  }

  return v9;
}

uint64_t __OSKextCheckURL(const __CFURL *a1, int a2)
{
  *&v45[1023] = *MEMORY[0x1E69E9840];
  bzero(&buffer, 0x400uLL);
  memset(&v42, 0, sizeof(v42));
  result = __OSKextGetFileSystemPath(0, a1, 1u, &buffer, v4, v5, v6, v7);
  if (!result)
  {
    goto LABEL_37;
  }

  if (buffer != 47)
  {
    OSKextLog(0, 17, "Internal error, invalid argument to __OSKextCheckURL.", v9, v10, v11, v12, v13, v41);
LABEL_28:
    result = 0;
    goto LABEL_37;
  }

  if (a2)
  {
    memset(&v43, 0, 512);
    if (!statfs(&buffer, &v43) && (v43.f_flags & 1) != 0)
    {
      OSKextLogCFString(0, 131076, @"Not saving %s - read-only filesystem.", v14, v15, v16, v17, v18, &buffer);
      goto LABEL_28;
    }
  }

  for (i = &buffer; ; i = index(v27, 47))
  {
    if (i == &buffer)
    {
      p_buffer = "/";
    }

    else
    {
      if (i)
      {
        *i = 0;
      }

      p_buffer = &buffer;
    }

    if (stat(p_buffer, &v42))
    {
      if (*__error() != 2)
      {
        v28 = __error();
        strerror(*v28);
        OSKextLog(0, 131073, "Can't stat path %s - %s.", v29, v30, v31, v32, v33, p_buffer);
        goto LABEL_34;
      }

      if (!a2)
      {
        goto LABEL_34;
      }

      if (mkdir(&buffer, 0x1EDu) && *__error() != 17)
      {
        break;
      }
    }

    if (v42.st_uid)
    {
      OSKextLog(0, 131073, "Can't create kext cache under %s - owner not root.", v21, v22, v23, v24, v25, p_buffer);
      goto LABEL_34;
    }

    if ((v42.st_mode & 0xF000) != 0x4000 && v42.st_gid != 0)
    {
      OSKextLog(0, 131073, "Can't create kext cache under %s - group not wheel.", v21, v22, v23, v24, v25, p_buffer);
      goto LABEL_34;
    }

    if (!i)
    {
      result = 1;
      goto LABEL_37;
    }

    v27 = v45;
    if (i != &buffer)
    {
      *i = 47;
      v27 = (i + 1);
    }
  }

  v34 = __error();
  strerror(*v34);
  OSKextLog(0, 131073, "Failed to create directory %s - %s.", v35, v36, v37, v38, v39, p_buffer);
LABEL_34:
  result = 0;
  if (i && i != &buffer)
  {
    result = 0;
    *i = 47;
  }

LABEL_37:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _OSKextCreateFolderForCacheURL(CFURLRef url)
{
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E480], url);
  if (PathComponent)
  {
    v7 = PathComponent;
    v8 = __OSKextCheckURL(PathComponent, 1);
    CFRelease(v7);
    return v8;
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v2, v3, v4, v5, v6, v10);
    return 0;
  }
}

uint64_t __OSKextStatURL(CFURLRef url, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
  }

  memset(&v23, 0, sizeof(v23));
  result = __OSKextGetFileSystemPath(0, url, 1u, buffer, a5, a6, a7, a8);
  if (result)
  {
    if (!stat(buffer, &v23))
    {
      result = 1;
      if (!a3)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (*__error() == 2)
    {
      if (!a2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = __error();
      if (!a2 || *v11 != 20)
      {
LABEL_16:
        v17 = __error();
        strerror(*v17);
        OSKextLogCFString(0, 131073, @"Can't stat %s - %s.", v18, v19, v20, v21, v22, buffer);
        result = 0;
        if (!a3)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    result = 0;
    *a2 = 1;
  }

  if (a3)
  {
LABEL_14:
    v12 = *&v23.st_blksize;
    *(a3 + 96) = *&v23.st_size;
    *(a3 + 112) = v12;
    *(a3 + 128) = *v23.st_qspare;
    st_mtimespec = v23.st_mtimespec;
    *(a3 + 32) = v23.st_atimespec;
    *(a3 + 48) = st_mtimespec;
    st_birthtimespec = v23.st_birthtimespec;
    *(a3 + 64) = v23.st_ctimespec;
    *(a3 + 80) = st_birthtimespec;
    v15 = *&v23.st_uid;
    *a3 = *&v23.st_dev;
    *(a3 + 16) = v15;
  }

LABEL_15:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 __OSKextStatURLsOrURL(const void *a1, _BYTE *a2, uint64_t a3)
{
  v45 = 0;
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
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = CFGetTypeID(a1);
  if (v6 == CFURLGetTypeID())
  {
    __OSKextStatURL(a1, a2, &v27, v7, v8, v9, v10, v11);
    goto LABEL_19;
  }

  v13 = CFGetTypeID(a1);
  if (v13 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a1);
    if (Count < 1)
    {
      v15 = 0;
      if (!a2)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
      if (a2)
      {
        v17 = &v45;
      }

      else
      {
        v17 = 0;
      }

      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v16);
        if (__OSKextStatURL(ValueAtIndex, v17, &v36, v19, v20, v21, v22, v23))
        {
          ++v15;
          if (!v16 || v39 > v30)
          {
            v33 = v42;
            v34 = v43;
            v35 = v44;
            v29 = v38;
            v30 = v39;
            v31 = v40;
            v32 = v41;
            result.n128_u64[0] = v37.n128_u64[0];
            v27 = v36;
            v28 = v37;
          }
        }

        ++v16;
      }

      while (Count != v16);
      if (!a2)
      {
        goto LABEL_19;
      }
    }

    if (v15 < Count)
    {
      *a2 = 1;
    }
  }

LABEL_19:
  if (a3)
  {
    v24 = v34;
    *(a3 + 96) = v33;
    *(a3 + 112) = v24;
    *(a3 + 128) = v35;
    v25 = v30;
    *(a3 + 32) = v29;
    *(a3 + 48) = v25;
    v26 = v32;
    *(a3 + 64) = v31;
    *(a3 + 80) = v26;
    result = v28;
    *a3 = v27;
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t _OSKextWriteCache(const void *a1, uint64_t a2, const char **a3, int a4, const void *a5)
{
  v143 = *MEMORY[0x1E69E9840];
  bzero(&__from, 0x400uLL);
  bzero(&__to, 0x400uLL);
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  memset(v131, 0, sizeof(v131));
  v10 = CFGetTypeID(a1);
  if (v10 == CFURLGetTypeID())
  {
    v11 = CFURLCopyAbsoluteURL(a1);
    if (!v11)
    {
      OSKextLog(0, 17, "Memory allocation failure.", v12, v13, v14, v15, v16, p_from);
      v24 = 0;
      goto LABEL_25;
    }

    v17 = v11;
    v23 = _CFURLCopyAbsolutePath(a1);
    if (!v23)
    {
      OSKextLog(0, 17, "Memory allocation failure.", v18, v19, v20, v21, v22, p_from);
      v24 = 0;
      CacheFileURL = 0;
      v26 = 0;
      v27 = 0;
LABEL_16:
      CFRelease(v17);
      goto LABEL_17;
    }
  }

  else
  {
    v17 = 0;
    v23 = 0;
  }

  CacheFileURL = __OSKextCreateCacheFileURL(a1, a2, a3, a4);
  if (!CacheFileURL)
  {
    goto LABEL_14;
  }

  if (!__OSKextGetFileSystemPath(0, CacheFileURL, 1u, &__to, v28, v29, v30, v31))
  {
    v37 = "String/URL conversion failure.";
    goto LABEL_13;
  }

  OSKextLog(0, 393220, "Saving cache file %s.", v32, v33, v34, v35, v36, &__to);
  if (!_OSKextCreateFolderForCacheURL(CacheFileURL))
  {
LABEL_14:
    v27 = 0;
    v26 = 0;
    goto LABEL_15;
  }

  __strlcpy_chk();
  if (__strlcat_chk() >= 0x401)
  {
    p_from = &__from;
    v37 = "Temp cache file name too long: %s.";
LABEL_13:
    OSKextLog(0, 17, v37, v32, v33, v34, v35, v36, p_from);
    goto LABEL_14;
  }

  v40 = mkstemp(&__from);
  if (v40 == -1)
  {
    v55 = __error();
    strerror(*v55);
    OSKextLog(0, 131073, "Can't create %s - %s.", v56, v57, v58, v59, v60, &__from);
    goto LABEL_14;
  }

  v41 = v40;
  v42 = umask(0);
  umask(v42);
  if (fchmod(v41, ~v42 & 0x1A4) == -1)
  {
    v61 = __error();
    strerror(*v61);
    OSKextLog(0, 131073, "Failed to set permissions for %s - %s.", v62, v63, v64, v65, v66, &__from);
    v26 = 0;
LABEL_54:
    v27 = 0;
    goto LABEL_56;
  }

  if ((a4 - 1) > 1)
  {
    v27 = IOCFSerialize(a5, 0);
    v26 = 0;
    goto LABEL_37;
  }

  v43 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  v26 = v43;
  if (!v43)
  {
    OSKextLog(0, 262145, "Can't create CFWriteStream to save cache %s.", v44, v45, v46, v47, v48, &__to);
    goto LABEL_54;
  }

  if (a4 == 1)
  {
    v49 = kCFPropertyListBinaryFormat_v1_0;
  }

  else
  {
    v49 = kCFPropertyListXMLFormat_v1_0;
  }

  CFWriteStreamOpen(v43);
  CFPropertyListWriteToStream(a5, v26, v49, 0);
  CFWriteStreamClose(v26);
  v27 = CFWriteStreamCopyProperty(v26, *MEMORY[0x1E695E900]);
LABEL_37:
  if (!v27)
  {
    OSKextLog(0, 262145, "Failed to serialize data for cache %s.", v50, v51, v52, v53, v54, &__to);
LABEL_56:
    close(v41);
LABEL_57:
    p_to = &__from;
    goto LABEL_58;
  }

  BytePtr = CFDataGetBytePtr(v27);
  Length = CFDataGetLength(v27);
  if (!BytePtr)
  {
    OSKextLog(0, 17, "Unable to get data to create cache file %s.", v69, v70, v71, v72, v73, &__to);
    goto LABEL_56;
  }

  v74 = Length;
  *__error() = 0;
  v75 = gzdopen(v41, "w");
  if (!v75)
  {
    v94 = __error();
    strerror(*v94);
    OSKextLog(0, 131073, "Failed to open compression stream for %s - %s.", v95, v96, v97, v98, v99, &__to);
    goto LABEL_56;
  }

  v76 = v75;
  if (v74 >= 1)
  {
    v77 = 0;
    while (1)
    {
      *__error() = 0;
      v78 = gzwrite(v76, &BytePtr[v77], v74 - v77);
      if ((v78 & 0x80000000) != 0)
      {
        break;
      }

      v77 += v78;
      if (v77 >= v74)
      {
        goto LABEL_44;
      }
    }

    v106 = __error();
    strerror(*v106);
    OSKextLog(0, 131073, "Compressed write error for cache file %s - %s.", v107, v108, v109, v110, v111, &__to);
    p_to = &__from;
    if (gzclose(v76))
    {
      v112 = __error();
      strerror(*v112);
      OSKextLog(0, 131073, "Failed to close compression stream for %s - %s.", v113, v114, v115, v116, v117, &__from);
    }

    goto LABEL_58;
  }

LABEL_44:
  *__error() = 0;
  if (gzclose(v76))
  {
    v80 = __error();
    strerror(*v80);
    OSKextLog(0, 131073, "Failed to close compression stream for %s - %s.", v81, v82, v83, v84, v85, &__from);
  }

  rename(&__from, &__to, v79);
  if (v86 == -1)
  {
    v118 = __error();
    strerror(*v118);
    OSKextLog(0, 131073, "Can't rename temp cache file to %s - %s.", v119, v120, v121, v122, v123, &__to);
    goto LABEL_57;
  }

  __OSKextStatURLsOrURL(a1, 0, v131);
  if (!v87)
  {
    p_to = &__to;
LABEL_58:
    if (unlink(p_to) == -1)
    {
      v100 = __error();
      strerror(*v100);
      OSKextLog(0, 131073, "Failed to remove temp cache file %s - %s.", v101, v102, v103, v104, v105, p_to);
    }

    goto LABEL_15;
  }

  v138.tv_sec = v132 + 1;
  v138.tv_usec = 0;
  v139 = v132 + 1;
  v140 = 0;
  p_to = &__to;
  if (utimes(&__to, &v138) != -1)
  {
    OSKextLog(0, 393220, "Saved cache file %s.", v89, v90, v91, v92, v93, &__to);
    v24 = 1;
    if (!v17)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v124 = __error();
  strerror(*v124);
  OSKextLog(0, 131073, "Can't update mod time of cache file %s - %s.", v125, v126, v127, v128, v129, &__to);
  if (*__error() != 2)
  {
    goto LABEL_58;
  }

LABEL_15:
  v24 = 0;
  if (v17)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v23)
  {
    CFRelease(v23);
  }

  if (CacheFileURL)
  {
    CFRelease(CacheFileURL);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

LABEL_25:
  v38 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t __OSKextCacheNeedsUpdate(const __CFURL *a1, const void *a2)
{
  v38 = 0;
  v4 = _CFURLCopyAbsolutePath(a1);
  if (v4)
  {
    v10 = v4;
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
    memset(v22, 0, sizeof(v22));
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    if (__OSKextStatURL(a1, &v38, &v29, v5, v6, v7, v8, v9))
    {
      if ((SWORD2(v29) & 0x80000000) == 0)
      {
        OSKextLogCFString(0, 393220, @"Cache file %@ is not a regular file; ignoring.", v11, v12, v13, v14, v15, v10);
LABEL_9:
        v16 = 1;
LABEL_10:
        CFRelease(v10);
        return v16;
      }

      if (!__OSKextCheckURL(a1, 0))
      {
        goto LABEL_9;
      }

      if (v30)
      {
        v21 = v10;
        v17 = @"Cache file %@ - owner not root; not using.";
      }

      else if (DWORD1(v30))
      {
        v21 = v10;
        v17 = @"Cache file %@ - group not wheel; not using.";
      }

      else if ((WORD2(v29) & 0x1FF) == 0x1A4)
      {
        __OSKextStatURLsOrURL(a2, &v38, v22);
        if (v20)
        {
          if (v32 == v23 + 1)
          {
            v16 = 0;
            goto LABEL_10;
          }

          v21 = v10;
          v17 = @"Cache file %@ is out of date; not using.";
        }

        else
        {
          v21 = v10;
          v17 = @"Can't stat source folders for cache file %@.";
        }
      }

      else
      {
        v21 = v10;
        v17 = @"Cache file %@ - wrong permissions (%#o, should be %#o); not using.";
      }

      v18 = 393218;
    }

    else
    {
      if (!v38)
      {
        goto LABEL_9;
      }

      v21 = v10;
      v17 = @"Cache file %@ does not exist.";
      v18 = 393223;
    }

    OSKextLogCFString(0, v18, v17, v11, v12, v13, v14, v15, v21);
    goto LABEL_9;
  }

  return 1;
}

uint64_t _OSKextWriteIdentifierCacheForKextsInDirectory(const __CFArray *a1, const void *a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  bzero(__s, 0x400uLL);
  if (!(__sOSKextUsesCaches | a3))
  {
    goto LABEL_4;
  }

  if (geteuid())
  {
    OSKextLog(0, 262148, "Not running as root; skipping save of identifier->path cache.", v6, v7, v8, v9, v10, v39);
LABEL_4:
    v11 = 0;
    goto LABEL_5;
  }

  CacheFileURL = __OSKextCreateCacheFileURL(a2, @"KextIdentifiers", 0, 2);
  if (!CacheFileURL)
  {
    goto LABEL_4;
  }

  v15 = CacheFileURL;
  v16 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v18, v19, v20, v21, v22, v39);
    CFRelease(v15);
    goto LABEL_4;
  }

  v23 = Mutable;
  if (__OSKextGetFileSystemPath(0, a2, 1u, __s, v19, v20, v21, v22))
  {
    v24 = strlen(__s);
    v30 = CFStringCreateWithBytes(v16, __s, v24, 0x8000100u, 0);
    if (v30)
    {
      CFDictionarySetValue(v23, @"OSKextIdentifierCacheBasePath", v30);
      v31 = CFArrayCreateMutable(v16, 0, MEMORY[0x1E695E9C0]);
      if (v31)
      {
        v32 = v31;
        CFDictionarySetValue(v23, @"OSKextIdentifierCacheKextInfo", v31);
        valuePtr = 2;
        v33 = CFNumberCreate(v16, kCFNumberSInt32Type, &valuePtr);
        CFDictionarySetValue(v23, @"OSKextIdentifierCacheVersion", v33);
        Count = CFArrayGetCount(a1);
        if (Count < 1)
        {
          IdentifierCacheDict = 0;
        }

        else
        {
          v35 = Count;
          v36 = 0;
          IdentifierCacheDict = 0;
          do
          {
            if (IdentifierCacheDict)
            {
              CFRelease(IdentifierCacheDict);
            }

            ValueAtIndex = CFArrayGetValueAtIndex(a1, v36);
            IdentifierCacheDict = __OSKextCreateIdentifierCacheDict(ValueAtIndex, v30);
            if (IdentifierCacheDict)
            {
              CFArrayAppendValue(v32, IdentifierCacheDict);
            }

            ++v36;
          }

          while (v35 != v36);
        }

        v11 = _OSKextWriteCache(a2, @"KextIdentifiers", 0, 2, v23);
        goto LABEL_25;
      }
    }

    OSKextLog(0, 17, "Memory allocation failure.", v25, v26, v27, v28, v29, v39);
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v30 = 0;
  }

  v33 = 0;
  v32 = 0;
  IdentifierCacheDict = 0;
LABEL_25:
  CFRelease(v15);
  CFRelease(v23);
  if (v32)
  {
    CFRelease(v32);
  }

  if (IdentifierCacheDict)
  {
    CFRelease(IdentifierCacheDict);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v30)
  {
    CFRelease(v30);
  }

LABEL_5:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

const __CFURL *__OSKextCreateIdentifierCacheDict(uint64_t a1, const __CFString *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v6, v7, v8, v9, v10, v44);
    v18 = 0;
    goto LABEL_21;
  }

  v11 = Mutable;
  v12 = CFURLCopyAbsoluteURL(*(a1 + 16));
  v18 = v12;
  if (!v12)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v13, v14, v15, v16, v17, v44);
    v31 = v11;
LABEL_20:
    CFRelease(v31);
    goto LABEL_21;
  }

  v19 = CFURLCopyFileSystemPath(v12, kCFURLPOSIXPathStyle);
  v25 = v19;
  if (!v19)
  {
    goto LABEL_6;
  }

  if (CFStringHasPrefix(v19, a2))
  {
    Length = CFStringGetLength(v25);
    v27 = CFStringGetLength(a2) + 1;
    v28 = CFGetAllocator(a1);
    v48.length = Length - v27;
    v48.location = v27;
    v29 = CFStringCreateWithSubstring(v28, v25, v48);
    v30 = v29;
    if (!v29)
    {
LABEL_6:
      OSKextLog(0, 17, "Memory allocation failure.", v20, v21, v22, v23, v24, v44);
      v29 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    CFStringGetCString(v25, buffer, 1024, 0x8000100u);
    CFStringGetCString(a2, v45, 1024, 0x8000100u);
    OSKextLog(a1, 262150, "%s not in base path %s for identifier->path cache - marking.", v32, v33, v34, v35, v36, buffer);
    CFDictionarySetValue(v11, @"OSBundleUsesAbsolutePath", *MEMORY[0x1E695E4D0]);
    v29 = 0;
    v30 = v25;
  }

  CFDictionarySetValue(v11, @"OSBundlePath", v30);
  v37 = *(a1 + 24);
  if (!v37 || (CFDictionarySetValue(v11, *MEMORY[0x1E695E4F0], v37), v38 = *MEMORY[0x1E695E500], (ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(a1, *MEMORY[0x1E695E500])) == 0) || (CFDictionarySetValue(v11, v38, ValueForInfoDictionaryKey), v40 = *MEMORY[0x1E695E138], (v41 = OSKextGetValueForInfoDictionaryKey(a1, *MEMORY[0x1E695E138])) == 0))
  {
LABEL_16:
    CFRelease(v11);
    CFRelease(v18);
    v11 = 0;
    v18 = 0;
    if (!v25)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  CFDictionarySetValue(v11, v40, v41);
  if ((*(a1 + 92) & 0x10) != 0)
  {
    CFDictionarySetValue(v11, @"OSBundleEnableKextLogging", *MEMORY[0x1E695E4D0]);
  }

  CFRelease(v18);
LABEL_17:
  CFRelease(v25);
  v18 = v11;
LABEL_18:
  if (v29)
  {
    v31 = v29;
    goto LABEL_20;
  }

LABEL_21:
  v42 = *MEMORY[0x1E69E9840];
  return v18;
}

CFTypeRef OSKextCreateWithIdentifier(const __CFAllocator *a1, void *a2)
{
  values = a2;
  v3 = *MEMORY[0x1E695E480];
  v4 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  if (!v4)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v6, v7, v8, v9, v10, v42);
    return 0;
  }

  v11 = v4;
  v12 = OSKextCopyLoadedKextInfo(v4, __sOSKextInfoEssentialKeys, v5, v6, v7, v8, v9, v10);
  v13 = v12;
  if (!v12 || (v14 = CFGetTypeID(v12), v14 != CFDictionaryGetTypeID()))
  {
    v16 = 0;
LABEL_16:
    v36 = 0;
    v19 = 0;
    UTF8CStringForCFString = 0;
    v24 = -1;
    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(v13, values);
  v16 = Value;
  if (!Value)
  {
    goto LABEL_16;
  }

  v17 = CFGetTypeID(Value);
  if (v17 != CFDictionaryGetTypeID())
  {
    goto LABEL_16;
  }

  v18 = CFDictionaryGetValue(v16, @"OSBundlePath");
  if (!v18 || (v19 = v18, v20 = CFGetTypeID(v18), v20 != CFStringGetTypeID()))
  {
    v19 = 0;
  }

  v21 = CFDictionaryGetValue(v16, *MEMORY[0x1E695E500]);
  if (!v21 || (v22 = v21, v23 = CFGetTypeID(v21), v23 != CFStringGetTypeID()))
  {
    v22 = 0;
  }

  v24 = OSKextParseVersionCFString(v22);
  if (v19)
  {
    UTF8CStringForCFString = createUTF8CStringForCFString(v19);
    OSKextLog(0, 262151, "Creating kext with path %s.", v26, v27, v28, v29, v30, UTF8CStringForCFString);
    v36 = CFURLCreateWithFileSystemPath(v3, v19, kCFURLPOSIXPathStyle, 1u);
    if (!v36)
    {
      OSKextLog(0, 17, "Memory allocation failure.", v31, v32, v33, v34, v35, v43);
      v40 = 0;
      v19 = 0;
      KextsFromURLs = 0;
      if (!UTF8CStringForCFString)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v19 = OSKextCreate(a1, v36);
  }

  else
  {
    v36 = 0;
    UTF8CStringForCFString = 0;
  }

LABEL_17:
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  KextsFromURLs = OSKextCreateKextsFromURLs(a1, __sOSKextSystemExtensionsFolderURLs);
  if (v24 != -1 && (KextWithIdentifierAndVersion = OSKextGetKextWithIdentifierAndVersion(values, v24)) != 0 || (KextWithIdentifierAndVersion = OSKextGetKextWithIdentifier(values)) != 0)
  {
    v39 = CFRetain(KextWithIdentifierAndVersion);
    v40 = v39;
    if (v16 && v39)
    {
      __OSKextProcessLoadInfo(v39, v16);
      if (!UTF8CStringForCFString)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v40 = 0;
  }

  if (UTF8CStringForCFString)
  {
LABEL_27:
    free(UTF8CStringForCFString);
  }

LABEL_28:
  CFRelease(v11);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (KextsFromURLs)
  {
    CFRelease(KextsFromURLs);
  }

  return v40;
}

void *OSKextGetKextWithIdentifierAndVersion(void *a1, uint64_t a2)
{
  if (!__sOSKextsByIdentifier)
  {
    return 0;
  }

  __OSKextRealizeKextsWithIdentifier(a1);
  result = CFDictionaryGetValue(__sOSKextsByIdentifier, a1);
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = __kOSKextTypeID;
  if (v6 == CFGetTypeID(result))
  {
    if (v5[5] == a2)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(v5))
  {
    return 0;
  }

  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  for (i = 0; i != v9; ++i)
  {
    result = CFArrayGetValueAtIndex(v5, i);
    if (result[5] == a2)
    {
      break;
    }

    result = 0;
  }

  return result;
}

void __OSKextProcessLoadInfo(int a1, CFDictionaryRef theDict)
{
  v37 = *MEMORY[0x1E69E9840];
  v33 = *"(unknown)";
  v34 = 0;
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E4F0]);
  v4 = Value;
  if (!Value)
  {
    ValueAtIndex = 0;
    v5 = 0;
LABEL_17:
    UTF8CStringForCFString = 0;
    goto LABEL_20;
  }

  v5 = OSKextCopyKextsWithIdentifier(Value);
  if (!v5)
  {
    ValueAtIndex = 0;
    goto LABEL_17;
  }

  UTF8CStringForCFString = createUTF8CStringForCFString(v4);
  v7 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E500]);
  if (!v7)
  {
    OSKextLog(0, 97, "Kernel load info for %s lacks a CFBundleVersion.", v8, v9, v10, v11, v12, UTF8CStringForCFString);
    goto LABEL_19;
  }

  v13 = OSKextParseVersionCFString(v7);
  OSKextVersionGetString(v13, &v33, 0x14u);
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
LABEL_19:
    ValueAtIndex = 0;
    goto LABEL_20;
  }

  v15 = Count;
  v16 = 0;
  v17 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v16);
    if (!__OSKextCreateLoadInfo(ValueAtIndex))
    {
      break;
    }

    __OSKextGetFileSystemPath(ValueAtIndex, 0, 0, buffer, v20, v21, v22, v23);
    OSKextVersionGetString(ValueAtIndex[5], v35, 0x14u);
    v24 = ValueAtIndex[9];
    if (v13 == ValueAtIndex[5])
    {
      v25 = *(v24 + 8);
      if (v25)
      {
        CFRelease(v25);
        v24 = ValueAtIndex[9];
      }

      *(v24 + 8) = 0;
      *(ValueAtIndex[9] + 8) = CFRetain(theDict);
      v17 = 1;
    }

    else
    {
      *(v24 + 168) |= 0x200u;
    }

    if (v15 == ++v16)
    {
      if (v17)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  OSKextLog(0, 17, "Memory allocation failure.", v19, v20, v21, v22, v23, v32);
  if (v17)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (!CFEqual(v4, @"__kernel__"))
  {
    OSKextLog(ValueAtIndex, 102, "For loaded kext %s, v%s: no opened kext matches.", v26, v27, v28, v29, v30, UTF8CStringForCFString);
  }

LABEL_22:
  if (UTF8CStringForCFString)
  {
    free(UTF8CStringForCFString);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t OSKextGetAllKexts()
{
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  v0 = __sOSAllKexts;
  if (!__sOSAllKexts)
  {
    return 0;
  }

  v2.length = CFArrayGetCount(__sOSAllKexts);
  v2.location = 0;
  CFArrayApplyFunction(v0, v2, __OSKextRealize, 0);
  return __sOSAllKexts;
}

unint64_t *OSKextGetLoadedKextWithIdentifier(void *a1)
{
  __OSKextRealizeKextsWithIdentifier(a1);
  Value = CFDictionaryGetValue(__sOSKextsByIdentifier, a1);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = __kOSKextTypeID;
  if (v4 == CFGetTypeID(Value))
  {
    if (OSKextIsLoaded(v3, v5, v6, v7, v8, v9, v10, v11))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(v3))
  {
    return 0;
  }

  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    return 0;
  }

  v15 = Count;
  v16 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v16);
    if (OSKextIsLoaded(ValueAtIndex, v17, v18, v19, v20, v21, v22, v23))
    {
      break;
    }

    if (v15 == ++v16)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t OSKextIsLoaded(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[9];
  if (!v8)
  {
    return 0;
  }

  if (*(v8 + 8))
  {
    __OSKextCheckLoaded(a1, a2, a3, a4, a5, a6, a7, a8);
    v8 = a1[9];
  }

  return (*(v8 + 168) >> 7) & 1;
}

const __CFArray *OSKextGetCompatibleKextWithIdentifier(void *a1, uint64_t a2)
{
  if (!__sOSKextsByIdentifier)
  {
    return 0;
  }

  __OSKextRealizeKextsWithIdentifier(a1);
  Value = CFDictionaryGetValue(__sOSKextsByIdentifier, a1);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = __kOSKextTypeID;
  if (v6 != CFGetTypeID(Value))
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        v19 = Count;
        v20 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, v20);
          v22 = ValueAtIndex[6];
          if (v22 >= 1 && v22 <= a2)
          {
            v16 = ValueAtIndex;
            if (ValueAtIndex[5] >= a2)
            {
              if (!__sOSKextStrictAuthentication || OSKextIsValid(ValueAtIndex) && OSKextIsAuthentic(v16, v24, v25, v26, v27, v28, v29, v30))
              {
                return v16;
              }

              v32 = *(v16 + 16);
              OSKextLogCFString(0, 4097, @"Rejecting invalid/inauthentic kext for bundle id %@ at location %@.", v26, v27, v28, v29, v30, a1);
            }
          }

          if (v19 == ++v20)
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  v7 = *(v5 + 6);
  v8 = v7 >= 1 && v7 <= a2;
  if (!v8 || *(v5 + 5) < a2)
  {
    return 0;
  }

  if (__sOSKextStrictAuthentication && (!OSKextIsValid(v5) || !OSKextIsAuthentic(v5, v9, v10, v11, v12, v13, v14, v15)))
  {
    v33 = *(v5 + 2);
    OSKextLogCFString(0, 4097, @"Rejecting invalid/inauthentic kext for bundle id %@ at location %@.", v11, v12, v13, v14, v15, a1);
    return 0;
  }

  return v5;
}

uint64_t OSKextIsValid(uint64_t a1)
{
  v1 = *(a1 + 92);
  if ((v1 & 0x400) != 0)
  {
    return 0;
  }

  if ((v1 & 0x200) == 0)
  {
    OSKextValidate(a1);
    v1 = *(a1 + 92);
  }

  return (v1 >> 11) & 1;
}

uint64_t OSKextIsAuthentic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 92);
  if ((v8 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v8 & 0x1000) == 0)
  {
    OSKextAuthenticate(a1, a2, a3, a4, a5, a6, a7, a8);
    v8 = *(a1 + 92);
  }

  return (v8 >> 14) & 1;
}

CFArrayRef OSKextCopyKextsWithIdentifier(void *a1)
{
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  __OSKextRealizeKextsWithIdentifier(a1);
  if (!__sOSKextsByIdentifier)
  {
    return CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  Value = CFDictionaryGetValue(__sOSKextsByIdentifier, a1);
  if (!Value)
  {
    return CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  v3 = Value;
  v4 = __kOSKextTypeID;
  if (v4 == CFGetTypeID(Value))
  {
    values = v3;
    result = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    if (result)
    {
      return result;
    }

    return CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(v3))
  {
    return CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  result = CFArrayCreateCopy(*MEMORY[0x1E695E480], v3);
  if (!result)
  {
    return CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  return result;
}

__CFArray *OSKextCopyAllRequestedIdentifiers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  OSKextLog(0, 71, "Reading list of all kexts requested by kernel since startup.", a4, a5, a6, a7, a8, v35);
  KextRequest = __OSKextCreateKextRequest(@"Get All Load Requests", 0, 0);
  v9 = __OSKextSendKextRequest(0, KextRequest, &cf, 0, 0);
  if (v9)
  {
    v10 = mach_error_string(v9);
    v16 = "(unknown)";
    if (v10)
    {
      LOBYTE(v16) = v10;
    }

    OSKextLog(0, 65, "Failed to read kexts requested by kernel since startup - %s.", v11, v12, v13, v14, v15, v16);
    goto LABEL_5;
  }

  if (!cf || (TypeID = CFSetGetTypeID(), TypeID != CFGetTypeID(cf)))
  {
LABEL_5:
    Mutable = 0;
    v18 = 0;
    goto LABEL_6;
  }

  Count = CFSetGetCount(cf);
  v18 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  if (v18)
  {
    CFSetGetValues(cf, v18);
    v27 = *MEMORY[0x1E695E480];
    v28 = CFSetGetCount(cf);
    Mutable = CFArrayCreateMutable(v27, v28, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      if (CFSetGetCount(cf) >= 1)
      {
        v34 = 0;
        do
        {
          CFArrayAppendValue(Mutable, v18[v34++]);
        }

        while (CFSetGetCount(cf) > v34);
      }

      v38.length = CFArrayGetCount(Mutable);
      v38.location = 0;
      CFArraySortValues(Mutable, v38, __OSKextBundleIDCompare, 0);
    }

    else
    {
      OSKextLog(0, 17, "Memory allocation failure.", v29, v30, v31, v32, v33, v36);
    }
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v22, v23, v24, v25, v26, v36);
    Mutable = 0;
  }

LABEL_6:
  if (KextRequest)
  {
    CFRelease(KextRequest);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    free(v18);
  }

  return Mutable;
}

__CFArray *OSKextCopyKextsWithIdentifiers(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (Count >= 1)
    {
      v9 = 0;
      UTF8CStringForCFString = 0;
      v11 = 0;
      do
      {
        if (v11)
        {
          CFRelease(v11);
        }

        if (UTF8CStringForCFString)
        {
          free(UTF8CStringForCFString);
        }

        ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
        v13 = OSKextCopyKextsWithIdentifier(ValueAtIndex);
        v11 = v13;
        if (v13)
        {
          v21.length = CFArrayGetCount(v13);
          v21.location = 0;
          CFArrayAppendArray(Mutable, v11, v21);
          UTF8CStringForCFString = 0;
        }

        else
        {
          UTF8CStringForCFString = createUTF8CStringForCFString(ValueAtIndex);
          OSKextLog(0, 262151, "Note: OSKextCopyKextsWithIdentifiers() - identifier %s not found.", v14, v15, v16, v17, v18, UTF8CStringForCFString);
        }

        ++v9;
      }

      while ((Count & 0x7FFFFFFF) != v9);
      if (v11)
      {
        CFRelease(v11);
      }

      if (UTF8CStringForCFString)
      {
        free(UTF8CStringForCFString);
      }
    }
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v3, v4, v5, v6, v7, v20);
  }

  return Mutable;
}

CFMutableArrayRef OSKextCopyLoadListForKexts(const __CFArray *a1, int a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v6, v7, v8, v9, v10, v48);
LABEL_25:
    v17 = 0;
    goto LABEL_31;
  }

  v11 = Mutable;
  v17 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (!v17)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v12, v13, v14, v15, v16, v48);
    goto LABEL_27;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_27:
    v45 = v11;
    goto LABEL_30;
  }

  v19 = Count;
  v20 = 0;
  v21 = 0;
  if (a2)
  {
    v22 = 145;
  }

  else
  {
    v22 = 146;
  }

  v49 = v22;
  do
  {
    if (v21)
    {
      CFRelease(v21);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a1, v20);
    if (CFSetGetValue(v11, ValueAtIndex))
    {
      goto LABEL_11;
    }

    if (!__OSKextIsValid(ValueAtIndex, v24, v25, v26, v27, v28, v29, v30))
    {
      __OSKextGetFileSystemPath(ValueAtIndex, 0, 0, buffer, v31, v32, v33, v34);
      OSKextLog(ValueAtIndex, v49, "%s is not valid.", v40, v41, v42, v43, v44, buffer);
      if (a2)
      {
LABEL_23:
        CFRelease(v11);
        CFRelease(v17);
        goto LABEL_25;
      }

LABEL_11:
      v21 = 0;
      goto LABEL_12;
    }

    v35 = __OSKextCopyDependenciesList(ValueAtIndex, a2, 0);
    if (!v35)
    {
      goto LABEL_23;
    }

    v21 = v35;
    v36 = CFArrayGetCount(v35);
    if (v36 >= 1)
    {
      v37 = v36;
      for (i = 0; i != v37; ++i)
      {
        v39 = CFArrayGetValueAtIndex(v21, i);
        if (!CFSetGetValue(v11, v39))
        {
          CFArrayAppendValue(v17, v39);
          CFSetSetValue(v11, v39);
        }
      }
    }

LABEL_12:
    ++v20;
  }

  while (v20 != v19);
  CFRelease(v11);
  if (v21)
  {
    v45 = v21;
LABEL_30:
    CFRelease(v45);
  }

LABEL_31:
  v46 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t __OSKextIsValid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 92);
  if ((v8 & 0x400) != 0)
  {
    return 0;
  }

  if ((v8 & 0x200) == 0)
  {
    __OSKextValidate(a1, 0, a3, a4, a5, a6, a7, a8);
    v8 = *(a1 + 92);
  }

  return (v8 >> 11) & 1;
}

uint64_t __OSKextReadInfoDictionary(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  memset(&v66, 0, sizeof(v66));
  cf = 0;
  memcpy(__dst, "(unknown)", sizeof(__dst));
  __OSKextGetFileSystemPath(a1, 0, 0, buffer, v4, v5, v6, v7);
  if (*(a1 + 56))
  {
    UTF8CStringForCFString = 0;
    v14 = 0;
    v15 = 1;
LABEL_7:
    v22 = -1;
    goto LABEL_8;
  }

  if ((*(a1 + 88) & 8) != 0)
  {
    __OSKextGetFileSystemPath(0, **(a1 + 80), 0, __dst, v9, v10, v11, v12);
    OSKextLog(a1, 129, "%s created from m%s is missing its info dictionary.", v17, v18, v19, v20, v21, buffer);
    UTF8CStringForCFString = 0;
    v15 = 0;
    v14 = 1;
    goto LABEL_7;
  }

  if (a2)
  {
    v16 = 0;
  }

  else
  {
    OSKextLog(a1, 131079, "Opening CFBundle for %s.", v8, v9, v10, v11, v12, buffer);
    v16 = CFBundleCreate(*MEMORY[0x1E695E480], *(a1 + 16));
    if (!v16)
    {
      OSKextLog(0, 131073, "Can't open CFBundle for %s.", v25, v26, v27, v28, v29, buffer);
      v14 = 1;
      __OSKextSetDiagnostic(a1, 1, @"Failed to open CFBundle (unknown error).");
      UTF8CStringForCFString = 0;
      v15 = 0;
      goto LABEL_7;
    }
  }

  v35 = _CFBundleCopyInfoPlistURL();
  if (v35)
  {
    if (__OSKextGetFileSystemPath(0, v35, 1u, v67, v31, v32, v33, v34))
    {
      if (!stat(v67, &v66))
      {
        v22 = open(v67, 0);
        if (v22 < 0)
        {
          v14 = 1;
          __OSKextAddDiagnostic(a1, 1, @"File access failure; can't open, or I/O error", v35, 0, v45, v46, v47, v64);
          v15 = 0;
          v53 = 0;
        }

        else
        {
          v53 = malloc_type_malloc(v66.st_size + 1, 0x100004077774924uLL);
          if (!v53)
          {
            OSKextLog(0, 17, "Memory allocation failure.", v48, v49, v50, v51, v52, v64);
            v15 = 0;
            UTF8CStringForCFString = 0;
            v14 = 1;
            goto LABEL_36;
          }

          st_size = v66.st_size;
          if (v66.st_size < 1)
          {
            v55 = 0;
LABEL_45:
            v53[v55] = 0;
            v57 = IOCFUnserialize(v53, *MEMORY[0x1E695E480], 0, &cf);
            *(a1 + 56) = v57;
            if (v57 && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(*(a1 + 56))))
            {
              v14 = 0;
              UTF8CStringForCFString = 0;
              v15 = 1;
            }

            else
            {
              __OSKextAddDiagnostic(a1, 1, @"Can't parse info dictionary XML", cf, 0, v42, v43, v44, v64);
              if (cf)
              {
                UTF8CStringForCFString = createUTF8CStringForCFString(cf);
              }

              else
              {
                UTF8CStringForCFString = 0;
              }

              v14 = 1;
              OSKextLog(a1, 1, "Can't read info dictionary for %s: %s.", v59, v60, v61, v62, v63, buffer);
              v15 = 0;
            }

            goto LABEL_36;
          }

          v55 = 0;
          while (1)
          {
            v56 = read(v22, &v53[v55], st_size - v55);
            if (v56 < 0)
            {
              break;
            }

            v55 += v56;
            st_size = v66.st_size;
            if (v55 >= v66.st_size)
            {
              goto LABEL_45;
            }
          }

          v14 = 1;
          __OSKextSetDiagnostic(a1, 1, @"File access failure; can't open, or I/O error");
          v15 = 0;
        }

        UTF8CStringForCFString = 0;
        goto LABEL_36;
      }

      if (*__error() == 2)
      {
        v39 = @"File not found";
      }

      else
      {
        v39 = @"Failed to get file info (stat failed)";
      }
    }

    else
    {
      v39 = @"Internal error converting URL";
    }

    v14 = 1;
    __OSKextAddDiagnostic(a1, 1, v39, v35, 0, v36, v37, v38, v64);
  }

  else
  {
    OSKextLog(0, 131073, "%s has no Info.plist file.", v30, v31, v32, v33, v34, buffer);
    v14 = 1;
    __OSKextSetDiagnostic(a1, 1, @"Failed to open CFBundle (unknown error).");
  }

  v15 = 0;
  v53 = 0;
  UTF8CStringForCFString = 0;
  v22 = -1;
LABEL_36:
  if (v16)
  {
    OSKextLog(a1, 131079, "Releasing CFBundle for %s.", v40, v41, v42, v43, v44, buffer);
    CFRelease(v16);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v53)
  {
    free(v53);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (UTF8CStringForCFString)
  {
    free(UTF8CStringForCFString);
  }

  if ((v22 & 0x80000000) == 0)
  {
    close(v22);
  }

  if (v14)
  {
    *(a1 + 92) = *(a1 + 92) & 0xFFFFF3FF | 0x400;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v15;
}