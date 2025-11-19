uint64_t getMonotonicTime()
{
  if (!dword_1ED446A34)
  {
    mach_timebase_info(&getMonotonicTime_timebaseInfo);
  }

  return mach_absolute_time() * getMonotonicTime_timebaseInfo / (1000000 * dword_1ED446A34);
}

_DWORD *__IOHIDEventSystemClientCreateWithType_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  v2 = __IOHIDEventSystemClientStateSerialize(*(a1 + 32));
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], v2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    v5 = Data;
    Length = CFDataGetLength(Data);
    v7 = malloc_type_calloc(1uLL, Length + 200, 0x1000040BEF03554uLL);
    if (v7)
    {
      __strlcpy_chk();
      *v7 = 1;
      v7[1] = Length;
      v8 = OUTLINED_FUNCTION_8_1();
      v11.length = Length;
      CFDataGetBytes(v8, v11, v9);
    }

    CFRelease(v3);
  }

  else
  {
    v7 = 0;
    v5 = v3;
  }

  CFRelease(v5);
  return v7;
}

CFMutableDictionaryRef __IOHIDManagerCreate_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  context[11] = v2;
  context[12] = v3;
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E695E480];
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v7 = result;
    os_unfair_recursive_lock_lock_with_options();
    v8 = *MEMORY[0x1E695E4D0];
    v9 = *MEMORY[0x1E695E4C0];
    if (*(v4 + 96))
    {
      v10 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v10 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(v7, @"DispatchQueue", v10);
    if (*(v4 + 80))
    {
      v11 = v8;
    }

    else
    {
      v11 = v9;
    }

    CFDictionarySetValue(v7, @"RunLoop", v11);
    _IOHIDDictionaryAddSInt32(v7, @"openOptions", *(v4 + 148));
    _IOHIDDictionaryAddSInt32(v7, @"createOptions", *(v4 + 152));
    if (*(v4 + 144))
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    CFDictionarySetValue(v7, @"isOpen", v12);
    v13 = *(v4 + 32);
    if (v13)
    {
      v14 = CFGetAllocator(v13);
      Copy = CFSetCreateCopy(v14, *(v4 + 32));
      if (Copy)
      {
        v16 = Copy;
        Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v18 = Mutable;
          context[0] = MEMORY[0x1E69E9820];
          context[1] = 0x40000000;
          context[2] = ____IOHIDManagerSerializeState_block_invoke;
          context[3] = &__block_descriptor_tmp_40;
          context[4] = Mutable;
          _IOHIDCFSetApplyBlock(v16, context);
          CFDictionarySetValue(v7, @"devices", v18);
          CFRelease(v18);
        }

        CFRelease(v16);
      }
    }

    os_unfair_recursive_lock_unlock();
    Data = CFPropertyListCreateData(v5, v7, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      __IOHIDManagerCreate_block_invoke_cold_1(Data, v7, context);
      return context[0];
    }

    else
    {
      CFRelease(v7);
      return 0;
    }
  }

  return result;
}

void __IOHIDManagerCreate_block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_2_3();
  Length = CFDataGetLength(v6);
  v8 = malloc_type_calloc(1uLL, Length + 200, 0x1000040BEF03554uLL);
  *a3 = v8;
  if (v8)
  {
    v9 = v8;
    __strlcpy_chk();
    *v9 = 1;
    *(v9 + 1) = Length;
    v10.location = 0;
    v10.length = Length;
    CFDataGetBytes(v3, v10, v9 + 200);
  }

  CFRelease(v4);
  CFRelease(v3);
}

uint64_t _IOHIDServiceReleasePrivate(uint64_t a1)
{
  v2 = *(a1 + 336);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 336) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    (*(*v4 + 24))(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(*v5 + 24))(v5);
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    IODestroyPlugInInterface(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 480);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 8) = 0;
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 104) = 0;
  }

  v10 = *(a1 + 112);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 112) = 0;
  }

  v11 = *(a1 + 120);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 120) = 0;
  }

  v12 = *(a1 + 96);
  if (v12)
  {
    IOObjectRelease(v12);
    *(a1 + 96) = 0;
  }

  v13 = *(a1 + 88);
  if (v13)
  {
    IONotificationPortDestroy(v13);
    *(a1 + 88) = 0;
  }

  v14 = *(a1 + 240);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 240) = 0;
  }

  v15 = *(a1 + 248);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 248) = 0;
  }

  v16 = *(a1 + 256);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 256) = 0;
  }

  v17 = *(a1 + 312);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 312) = 0;
  }

  v18 = *(a1 + 264);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 264) = 0;
  }

  v19 = *(a1 + 408);
  if (v19)
  {
    CFRelease(v19);
  }

  for (i = 0; i != 24; i += 8)
  {
    v21 = *(a1 + 368);
    if (v21)
    {
      v22 = *(v21 + i);
      if (v22)
      {
        CFRelease(v22);
        *(*(a1 + 368) + i) = 0;
      }
    }
  }

  v23 = *(a1 + 368);
  if (v23)
  {
    free(v23);
  }

  v24 = *(a1 + 416);
  if (v24)
  {
    free(v24);
  }

  v25 = *(a1 + 80);
  if (v25)
  {
    hid_dispatch_queue_release(v25);
    *(a1 + 80) = 0;
  }

  v26 = *(a1 + 360);
  if (v26)
  {
    free(v26);
  }

  v27 = *(a1 + 424);
  if (v27)
  {
    _Block_release(v27);
  }

  v28 = *(a1 + 432);
  if (v28)
  {
    _Block_release(v28);
  }

  v29 = *(a1 + 448);
  if (v29)
  {
    dispatch_release(v29);
  }

  if (*(a1 + 464))
  {
    IOHIDAnalyticsEventCancel();
    CFRelease(*(a1 + 464));
  }

  if (*(a1 + 472))
  {
    IOHIDAnalyticsEventCancel();
    CFRelease(*(a1 + 472));
  }

  v30 = *(a1 + 56);
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = *(a1 + 64);
  if (v31)
  {
    CFRelease(v31);
  }

  result = *(a1 + 16);
  if (result)
  {

    return IOObjectRelease(result);
  }

  return result;
}

void _IOHIDEventSystemConnectionReleasePrivate(uint64_t a1)
{
  previous = 0;
  v2 = *(a1 + 280);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 96) = 0;
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 424);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(a1 + 24);
  v9 = MEMORY[0x1E69E9A60];
  if (v8)
  {
    NotificationPort = IOHIDEventQueueGetNotificationPort(v8);
    v11 = mach_port_request_notification(*v9, NotificationPort, 66, 1u, 0, 0x15u, &previous);
    if (v11 && (v12 = v11, v13 = _IOHIDLogCategory(9u), v14 = v13, os_log_type_enabled(v13, OS_LOG_TYPE_ERROR)))
    {
      _IOHIDEventSystemConnectionReleasePrivate_cold_1(a1, v12, v14, v15, v16, v17, v18, v19);
      if (NotificationPort)
      {
        goto LABEL_17;
      }
    }

    else if (NotificationPort)
    {
LABEL_17:
      v20 = mach_port_deallocate(*v9, NotificationPort);
      if (v20)
      {
        v21 = v20;
        v22 = _IOHIDLogCategory(9u);
        v23 = v22;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          _IOHIDEventSystemConnectionReleasePrivate_cold_2(a1, v21, v23, v24, v25, v26, v27, v28);
        }
      }
    }

    CFRelease(*(a1 + 24));
  }

  v29 = *(a1 + 104);
  if (v29)
  {
    v30 = mach_port_mod_refs(*v9, v29, 1u, -1);
    *(a1 + 104) = 0;
    if (v30)
    {
      v31 = v30;
      v32 = _IOHIDLogCategory(9u);
      v33 = v32;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        _IOHIDEventSystemConnectionReleasePrivate_cold_3(a1, v31, v33, v34, v35, v36, v37, v38);
      }
    }
  }

  if (previous)
  {
    v39 = mach_port_deallocate(*v9, previous);
    if (v39)
    {
      v40 = v39;
      v41 = _IOHIDLogCategory(9u);
      v42 = v41;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        _IOHIDEventSystemConnectionReleasePrivate_cold_4(a1, v40, v42, v43, v44, v45, v46, v47);
      }
    }
  }

  v48 = *(a1 + 40);
  if (v48)
  {
    v49 = mach_port_deallocate(*v9, v48);
    *(a1 + 40) = 0;
    if (v49)
    {
      v50 = v49;
      v51 = _IOHIDLogCategory(9u);
      v52 = v51;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        _IOHIDEventSystemConnectionReleasePrivate_cold_5(a1, v50, v52, v53, v54, v55, v56, v57);
      }
    }
  }

  v58 = *(a1 + 136);
  if (v58)
  {
    CFRelease(v58);
  }

  v59 = *(a1 + 184);
  if (v59)
  {
    CFRelease(v59);
  }

  v60 = *(a1 + 144);
  if (v60)
  {
    CFRelease(v60);
  }

  v61 = *(a1 + 152);
  if (v61)
  {
    CFRelease(v61);
  }

  v62 = *(a1 + 160);
  if (v62)
  {
    CFRelease(v62);
  }

  v63 = *(a1 + 192);
  if (v63)
  {
    mach_port_deallocate(*v9, v63);
  }

  v64 = *(a1 + 392);
  if (v64)
  {
    CFRelease(v64);
  }

  v65 = *(a1 + 432);
  if (v65)
  {
    CFRelease(v65);
  }

  v66 = *(a1 + 440);
  if (v66)
  {
    CFRelease(v66);
  }

  v67 = *(a1 + 448);
  if (v67)
  {
    CFRelease(v67);
  }

  v68 = *(a1 + 400);
  if (v68)
  {
    free(v68);
  }

  v69 = *(a1 + 240);
  if (v69)
  {
    free(v69);
  }

  v70 = *(a1 + 248);
  if (v70)
  {
    xpc_release(v70);
  }

  v71 = *(a1 + 8);
  if (v71)
  {
    CFRelease(v71);
  }
}

uint64_t IOHIDAnalyticsEventCancel()
{
  if (cancelEventFuncPtr)
  {
    return cancelEventFuncPtr();
  }

  return result;
}

CFMutableDictionaryRef IOBSDNameMatching(mach_port_t mainPort, uint32_t options, const char *bsdName)
{
  if (bsdName)
  {
    return MakeOneStringProp(@"BSD Name", bsdName);
  }

  else
  {
    return 0;
  }
}

void __hid_dispatch_queue_context_destructor(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v2(a1[2]);
    }

    free(a1);
  }
}

void __IOHIDServiceQueueContextDestructor(uint64_t a1)
{
  if (a1)
  {
    pthread_mutex_destroy((a1 + 8));

    free(a1);
  }
}

BOOL _IOObjectConformsTo(unsigned int a1, const char *a2, char a3)
{
  v13 = 0;
  if (io_object_conforms_to(a1, a2))
  {
    v13 = 0;
    if (a3)
    {
      return v13;
    }
  }

  else if (a3)
  {
    return v13;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = IORegistryEntrySearchCFProperty(a1, 0, @"IOClassNameOverride", *MEMORY[0x1E695E480], 0);
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 == CFStringGetTypeID())
    {
      v10 = CFStringCreateWithCStringNoCopy(v6, a2, 0x8000100u, *MEMORY[0x1E695E498]);
      if (v10)
      {
        v11 = v10;
        v13 = CFStringCompare(v8, v10, 0) == kCFCompareEqualTo;
        CFRelease(v11);
      }
    }

    CFRelease(v8);
  }

  return v13;
}

uint64_t io_object_conforms_to(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
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
  *&v9 = 0xAF100000000;
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

kern_return_t IOServiceAddInterestNotification(IONotificationPortRef notifyPort, io_service_t service, const io_name_t interestType, IOServiceInterestCallback callback, void *refCon, io_object_t *notification)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = callback;
  v8[2] = refCon;
  v8[3] = service;
  result = io_service_add_interest_notification(service, interestType, *(notifyPort + 1), v8, 4u, notification);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

kern_return_t IORegistryEntryGetParentEntry(io_registry_entry_t entry, const io_name_t plane, io_registry_entry_t *parent)
{
  result = io_registry_entry_get_parent_iterator(entry, plane);
  if (!result)
  {
    io_iterator_next(0);
    *parent = 0;
    mach_port_deallocate(*MEMORY[0x1E69E9A60], 0);
    if (*parent)
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

uint64_t io_service_add_interest_notification(unsigned int a1, const char *a2, int a3, const void *a4, unsigned int a5, _DWORD *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(v21, 0, 204);
  v20 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v18 = 1;
  v19 = a3;
  DWORD1(v20) = 1310720;
  *(&v20 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v10 = mig_strncpy_zerofill(v21 + 8, a2, 128);
  }

  else
  {
    v10 = mig_strncpy(v21 + 8, a2, 128);
  }

  LODWORD(v21[0]) = 0;
  DWORD1(v21[0]) = v10;
  if (a5 <= 8)
  {
    v12 = (v10 + 3) & 0xFFFFFFFC;
    memcpy(v21 + v12 + 12, a4, 8 * a5);
    *(v21 + v12 + 8) = a5;
    v13 = mig_get_reply_port();
    reply_port.msgh_bits = -2147478253;
    reply_port.msgh_size = v12 + 8 * a5 + 60;
    *&reply_port.msgh_remote_port = __PAIR64__(v13, a1);
    *&reply_port.msgh_voucher_port = 0xB3500000000;
    v14 = mach_msg2_internal();
    v11 = v14;
    if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v14)
      {
        if (reply_port.msgh_id == 71)
        {
          v11 = 4294966988;
        }

        else if (reply_port.msgh_id == 2969)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            v11 = 4294966996;
            if (v18 == 1 && reply_port.msgh_size == 40 && !reply_port.msgh_remote_port && WORD3(v20) << 16 == 1114112)
            {
              v11 = 0;
              *a6 = v19;
              goto LABEL_28;
            }
          }

          else if (reply_port.msgh_size == 36)
          {
            v11 = 4294966996;
            if (v20)
            {
              if (reply_port.msgh_remote_port)
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = v20;
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }
        }

        else
        {
          v11 = 4294966995;
        }

        mach_msg_destroy(&reply_port);
        goto LABEL_28;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }
  }

  else
  {
    v11 = 4294966989;
  }

LABEL_28:
  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t io_registry_entry_get_parent_iterator(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
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
  *&v9 = 0xAFE00000000;
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

uint64_t IOPMRequestSysWake(const void *a1)
{
  v20 = 0;
  cf = 0;
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID || (Value = CFDictionaryGetValue(a1, @"time"), v4 = CFDictionaryGetValue(a1, @"scheduledby"), v5 = CFDictionaryGetValue(a1, @"leeway"), v6 = CFDateGetTypeID(), !Value) || CFGetTypeID(Value) != v6 || (v7 = CFStringGetTypeID(), !v4) || CFGetTypeID(v4) != v7 || v5 && (v8 = CFNumberGetTypeID(), CFGetTypeID(v5) != v8))
  {
    v11 = 0;
    goto LABEL_16;
  }

  v9 = *MEMORY[0x1E695E4C0];
  if (CFDictionaryGetValue(a1, @"UserVisible") == *MEMORY[0x1E695E4D0])
  {
    v10 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v10 = v9;
  }

  if (_pm_connect(&v20))
  {
    v11 = 0;
LABEL_14:
    v12 = -536870199;
LABEL_17:
    v21 = v12;
    goto LABEL_18;
  }

  v21 = _IOPMCreatePowerOnDictionary(Value, v4, @"wake", &cf);
  if (v21)
  {
    v11 = 0;
    goto LABEL_18;
  }

  v14 = cf;
  if (v5)
  {
    CFDictionaryAddValue(cf, @"leeway", v5);
  }

  CFDictionaryAddValue(v14, @"UserVisible", v10);
  Data = CFPropertyListCreateData(0, v14, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  v11 = Data;
  if (!Data)
  {
LABEL_16:
    v12 = -536870206;
    goto LABEL_17;
  }

  v16 = v20;
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(v11);
  if (io_pm_schedule_power_event(v16, BytePtr, Length, 1, &v21))
  {
    goto LABEL_14;
  }

LABEL_18:
  if (v20)
  {
    _pm_disconnect();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v21;
}

uint64_t _IOPMCreatePowerOnDictionary(const void *a1, __CFString *a2, const void *a3, __CFDictionary **a4)
{
  TypeID = CFStringGetTypeID();
  if (a2)
  {
    if (CFGetTypeID(a2) == TypeID)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 3758097085;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F0B93200;
  }

  v12 = CFDateGetTypeID();
  if (a1 && CFGetTypeID(a1) == v12)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v14 = Mutable;
      CFDictionaryAddValue(Mutable, @"time", a1);
      CFDictionaryAddValue(v14, @"scheduledby", v11);
      CFDictionaryAddValue(v14, @"eventtype", a3);
      v10 = 0;
      *a4 = v14;
    }
  }

  else
  {
    asl_log(0, 0, 3, "_IOPMCreatePowerOnDictionary received invalid date\n");
    return 3758097090;
  }

  return v10;
}

uint64_t io_pm_schedule_power_event(mach_port_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 1;
  v16 = a2;
  v17 = 16777472;
  v18 = a3;
  v19 = *MEMORY[0x1E69E99E0];
  v20 = a3;
  v21 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x11D2B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 73103)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v10 = HIDWORD(v16);
              if (!HIDWORD(v16))
              {
                *a5 = v17;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v16) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = HIDWORD(v16);
            }

            goto LABEL_23;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t io_connect_set_notification_port(unsigned int a1, int a2, int a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 1;
  v10 = a3;
  v11 = 0x14000000000000;
  v12 = *MEMORY[0x1E69E99E0];
  v13 = a2;
  v14 = a4;
  *&v8.msgh_bits = 0x3C80001513;
  *&v8.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v8.msgh_voucher_port = 0xB3300000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v8.msgh_local_port);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(v8.msgh_local_port);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(&v8);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

IOReturn IOPMCancelScheduledPowerEvent(CFDateRef time_to_wake, CFStringRef my_id, CFStringRef type)
{
  v14 = 0;
  cf = 0;
  if ((inputsValid(time_to_wake, type) & 1) == 0)
  {
    v6 = 0;
    goto LABEL_6;
  }

  if (_pm_connect(&v14))
  {
    v6 = 0;
LABEL_4:
    v7 = -536870199;
LABEL_7:
    v15 = v7;
    goto LABEL_8;
  }

  v15 = _IOPMCreatePowerOnDictionary(time_to_wake, my_id, type, &cf);
  if (v15)
  {
    v6 = 0;
    goto LABEL_8;
  }

  Data = CFPropertyListCreateData(0, cf, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  v6 = Data;
  if (!Data)
  {
LABEL_6:
    v7 = -536870206;
    goto LABEL_7;
  }

  v10 = v14;
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(v6);
  if (io_pm_schedule_power_event(v10, BytePtr, Length, 0, &v15))
  {
    goto LABEL_4;
  }

LABEL_8:
  if (v14)
  {
    _pm_disconnect();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v15;
}

uint64_t inputsValid(const void *a1, const void *a2)
{
  TypeID = CFDateGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID || CFEqual(a2, @"WakeImmediate") || (result = CFEqual(a2, @"PowerOnImmediate"), result))
  {
    v6 = CFStringGetTypeID();
    if (a2 && CFGetTypeID(a2) == v6)
    {
      if (CFEqual(a2, @"wake"))
      {
        return 1;
      }

      if (CFEqual(a2, @"poweron"))
      {
        return 1;
      }

      if (CFEqual(a2, @"wakepoweron"))
      {
        return 1;
      }

      if (CFEqual(a2, @"sleep"))
      {
        return 1;
      }

      if (CFEqual(a2, @"shutdown"))
      {
        return 1;
      }

      if (CFEqual(a2, @"restart"))
      {
        return 1;
      }

      if (CFEqual(a2, @"WakeImmediate"))
      {
        return 1;
      }

      if (CFEqual(a2, @"PowerOnImmediate"))
      {
        return 1;
      }

      if (CFEqual(a2, @"WakeRelativeToSleep"))
      {
        return 1;
      }

      if (CFEqual(a2, @"PowerRelativeToShutdown"))
      {
        return 1;
      }

      if (CFEqual(a2, @"MaintenanceImmediate"))
      {
        return 1;
      }

      result = CFEqual(a2, @"SleepServiceImmediate");
      if (result)
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __checkFeatureEnabled_block_invoke()
{
  PMQueue = getPMQueue();

  dispatch_sync(PMQueue, &__block_literal_global_3);
}

dispatch_queue_t __getPMQueue_block_invoke()
{
  result = dispatch_queue_create("PM Notifications", 0);
  getPMQueue_pmQueue = result;
  return result;
}

io_connect_t IORegisterForSystemPower(void *refcon, IONotificationPortRef *thePortRef, IOServiceInterestCallback callback, io_object_t *notifier)
{
  connect = 0;
  *notifier = 0;
  v8 = IONotificationPortCreate(0);
  v9 = IORegistryEntryFromPath(0, "IOPower:/IOPowerConnection/IOPMrootDomain");
  if (v9)
  {
    v10 = v9;
    if (IOServiceOpen(v9, *MEMORY[0x1E69E9A60], 0, &connect))
    {
      v11 = 1;
    }

    else
    {
      v11 = connect == 0;
    }

    if (v11)
    {
      IOObjectRelease(v10);
    }

    else
    {
      v12 = IOServiceAddInterestNotification(v8, v10, "IOAppPowerStateInterest", callback, refcon, notifier);
      IOObjectRelease(v10);
      if (!v12)
      {
        *thePortRef = v8;
        return connect;
      }
    }
  }

  if (v8)
  {
    IONotificationPortDestroy(v8);
  }

  if (connect)
  {
    IOServiceClose(connect);
  }

  result = *notifier;
  if (*notifier)
  {
    IOObjectRelease(result);
    return 0;
  }

  return result;
}

void __checkFeatureEnabled_block_invoke_2()
{
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", MEMORY[0x1E69E96A0], 0);
  if (mach_service)
  {
    v1 = mach_service;
    PMQueue = getPMQueue();
    xpc_connection_set_target_queue(v1, PMQueue);
    xpc_connection_set_event_handler(v1, &__block_literal_global_9);
    xpc_connection_resume(v1);
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v3, "assertionFeatureSupported", 1);
    v4 = getPMQueue();
    xpc_connection_send_message_with_reply(v1, v3, v4, &__block_literal_global_14);
    if (v3)
    {
      xpc_release(v3);
    }

    xpc_release(v1);
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
    v5 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v5)
    {
      __checkFeatureEnabled_block_invoke_2_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

void __checkFeatureEnabled_block_invoke_2_11(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x19A8DC620](a2) != MEMORY[0x1E69E9E80])
  {
    goto LABEL_16;
  }

  v3 = xpc_dictionary_get_BOOL(a2, "assertionFeatureSupported");
  v4 = assertions_log;
  if (assertions_log)
  {
    if (!os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v11 = 67109120;
    LODWORD(v12) = v3;
    v5 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v11 = 67109120;
    LODWORD(v12) = v3;
    v5 = MEMORY[0x1E69E9C10];
  }

  _os_log_impl(&dword_197195000, v5, OS_LOG_TYPE_DEFAULT, "Assertion feature: setting gAsyncMode to %d", &v11, 8u);
LABEL_8:
  gAsyncMode = v3;
  int64 = xpc_dictionary_get_int64(a2, "assertionAsyncOffloadDelay");
  if (int64)
  {
    v7 = int64;
    v8 = assertions_log;
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134217984;
        v12 = v7;
        v9 = v8;
LABEL_14:
        _os_log_impl(&dword_197195000, v9, OS_LOG_TYPE_DEFAULT, "Async assertion: setting offload delay to %llu", &v11, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v7;
      v9 = MEMORY[0x1E69E9C10];
      goto LABEL_14;
    }

    gOffloadDelay = v7;
  }

LABEL_16:
  v10 = *MEMORY[0x1E69E9840];
}

void insertIntoTimedList(void *value)
{
  CFArrayAppendValue(gTimedAssertionsList, value);
  v1 = gTimedAssertionsList;
  v17.length = CFArrayGetCount(gTimedAssertionsList);
  v17.location = 0;
  CFArraySortValues(v1, v17, compare_assertion, 0);
  if (gAssertionTimer)
  {
    if ((assertion_timer_suspended & 1) == 0)
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          insertIntoTimedList_cold_1();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        insertIntoTimedList_cold_2();
      }

      dispatch_suspend(gAssertionTimer);
      assertion_timer_suspended = 1;
    }
  }

  else
  {
    PMQueue = getPMQueue();
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, PMQueue);
    gAssertionTimer = v3;
    if (v3)
    {
      dispatch_source_set_event_handler(v3, &__block_literal_global_136);
      dispatch_source_set_cancel_handler(gAssertionTimer, &__block_literal_global_139);
    }
  }

  MonotonicTime = getMonotonicTime();
  valuePtr = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(gTimedAssertionsList, 0);
  v6 = CFDictionaryGetValue(ValueAtIndex, @"TimeoutTimeStamp");
  v7 = CFDictionaryGetValue(ValueAtIndex, @"PolicyTimeoutTimeStamp");
  if (!v7)
  {
    v7 = v6;
  }

  CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr);
  v8 = valuePtr - MonotonicTime;
  if (v8 <= 0)
  {
    handleAssertionTimeout();
    return;
  }

  if (gAssertionTimer)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        insertIntoTimedList_cold_3();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      insertIntoTimedList_cold_4();
    }

    v9 = gAssertionTimer;
    v10 = dispatch_time(0, 1000000 * (v8 & 0x7FFFFFFF));
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (assertion_timer_suspended == 1)
    {
      v11 = assertions_log;
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 0;
          v12 = &v15;
          v13 = v11;
LABEL_27:
          _os_log_impl(&dword_197195000, v13, OS_LOG_TYPE_DEFAULT, "Resuming timer", v12, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v13 = MEMORY[0x1E69E9C10];
        v12 = &v14;
        goto LABEL_27;
      }

      assertion_timer_suspended = 0;
      dispatch_resume(gAssertionTimer);
    }
  }
}

IOReturn IODataQueueWaitForAvailableData(IODataQueueMemory *dataQueue, mach_port_t notificationPort)
{
  result = -536870206;
  if (dataQueue)
  {
    if (notificationPort)
    {
      memset(v4, 0, sizeof(v4));
      return mach_msg(v4, 2, 0, 0x20u, notificationPort, 0, 0);
    }
  }

  return result;
}

Boolean IODataQueueDataAvailable(IODataQueueMemory *dataQueue)
{
  if (dataQueue)
  {
    LOBYTE(dataQueue) = dataQueue->head != dataQueue->tail;
  }

  return dataQueue;
}

kern_return_t IOConnectSetCFProperty(io_connect_t connect, CFStringRef propertyName, CFTypeRef property)
{
  v8 = propertyName;
  values = property;
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &v8, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v4)
  {
    return -536870211;
  }

  v5 = v4;
  v6 = IOConnectSetCFProperties(connect, v4);
  CFRelease(v5);
  return v6;
}

kern_return_t IOConnectSetCFProperties(io_connect_t connect, CFTypeRef properties)
{
  v3 = IOCFSerialize(properties, gIOKitLibSerializeOptions);
  if (!v3)
  {
    return -536870201;
  }

  v4 = v3;
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v4);
  v7 = io_connect_set_properties(connect, BytePtr, Length);
  CFRelease(v4);
  if (v7)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t io_connect_set_properties(unsigned int a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 1;
  v9 = a2;
  v10 = 0x1000000;
  v11 = a3;
  v12 = *MEMORY[0x1E69E99E0];
  v13 = a3;
  *&v7.msgh_bits = 0x3880001513;
  *&v7.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v7.msgh_voucher_port = 0xB0500000000;
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

void IOHIDEventSystemClientRegisterResetCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *bytes = a2;
  v13 = a3;
  v14 = a4;
  os_unfair_recursive_lock_lock_with_options();
  if ((*(a1 + 408) & 1) == 0)
  {
    if (atomic_load((a1 + 312)))
    {
      IOHIDEventSystemClientRegisterEventCallback_cold_1();
    }
  }

  os_unfair_recursive_lock_unlock();
  if (a2)
  {
    os_unfair_recursive_lock_lock_with_options();
    if (*(a1 + 136) || (Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]), (*(a1 + 136) = Mutable) != 0))
    {
      if (__IOHIDEventSystemClientFindCallback(a1, a2, a3, a4) == -1)
      {
        v10 = CFDataCreate(0, bytes, 24);
        if (v10)
        {
          v11 = v10;
          CFArrayAppendValue(*(a1 + 136), v10);
          os_unfair_recursive_lock_unlock();
          CFRelease(v11);
        }

        else
        {
          os_unfair_recursive_lock_unlock();
        }
      }

      else
      {

        os_unfair_recursive_lock_unlock();
      }
    }
  }
}

uint64_t __IOHIDEventSystemClientFindCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_assert_owner((a1 + 160));
  v8 = -1;
  if (a2)
  {
    v9 = *(a1 + 136);
    if (v9)
    {
      if (CFArrayGetCount(v9) >= 1)
      {
        v8 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 136), v8);
          if (ValueAtIndex)
          {
            v11 = ValueAtIndex;
            TypeID = CFDataGetTypeID();
            if (TypeID == CFGetTypeID(v11))
            {
              BytePtr = CFDataGetBytePtr(v11);
              if (*BytePtr == a2 && *(BytePtr + 1) == a3 && *(BytePtr + 2) == a4)
              {
                break;
              }
            }
          }

          if (++v8 >= CFArrayGetCount(*(a1 + 136)))
          {
            return -1;
          }
        }
      }
    }
  }

  return v8;
}

void IOHIDEventSystemClientSetMatching(uint64_t a1, void *a2)
{
  values = a2;
  if (a2)
  {
    v3 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    IOHIDEventSystemClientSetMatchingMultiple(a1, v3);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {

    IOHIDEventSystemClientSetMatchingMultiple(a1, 0);
  }
}

void processRemoteMsg(void *a1)
{
  v2 = MEMORY[0x19A8DC620]();
  if (v2 == MEMORY[0x1E69E9E80])
  {
    if (xpc_dictionary_get_value(a1, "assertionCheck"))
    {

      processCheckAssertionsMsg(a1);
    }

    else if (xpc_dictionary_get_value(a1, "assertionTimeout"))
    {

      processAssertionTimeout(a1);
    }

    else if (xpc_dictionary_get_value(a1, "assertionUpdateActivity"))
    {

      processAssertionUpdateActivity(a1);
    }

    else if (xpc_dictionary_get_value(a1, "assertionUpdateActives"))
    {

      processCurrentActiveAssertions(a1);
    }

    else if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        processRemoteMsg_cold_7();
      }
    }

    else
    {
      v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v27)
      {
        processRemoteMsg_cold_8(v27, v28, v29, v30, v31, v32, v33, v34);
      }
    }
  }

  else if (v2 == MEMORY[0x1E69E9E98])
  {
    if (a1 == MEMORY[0x1E69E9E18])
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
        {
          processRemoteMsg_cold_3();
        }
      }

      else
      {
        v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v11)
        {
          processRemoteMsg_cold_4(v11, v12, v13, v14, v15, v16, v17, v18);
        }
      }

      if (gAssertionConnection)
      {
        xpc_release(gAssertionConnection);
        gAssertionConnection = 0;
        gAsyncModeSetupDone = 0;
        gCurrentRemoteAssertion = 0;
        gCurrentAssertion = 0;
        gCurrentRemoteAssertionIsCoalesced = 0;
      }
    }

    else if (a1 == MEMORY[0x1E69E9E20])
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
        {
          processRemoteMsg_cold_3();
        }
      }

      else
      {
        v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v19)
        {
          processRemoteMsg_cold_4(v19, v20, v21, v22, v23, v24, v25, v26);
        }
      }

      if (gAssertionConnection)
      {
        xpc_release(gAssertionConnection);
        gAssertionConnection = 0;
        gAsyncModeSetupDone = 0;
      }
    }

    else
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
        {
          processRemoteMsg_cold_1();
        }
      }

      else
      {
        v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v3)
        {
          processRemoteMsg_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
        }
      }

      gAsyncMode = 0;
    }
  }
}

void processAssertionUpdateActivity(void *a1)
{
  v2 = assertions_log;
  if (assertions_log)
  {
    if (!os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v26 = 0;
    v3 = &v26;
    v4 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v25 = 0;
    v4 = MEMORY[0x1E69E9C10];
    v3 = &v25;
  }

  _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_DEFAULT, "Powerd has requested assertion activity update", v3, 2u);
LABEL_7:
  if (gAssertionConnection)
  {
    reply = xpc_dictionary_create_reply(a1);
    if (reply)
    {
      v6 = reply;
      uint64 = xpc_dictionary_get_uint64(a1, "assertionCheckToken");
      xpc_dictionary_set_uint64(v6, "assertionCheckToken", uint64);
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          processAssertionUpdateActivity_cold_1();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        processAssertionUpdateActivity_cold_2();
      }

      if (gAsyncAssertionActivityLog_2 && CFArrayGetCount(gAsyncAssertionActivityLog_1))
      {
        v8 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v6, "assertionActivityLog", v8);
        if (gAsyncAssertionActivityLog_2 >= 0x19)
        {
          xpc_dictionary_set_BOOL(v6, "assertionActivityUpdateOverflow", 1);
        }

        xpc_connection_send_message(gAssertionConnection, v6);
        if (v8)
        {
          xpc_release(v8);
        }
      }

      else
      {
        xpc_connection_send_message(gAssertionConnection, v6);
      }

      xpc_release(v6);
      gAsyncAssertionActivityLog_2 = 0;
      gAsyncAssertionActivityLog_0 = 0;
      if (gAsyncAssertionActivityLog_1)
      {
        CFArrayRemoveAllValues(gAsyncAssertionActivityLog_1);
      }
    }

    else if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        processAssertionUpdateActivity_cold_3();
      }
    }

    else
    {
      v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v17)
      {
        processAssertionUpdateActivity_cold_4(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }
  }

  else if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      processAssertionUpdateActivity_cold_5();
    }
  }

  else
  {
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v9)
    {
      processAssertionUpdateActivity_cold_6(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

void offloadAssertions(char a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (gAsyncMode != 1)
  {
    goto LABEL_62;
  }

  valuePtr = 0;
  v23 = 0;
  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
    {
      offloadAssertions_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    offloadAssertions_cold_2();
  }

  if (!gCurrentAssertion && CFDictionaryGetCount(gActiveAssertionsDict) <= 0 && gAsyncAssertionActivityLog_2 != 0)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        offloadAssertions_cold_3();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      offloadAssertions_cold_4();
    }

    sendAsyncAssertionMsg(0, 0, &v23, 1);
    CFArrayRemoveAllValues(gReleasedAssertionsList);
LABEL_60:
    if (a1)
    {
      goto LABEL_62;
    }

LABEL_61:
    nextOffload_ts = 0;
    dispatch_suspend(gAssertionsOffloader);
    goto LABEL_62;
  }

  if (gCurrentRemoteAssertion)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        offloadAssertions_cold_5();
        if (a1)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      offloadAssertions_cold_6();
      if (a1)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E9C10];
  while (1)
  {
    value = 0;
    if (!CFDictionaryGetValueIfPresent(gActiveAssertionsDict, v3, &value))
    {
      goto LABEL_45;
    }

    v5 = value;
    TypeID = CFDictionaryGetTypeID();
    if (v5)
    {
      if (CFGetTypeID(v5) == TypeID)
      {
        break;
      }
    }

    v10 = assertions_log;
    if (!assertions_log)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        offloadAssertions_cold_8(&v29, v3, &v30);
      }

      goto LABEL_45;
    }

    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v28[0]) = v3;
      v11 = v10;
      v12 = "Not a dictinary for 0x%x";
      v13 = 8;
LABEL_28:
      _os_log_error_impl(&dword_197195000, v11, OS_LOG_TYPE_ERROR, v12, buf, v13);
    }

LABEL_45:
    if (++v3 == 128)
    {
      goto LABEL_60;
    }
  }

  v23 = 0;
  v7 = CFDictionaryGetValue(value, @"AsyncClientAssertionId");
  CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr + 4);
  v8 = assertions_log;
  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109378;
      LODWORD(v28[0]) = HIDWORD(valuePtr);
      WORD2(v28[0]) = 2112;
      *(v28 + 6) = value;
      v9 = v8;
LABEL_48:
      _os_log_debug_impl(&dword_197195000, v9, OS_LOG_TYPE_DEBUG, "Sending assertion create msg for id 0x%x:%@\n", buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    LODWORD(v28[0]) = HIDWORD(valuePtr);
    WORD2(v28[0]) = 2112;
    *(v28 + 6) = value;
    v9 = v4;
    goto LABEL_48;
  }

  LODWORD(valuePtr) = sendAsyncAssertionMsg(1, value, &v23, 1);
  CFArrayRemoveAllValues(gReleasedAssertionsList);
  v14 = v23;
  if (v23 || !valuePtr)
  {
    v17 = assertions_log;
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        LODWORD(v28[0]) = v14;
        WORD2(v28[0]) = 2112;
        *(v28 + 6) = value;
        v18 = v17;
        goto LABEL_50;
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      LODWORD(v28[0]) = v14;
      WORD2(v28[0]) = 2112;
      *(v28 + 6) = value;
      v18 = v4;
LABEL_50:
      _os_log_error_impl(&dword_197195000, v18, OS_LOG_TYPE_ERROR, "powerd returned err 0x%x to create assertion %@. Dropping the assertion\n", buf, 0x12u);
    }

    CFDictionaryRemoveValue(gActiveAssertionsDict, v3);
    CFDictionaryRemoveValue(gAssertionsDict, v3);
    goto LABEL_45;
  }

  v15 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v16 = assertions_log;
  if (!v15)
  {
    if (!assertions_log)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        offloadAssertions_cold_7(v25, &value, &v26);
      }

      goto LABEL_45;
    }

    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28[0] = value;
      v11 = v16;
      v12 = "Failed to create the remoteID to CF for id %@\n";
      v13 = 12;
      goto LABEL_28;
    }

    goto LABEL_45;
  }

  v20 = v15;
  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      LODWORD(v28[0]) = valuePtr;
      WORD2(v28[0]) = 1024;
      *(v28 + 6) = HIDWORD(valuePtr);
      v21 = v16;
      goto LABEL_68;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    LODWORD(v28[0]) = valuePtr;
    WORD2(v28[0]) = 1024;
    *(v28 + 6) = HIDWORD(valuePtr);
    v21 = MEMORY[0x1E69E9C10];
LABEL_68:
    _os_log_impl(&dword_197195000, v21, OS_LOG_TYPE_DEFAULT, "powerd returned assertion id 0x%x for async id 0x%x \n", buf, 0xEu);
  }

  gCurrentAssertion = HIDWORD(valuePtr);
  gCurrentRemoteAssertion = valuePtr;
  gCurrentRemoteAssertionIsCoalesced = CFDictionaryGetCount(gActiveAssertionsDict) > 1;
  CFDictionarySetValue(value, @"AsyncRemoteAssertionId", v20);
  CFRelease(v20);
  if ((a1 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_62:
  v19 = *MEMORY[0x1E69E9840];
}

Boolean IOHIDEventSystemClientSetProperty(IOHIDEventSystemClientRef client, CFStringRef key, CFTypeRef property)
{
  v3 = 0;
  v30 = *MEMORY[0x1E69E9840];
  values = property;
  keys = key;
  if (client && key && property)
  {
    if (CFSetContainsValue(__propertyCache, key))
    {
      os_unfair_recursive_lock_lock_with_options();
      CFDictionarySetValue(*(client + 16), key, property);
      os_unfair_recursive_lock_unlock();
    }

    v7 = *MEMORY[0x1E695E480];
    v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v8)
    {
      v9 = v8;
      v10 = _IOHIDCreateBinaryData(v7, v8);
      if (v10)
      {
        v11 = v10;
        if (CFSetContainsValue(__restrictedRemapKeys, keys) && _IOHIDIsRestrictedRemappingProperty(values) && IOHIDCheckAccess(kIOHIDRequestTypeListenEvent))
        {
          IOHIDRequestAccess(kIOHIDRequestTypeListenEvent);
        }

        v23 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v12 = *(client + 8);
        BytePtr = CFDataGetBytePtr(v11);
        Length = CFDataGetLength(v11);
        v15 = io_hideventsystem_set_properties(v12, BytePtr, Length, &v23);
        v16 = v15;
        if (v15 == 268435459)
        {
          if (*(client + 48))
          {
            v16 = 268435459;
          }

          else
          {
            v16 = 268435459;
            if (!*(client + 50))
            {
              __IOHIDEventSystemClientTerminationCallback(v15, client, 0);
              v17 = *(client + 8);
              v18 = CFDataGetBytePtr(v11);
              v19 = CFDataGetLength(v11);
              v16 = io_hideventsystem_set_properties(v17, v18, v19, &v23);
            }
          }
        }

        os_unfair_recursive_lock_unlock();
        if (v16 | v23)
        {
          v20 = _IOHIDLogCategory(0xDu);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 67109376;
            v27 = v16;
            v28 = 1024;
            v29 = v23;
            _os_log_impl(&dword_197195000, v20, OS_LOG_TYPE_INFO, "io_hideventsystem_set_properties:0x%08x result:%d", buf, 0xEu);
          }

          v3 = 0;
        }

        else
        {
          v3 = 1;
        }

        CFRelease(v11);
      }

      else
      {
        v3 = 0;
      }

      CFRelease(v9);
    }

    else
    {
      v3 = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sendAsyncAssertionMsg(int a1, uint64_t a2, _DWORD *a3, int a4)
{
  if (!gAssertionConnection)
  {
    initialSetup();
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  if (!v8)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        __fetchAssertionCategoryPolicies_block_invoke_cold_1();
      }
    }

    else
    {
      v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v12)
      {
        __fetchAssertionCategoryPolicies_block_invoke_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    return 0;
  }

  v9 = v8;
  if (gAsyncAssertionActivityLog_2)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  if (!a2 && (v10 & 1) == 0)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        sendAsyncAssertionMsg_cold_1();
      }
    }

    else
    {
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v23)
      {
        sendAsyncAssertionMsg_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
      }
    }

    return 0;
  }

  if (a2)
  {
    v11 = _CFXPCCreateXPCMessageWithCFObject();
    if (!v11)
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
        {
          sendAsyncAssertionMsg_cold_9();
        }
      }

      else
      {
        v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v31)
        {
          sendAsyncAssertionMsg_cold_10(v31, v32, v33, v34, v35, v36, v37, v38);
        }
      }

      return 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v10)
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

    v20 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v9, "assertionActivityLog", v20);
    if (a1)
    {
      goto LABEL_37;
    }

LABEL_28:
    if (a2)
    {
      xpc_dictionary_set_value(v9, "assertionProperties", v11);
    }

    xpc_connection_send_message(gAssertionConnection, v9);
    uint64 = 0;
    v22 = 0;
    goto LABEL_58;
  }

  v20 = 0;
  if (!a1)
  {
    goto LABEL_28;
  }

LABEL_37:
  xpc_dictionary_set_value(v9, "assertionCreate", v11);
  v22 = xpc_connection_send_message_with_reply_sync(gAssertionConnection, v9);
  if (MEMORY[0x19A8DC620]() == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(v22, "assertionId");
    if (a3)
    {
      *a3 = xpc_dictionary_get_uint64(v22, "returnCode");
    }

    goto LABEL_58;
  }

  if (MEMORY[0x19A8DC620](v22) != MEMORY[0x1E69E9E98])
  {
    goto LABEL_39;
  }

  if (v22 == MEMORY[0x1E69E9E18])
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        sendAsyncAssertionMsg_cold_7();
      }
    }

    else
    {
      v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v39)
      {
        sendAsyncAssertionMsg_cold_8(v39, v40, v41, v42, v43, v44, v45, v46);
      }
    }

    uint64 = 0;
    v22 = MEMORY[0x1E69E9E18];
    goto LABEL_58;
  }

  if (v22 == MEMORY[0x1E69E9E20])
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        sendAsyncAssertionMsg_cold_5();
      }
    }

    else
    {
      v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v47)
      {
        sendAsyncAssertionMsg_cold_6(v47, v48, v49, v50, v51, v52, v53, v54);
      }
    }

    uint64 = 0;
    v22 = MEMORY[0x1E69E9E20];
  }

  else
  {
LABEL_39:
    uint64 = 0;
  }

LABEL_58:
  if (v11)
  {
    xpc_release(v11);
  }

  if (v20)
  {
    xpc_release(v20);
  }

  if (v22)
  {
    xpc_release(v22);
  }

  if (v10)
  {
    gAsyncAssertionActivityLog_2 = 0;
    gAsyncAssertionActivityLog_0 = 0;
    if (gAsyncAssertionActivityLog_1)
    {
      CFArrayRemoveAllValues(gAsyncAssertionActivityLog_1);
    }
  }

  xpc_release(v9);
  return uint64;
}

uint64_t io_hideventsystem_set_properties(mach_port_t a1, uint64_t a2, int a3, int *a4)
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
  *&v13.msgh_voucher_port = 0x1117D00000000;
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

      else if (v13.msgh_id == 70113)
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
                goto LABEL_27;
              }

              goto LABEL_26;
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

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v13);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v13.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v13.msgh_local_port);
    }

    goto LABEL_26;
  }

LABEL_27:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _Xio_hideventsystem_set_properties(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = _io_hideventsystem_set_properties(*(result + 12), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _io_hideventsystem_set_properties(unsigned int a1, UInt8 *a2, unsigned int a3, _DWORD *a4)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = -536870212;
  v7 = a3;
  TypeID = CFDictionaryGetTypeID();
  v9 = _IOHIDUnserializeAndVMDeallocWithTypeID(a2, v7, TypeID);
  if (v9)
  {
    v10 = v9;
    v11 = IOMIGMachPortCacheCopy(a1);
    if (v11)
    {
      v12 = v11;
      v13 = CFGetTypeID(v11);
      if (v13 == IOHIDEventSystemConnectionGetTypeID())
      {
        System = _IOHIDEventSystemConnectionGetSystem(v12);
        if (CFDictionaryGetCount(v10))
        {
          *(v19 + 6) = 0;
          context[0] = MEMORY[0x1E69E9820];
          context[1] = 0x40000000;
          context[2] = ___io_hideventsystem_set_properties_block_invoke;
          context[3] = &unk_1E74A9580;
          context[4] = &v18;
          context[5] = v12;
          context[6] = System;
          _IOHIDCFDictionaryApplyBlock(v10, context);
        }

        else
        {
          *(v19 + 6) = -536870206;
        }
      }

      else
      {
        *(v19 + 6) = -536870185;
      }

      CFRelease(v10);
      v15 = v12;
    }

    else
    {
      *(v19 + 6) = -536870185;
      v15 = v10;
    }

    CFRelease(v15);
  }

  else
  {
    *(v19 + 6) = -536870206;
  }

  *a4 = *(v19 + 6);
  _Block_object_dispose(&v18, 8);
  return 0;
}

uint64_t io_registry_entry_get_child_iterator(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
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
  *&v9 = 0xAFD00000000;
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

uint64_t ___io_hideventsystem_set_properties_block_invoke(uint64_t a1, const void *a2, const void *a3)
{
  v6 = -536870212;
  if (IOHIDEventSystemConnectionGetType(*(a1 + 40)) == 4 && (result = CFSetContainsValue(__whiteListSet, a2), !result))
  {
    v6 = -536870206;
  }

  else
  {
    result = _IOHIDEventSystemSetPropertyForConnection(*(a1 + 48), a2, a3, *(a1 + 40));
    if (result)
    {
      return result;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  return result;
}

double IOHIDServiceConnectionCacheCreate()
{
  IOHIDServiceConnectionCacheGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    result = 0.0;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
  }

  return result;
}

BOOL _IOHIDEventSystemConnectionIsValid(uint64_t a1)
{
  result = 1;
  if (*MEMORY[0x1E695E738] != a1)
  {
    return (*(a1 + 264) & 1) == 0;
  }

  return result;
}

uint64_t IOHIDServiceConnectionCacheGetTypeID()
{
  result = __serviceConnectionCacheTypeID;
  if (!__serviceConnectionCacheTypeID)
  {
    if (__serviceConnectionCacheTypeInit != -1)
    {
      IOHIDServiceConnectionCacheGetTypeID_cold_1();
    }

    return __serviceConnectionCacheTypeID;
  }

  return result;
}

IOReturn IODeregisterForSystemPower(io_object_t *notifier)
{
  v2 = *notifier;
  if (v2)
  {
    IOObjectRelease(v2);
    *notifier = 0;
  }

  return 0;
}

uint64_t IOHIDServiceClientFastPathInit(uint64_t a1, uint64_t a2)
{
  existing = 0;
  v2 = (a1 + 104);
  if (*(a1 + 104))
  {
    return 1;
  }

  theScore = 0;
  valuePtr = 0;
  v5 = *(a1 + 16);
  if (!v5 || !CFNumberGetValue(v5, kCFNumberSInt64Type, &valuePtr))
  {
    goto LABEL_24;
  }

  v7 = IORegistryEntryIDMatching(valuePtr);
  if (!v7)
  {
    v17 = _IOHIDLogCategory(4u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      IOHIDServiceClientFastPathInit_cold_5();
    }

    goto LABEL_24;
  }

  if (IOServiceGetMatchingServices(0, v7, &existing))
  {
    v18 = _IOHIDLogCategory(4u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      IOHIDServiceClientFastPathInit_cold_1();
    }

    goto LABEL_24;
  }

  v8 = IOIteratorNext(existing);
  if (!v8)
  {
    v19 = _IOHIDLogCategory(4u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      IOHIDServiceClientFastPathInit_cold_4();
    }

LABEL_24:
    v9 = 0;
LABEL_25:
    v3 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xBu, 0x84u, 0x2Au, 0xDDu, 0xC3u, 0x95u, 0x43u, 0x52u, 0x95u, 0xF6u, 0x65u, 0x85u, 0xEBu, 0x51u, 0x56u, 0x23u);
  v11 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  if (IOCreatePlugInInterfaceForService(v9, v10, v11, (a1 + 112), &theScore))
  {
    v20 = _IOHIDLogCategory(4u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      IOHIDServiceClientFastPathInit_cold_2();
    }

    goto LABEL_25;
  }

  v12 = *(a1 + 112);
  v13 = *(*v12 + 8);
  v14 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0x27u, 0xBAu, 0xAEu, 0x90u, 0x2Fu, 0xE5u, 0x40u, 0x2Au, 0xBFu, 0x7Fu, 0x4Eu, 0xFAu, 0x27u, 0x7Du, 0x37u, 8u);
  v15 = CFUUIDGetUUIDBytes(v14);
  if (v13(v12, *&v15.byte0, *&v15.byte8, v2))
  {
    v21 = _IOHIDLogCategory(4u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      IOHIDServiceClientFastPathInit_cold_3();
    }

    goto LABEL_25;
  }

  v3 = (*(**v2 + 32))(*v2, 0, a2);
LABEL_11:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  if (v9)
  {
    IOObjectRelease(v9);
  }

  if (!v3)
  {
    IOHIDServiceClientFastPathInvalidate(a1);
  }

  return v3;
}

CFMutableDictionaryRef IORegistryEntryIDMatching(uint64_t entryID)
{
  valuePtr = entryID;
  v1 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFNumberCreate(v1, kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFDictionarySetValue(Mutable, @"IORegistryEntryID", v3);
    }

    else
    {
      v4 = Mutable;
      Mutable = 0;
    }

    CFRelease(v4);
  }

  return Mutable;
}

void handleAsyncAssertionDisableOverride(int a1)
{
  v1 = assertions_log;
  if (!a1)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 0;
        v4 = &v8;
        v5 = v1;
LABEL_14:
        _os_log_impl(&dword_197195000, v5, OS_LOG_TYPE_DEFAULT, "gAsyncModeDisableOverride: disable", v4, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v5 = MEMORY[0x1E69E9C10];
      v4 = &v7;
      goto LABEL_14;
    }

    v6 = 0;
    goto LABEL_16;
  }

  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v2 = &v10;
      v3 = v1;
LABEL_10:
      _os_log_impl(&dword_197195000, v3, OS_LOG_TYPE_DEFAULT, "gAsyncModeDisableOverride: enable", v2, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v3 = MEMORY[0x1E69E9C10];
    v2 = buf;
    goto LABEL_10;
  }

  v6 = 1;
LABEL_16:
  gAsyncModeDisableOverride = v6;
}

uint64_t __initialSetup_block_invoke_3()
{
  fetchAssertionCategoryPolicies();

  return registerForAssertionPolicy();
}

kern_return_t IOCreatePlugInInterfaceForService(io_service_t service, CFUUIDRef pluginType, CFUUIDRef interfaceType, IOCFPlugInInterface ***theInterface, SInt32 *theScore)
{
  v80 = *MEMORY[0x1E69E9840];
  value = 0;
  *matches = 0;
  context = 0;
  v74 = 0;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v8 = &__serviceRunLoop;
  servicea = service;
  if (!Mutable)
  {
    if (__IOCFPlugInLog_onceToken != -1)
    {
      __IOCFPlugInLog_cold_1();
    }

    v17 = __IOCFPlugInLog_log;
    if (!os_log_type_enabled(__IOCFPlugInLog_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    IOCreatePlugInInterfaceForService_cold_13(v17);
    goto LABEL_152;
  }

  *entryID = 0;
  if (IORegistryEntryGetRegistryEntryID(service, entryID))
  {
    if (__IOCFPlugInLog_onceToken != -1)
    {
      IOCreatePlugInInterfaceForService_cold_1();
    }

    if (os_log_type_enabled(__IOCFPlugInLog_log, OS_LOG_TYPE_ERROR))
    {
      IOCreatePlugInInterfaceForService_cold_2();
    }
  }

  CFProperty = IORegistryEntryCreateCFProperty(service, @"IOCFPlugInTypes", v6, 0);
  if (!CFProperty)
  {
    if (__IOCFPlugInLog_onceToken != -1)
    {
      IOCreatePlugInInterfaceForService_cold_1();
    }

    if (!os_log_type_enabled(__IOCFPlugInLog_log, OS_LOG_TYPE_ERROR))
    {
LABEL_22:
      v10 = 0;
LABEL_30:
      v14 = 0;
LABEL_31:
      if (!os_log_type_enabled(v8[207], OS_LOG_TYPE_ERROR))
      {
        v18 = 0;
        v16 = 0;
LABEL_33:
        if (!os_log_type_enabled(v8[207], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        IOCreatePlugInInterfaceForService_cold_17();
LABEL_120:
        if (__IOCFPlugInLog_onceToken != -1)
        {
          IOCreatePlugInInterfaceForService_cold_1();
        }

LABEL_34:
        if (os_log_type_enabled(v8[207], OS_LOG_TYPE_ERROR))
        {
          IOCreatePlugInInterfaceForService_cold_19();
          if (!v16)
          {
            goto LABEL_40;
          }
        }

        else if (!v16)
        {
LABEL_40:
          matched = 0;
          matches[1] = 1;
          goto LABEL_41;
        }

        if (__IOCFPlugInLog_onceToken != -1)
        {
          IOCreatePlugInInterfaceForService_cold_1();
        }

        if (os_log_type_enabled(v8[207], OS_LOG_TYPE_ERROR))
        {
          IOCreatePlugInInterfaceForService_cold_21();
        }

        goto LABEL_40;
      }

      IOCreatePlugInInterfaceForService_cold_15();
      v16 = 0;
      v18 = 0;
LABEL_149:
      if (__IOCFPlugInLog_onceToken != -1)
      {
        IOCreatePlugInInterfaceForService_cold_1();
      }

      goto LABEL_33;
    }

    IOCreatePlugInInterfaceForService_cold_11();
LABEL_152:
    v14 = 0;
    v10 = 0;
    goto LABEL_161;
  }

  v10 = CFProperty;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v10))
  {
    if (__IOCFPlugInLog_onceToken != -1)
    {
      IOCreatePlugInInterfaceForService_cold_1();
    }

    if (!os_log_type_enabled(__IOCFPlugInLog_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    IOCreatePlugInInterfaceForService_cold_4();
LABEL_160:
    v14 = 0;
LABEL_161:
    if (__IOCFPlugInLog_onceToken != -1)
    {
      IOCreatePlugInInterfaceForService_cold_1();
    }

    goto LABEL_31;
  }

  context = 0;
  v74 = pluginType;
  CFDictionaryApplyFunction(v10, _IOGetWithUUIDKey, &context);
  v12 = context;
  if (!context)
  {
    if (__IOCFPlugInLog_onceToken != -1)
    {
      IOCreatePlugInInterfaceForService_cold_1();
    }

    if (!os_log_type_enabled(__IOCFPlugInLog_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    IOCreatePlugInInterfaceForService_cold_9();
    goto LABEL_160;
  }

  if (CFStringGetCharacterAtIndex(context, 0) != 47)
  {
LABEL_124:
    v14 = 0;
    goto LABEL_125;
  }

  CFStringAppend(Mutable, v12);
  v13 = CFURLCreateWithFileSystemPath(0, Mutable, kCFURLPOSIXPathStyle, 1u);
  v14 = v13;
  if (!v13)
  {
    goto LABEL_125;
  }

  if (!CFURLResourceIsReachable(v13, 0))
  {
    CFRelease(v14);
    goto LABEL_124;
  }

  v15 = CFPlugInCreate(0, v14);
  if (v15)
  {
    v16 = v15;
    goto LABEL_139;
  }

LABEL_125:
  SystemExtensionsFolderURLs = OSKextGetSystemExtensionsFolderURLs();
  Count = CFArrayGetCount(SystemExtensionsFolderURLs);
  if (Count < 1)
  {
LABEL_137:
    v8 = &__serviceRunLoop;
    goto LABEL_161;
  }

  v57 = Count;
  v58 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SystemExtensionsFolderURLs, v58);
    if (v14)
    {
      CFRelease(v14);
    }

    v14 = CFURLCreateCopyAppendingPathComponent(0, ValueAtIndex, v12, 1u);
    if (!v14)
    {
      goto LABEL_136;
    }

    v60 = CFPlugInCreate(0, v14);
    if (v60)
    {
      break;
    }

    if (CFURLResourceIsReachable(v14, 0))
    {
      if (__IOCFPlugInLog_onceToken != -1)
      {
        IOCreatePlugInInterfaceForService_cold_1();
      }

      v61 = __IOCFPlugInLog_log;
      if (os_log_type_enabled(__IOCFPlugInLog_log, OS_LOG_TYPE_ERROR))
      {
        *entryID = 138412546;
        *&entryID[4] = v14;
        v76 = 2112;
        *v77 = pluginType;
        _os_log_error_impl(&dword_197195000, v61, OS_LOG_TYPE_ERROR, "CFPlugInCreate failed for url %@ for %@", entryID, 0x16u);
      }
    }

LABEL_136:
    if (v57 == ++v58)
    {
      goto LABEL_137;
    }
  }

  v16 = v60;
  v8 = &__serviceRunLoop;
LABEL_139:
  Bundle = CFPlugInGetBundle(v16);
  if (!Bundle)
  {
    v18 = 1;
    goto LABEL_149;
  }

  InfoDictionary = CFBundleGetInfoDictionary(Bundle);
  if (!InfoDictionary)
  {
    v18 = 1;
    goto LABEL_120;
  }

  v64 = CFDictionaryGetValue(InfoDictionary, @"Personality");
  if (!v64)
  {
    v18 = 1;
    goto LABEL_40;
  }

  matched = IOServiceMatchPropertyTable(servicea, v64, &matches[1]);
  if (matched)
  {
    matches[1] = 0;
    if (__IOCFPlugInLog_onceToken != -1)
    {
      IOCreatePlugInInterfaceForService_cold_1();
    }

    if (os_log_type_enabled(__IOCFPlugInLog_log, OS_LOG_TYPE_ERROR))
    {
      IOCreatePlugInInterfaceForService_cold_6();
    }
  }

  v18 = 1;
LABEL_41:
  FactoriesForPlugInTypeInPlugIn = 0;
  if (v18)
  {
    if (matches[1])
    {
      FactoriesForPlugInTypeInPlugIn = CFPlugInFindFactoriesForPlugInTypeInPlugIn(pluginType, v16);
      if (!FactoriesForPlugInTypeInPlugIn)
      {
        if (__IOCFPlugInLog_onceToken != -1)
        {
          IOCreatePlugInInterfaceForService_cold_1();
        }

        if (os_log_type_enabled(__IOCFPlugInLog_log, OS_LOG_TYPE_ERROR))
        {
          IOCreatePlugInInterfaceForService_cold_23();
        }

        FactoriesForPlugInTypeInPlugIn = 0;
      }
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (matched)
  {
    if (FactoriesForPlugInTypeInPlugIn)
    {
      v21 = FactoriesForPlugInTypeInPlugIn;
      goto LABEL_58;
    }

    goto LABEL_116;
  }

  matched = -536870210;
  if (!FactoriesForPlugInTypeInPlugIn)
  {
LABEL_112:
    if (__IOCFPlugInLog_onceToken != -1)
    {
      IOCreatePlugInInterfaceForService_cold_1();
    }

    v52 = __IOCFPlugInLog_log;
    if (os_log_type_enabled(__IOCFPlugInLog_log, OS_LOG_TYPE_ERROR))
    {
      if (FactoriesForPlugInTypeInPlugIn)
      {
        v65 = CFArrayGetCount(FactoriesForPlugInTypeInPlugIn);
      }

      else
      {
        v65 = 0;
      }

      *entryID = 138413058;
      *&entryID[4] = pluginType;
      v76 = 1024;
      *v77 = 0;
      *&v77[4] = 2048;
      *&v77[6] = FactoriesForPlugInTypeInPlugIn;
      v78 = 2048;
      v79 = v65;
      _os_log_error_impl(&dword_197195000, v52, OS_LOG_TYPE_ERROR, "no factories for plugin for %@, kr = 0x%x, factories = %p, factoryCount = %ld", entryID, 0x26u);
    }

    matched = -536870201;
    goto LABEL_116;
  }

  if (!CFArrayGetCount(FactoriesForPlugInTypeInPlugIn))
  {
    CFRelease(FactoriesForPlugInTypeInPlugIn);
    goto LABEL_112;
  }

  v22 = CFArrayCreateMutable(v6, 0, 0);
  v23 = CFArrayCreateMutable(v6, 0, 0);
  v24 = v23;
  if (v22)
  {
    if (v23)
    {
      v25 = CFArrayGetCount(FactoriesForPlugInTypeInPlugIn);
      if (v25 >= 1)
      {
        v26 = v25;
        v27 = 0;
        while (1)
        {
          v28 = CFArrayGetValueAtIndex(FactoriesForPlugInTypeInPlugIn, v27);
          v29 = CFPlugInInstanceCreate(0, v28, pluginType);
          if (!v29)
          {
            break;
          }

          v30 = v29;
          v31 = *(*v29 + 8);
          v32 = CFUUIDGetUUIDBytes(interfaceType);
          v31(v30, *&v32.byte0, *&v32.byte8, &value);
          (*(*v30 + 24))(v30);
          if (value)
          {
            matches[0] = 0;
            if ((*(*value + 40))(value, 0, servicea, matches))
            {
              if (__IOCFPlugInLog_onceToken != -1)
              {
                IOCreatePlugInInterfaceForService_cold_1();
              }

              v33 = __IOCFPlugInLog_log;
              if (os_log_type_enabled(__IOCFPlugInLog_log, OS_LOG_TYPE_ERROR))
              {
                *entryID = 138412290;
                *&entryID[4] = pluginType;
                _os_log_error_impl(&dword_197195000, v33, OS_LOG_TYPE_ERROR, "probe failed for plugin for %@", entryID, 0xCu);
              }

              (*(*value + 24))(value);
            }

            else
            {
              v38 = CFArrayGetCount(v24);
              if (v38 < 1)
              {
                v40 = 0;
              }

              else
              {
                v39 = v38;
                v40 = 0;
                while (1)
                {
                  v41 = matches[0];
                  if (v41 > CFArrayGetValueAtIndex(v24, v40))
                  {
                    break;
                  }

                  if (v39 == ++v40)
                  {
                    v40 = v39;
                    break;
                  }
                }
              }

              CFArrayInsertValueAtIndex(v22, v40, value);
              CFArrayInsertValueAtIndex(v24, v40, matches[0]);
            }

            goto LABEL_89;
          }

          if (__IOCFPlugInLog_onceToken != -1)
          {
            IOCreatePlugInInterfaceForService_cold_1();
          }

          v37 = __IOCFPlugInLog_log;
          if (os_log_type_enabled(__IOCFPlugInLog_log, OS_LOG_TYPE_ERROR))
          {
            *entryID = 138412290;
            *&entryID[4] = pluginType;
            v35 = v37;
            v36 = "failed to get interface for plugin for %@";
LABEL_81:
            _os_log_error_impl(&dword_197195000, v35, OS_LOG_TYPE_ERROR, v36, entryID, 0xCu);
          }

LABEL_89:
          if (++v27 == v26)
          {
            goto LABEL_90;
          }
        }

        if (__IOCFPlugInLog_onceToken != -1)
        {
          IOCreatePlugInInterfaceForService_cold_1();
        }

        v34 = __IOCFPlugInLog_log;
        if (!os_log_type_enabled(__IOCFPlugInLog_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_89;
        }

        *entryID = 138412290;
        *&entryID[4] = pluginType;
        v35 = v34;
        v36 = "failed to create instance for plugin for %@";
        goto LABEL_81;
      }
    }
  }

LABEL_90:
  v42 = CFArrayGetCount(v22);
  if (v42 < 1)
  {
    goto LABEL_107;
  }

  v43 = v42;
  v44 = 0;
  v45 = 0;
  v46 = servicea;
  do
  {
    v47 = CFArrayGetValueAtIndex(v22, v44);
    value = v47;
    if (v45)
    {
      v45 = 1;
LABEL_100:
      (*(*value + 24))(value);
      goto LABEL_101;
    }

    v48 = (*(*v47 + 48))(v47, 0, v46);
    if (v48)
    {
      v49 = v48;
      if (__IOCFPlugInLog_onceToken != -1)
      {
        IOCreatePlugInInterfaceForService_cold_1();
      }

      v50 = __IOCFPlugInLog_log;
      if (os_log_type_enabled(__IOCFPlugInLog_log, OS_LOG_TYPE_ERROR))
      {
        v51 = mach_error_string(v49);
        *entryID = 136315394;
        *&entryID[4] = v51;
        v76 = 2112;
        *v77 = pluginType;
        _os_log_error_impl(&dword_197195000, v50, OS_LOG_TYPE_ERROR, "start failed (%s) for plugin for %@", entryID, 0x16u);
      }

      v45 = 0;
      v46 = servicea;
      goto LABEL_100;
    }

    *theInterface = value;
    *theScore = CFArrayGetValueAtIndex(v24, v44);
    v45 = 1;
LABEL_101:
    ++v44;
  }

  while (v43 != v44);
  if (v45)
  {
    matched = 0;
  }

  else
  {
    matched = -536870210;
  }

LABEL_107:
  CFRelease(FactoriesForPlugInTypeInPlugIn);
  if (v22)
  {
    CFRelease(v22);
  }

  if (v24)
  {
    v21 = v24;
LABEL_58:
    CFRelease(v21);
  }

LABEL_116:
  v53 = *MEMORY[0x1E69E9840];
  return matched;
}

void __fetchAssertionCategoryPolicies_block_invoke()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  if (v0)
  {
    v1 = v0;
    xpc_dictionary_set_BOOL(v0, "assertionUpdateCategoryPolicy", 1);
    v2 = gAssertionConnection;
    PMQueue = getPMQueue();
    xpc_connection_send_message_with_reply(v2, v1, PMQueue, &__block_literal_global_51);

    xpc_release(v1);
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
    v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v4)
    {
      __fetchAssertionCategoryPolicies_block_invoke_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

uint64_t registerForAssertionPolicy()
{
  v0 = assertions_log;
  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v1 = &v7;
      v2 = v0;
LABEL_6:
      _os_log_impl(&dword_197195000, v2, OS_LOG_TYPE_DEFAULT, "Registering for assertion policy changes", v1, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v2 = MEMORY[0x1E69E9C10];
    v1 = buf;
    goto LABEL_6;
  }

  out_token = 0;
  PMQueue = getPMQueue();
  return notify_register_dispatch("com.apple.powerd.assertionpolicy", &out_token, PMQueue, &__block_literal_global_55);
}

void _IOGetWithUUIDKey(CFStringRef uuidStr, uint64_t a2, uint64_t a3)
{
  v5 = CFUUIDCreateFromString(0, uuidStr);
  if (v5)
  {
    v6 = v5;
    if (CFEqual(v5, *(a3 + 8)))
    {
      *a3 = a2;
    }

    CFRelease(v6);
  }
}

void fetchAssertionCategoryPolicies()
{
  if (gAssertionConnection)
  {
    if (fetchAssertionCategoryPolicies_onceToken != -1)
    {
      fetchAssertionCategoryPolicies_cold_1();
    }
  }

  else if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      fetchAssertionCategoryPolicies_cold_2();
    }
  }

  else
  {
    v0 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v0)
    {
      fetchAssertionCategoryPolicies_cold_3(v0, v1, v2, v3, v4, v5, v6, v7);
    }
  }
}

void __fetchAssertionCategoryPolicies_block_invoke_48(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x19A8DC620](a2) == MEMORY[0x1E69E9E80])
  {
    if (xpc_dictionary_get_value(a2, "assertionUpdateCategoryPolicy"))
    {
      v3 = _CFXPCCreateCFObjectFromXPCObject();
      gAssertionCategoryPolicies = v3;
      v4 = assertions_log;
      if (assertions_log)
      {
        if (!os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v15 = 138412290;
        v16 = v3;
        v5 = v4;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v15 = 138412290;
        v16 = v3;
        v5 = MEMORY[0x1E69E9C10];
      }

      _os_log_impl(&dword_197195000, v5, OS_LOG_TYPE_DEFAULT, "Received assertion category policies from powerd %@", &v15, 0xCu);
    }
  }

  else if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      __fetchAssertionCategoryPolicies_block_invoke_48_cold_1();
    }
  }

  else
  {
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      __fetchAssertionCategoryPolicies_block_invoke_48_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
}

void __OSKextInitialize()
{
  v44 = *MEMORY[0x1E69E9840];
  *v43 = xmmword_1E74A9060;
  *v40 = xmmword_1E74A9070;
  v41 = *&off_1E74A9080;
  v42 = xmmword_1E74A9090;
  v0 = *MEMORY[0x1E695E500];
  v39[0] = *MEMORY[0x1E695E4F0];
  v39[1] = v0;
  v39[2] = *MEMORY[0x1E695E138];
  v39[3] = @"OSBundleCompatibleVersion";
  v39[4] = @"OSBundleIsInterface";
  v39[5] = @"OSKernelResource";
  v39[6] = @"OSBundleCPUType";
  v39[7] = @"OSBundleCPUSubtype";
  v39[8] = @"OSBundlePath";
  v39[9] = @"OSBundleUUID";
  v39[10] = @"OSBundleStarted";
  v39[11] = @"OSBundleLoadTag";
  v39[12] = @"OSBundleLoadAddress";
  v39[13] = @"OSBundleLoadSize";
  v39[14] = @"OSBundleWiredSize";
  v39[15] = @"OSBundlePrelinked";
  v39[16] = @"OSBundleDependencies";
  v39[17] = @"OSBundleRetainCount";
  *v36 = xmmword_1E74A90A0;
  v37 = off_1E74A90B0;
  v38 = @"OSBundleIsInterface";
  memset(&context, 0, sizeof(context));
  v34 = 0u;
  v35 = 0u;
  memset(&v31, 0, sizeof(v31));
  __sOSKextInitializing = 1;
  __kOSKextTypeID = _CFRuntimeRegisterClass();
  v1 = *MEMORY[0x1E695E480];
  CFAllocatorGetContext(*MEMORY[0x1E695E480], &context);
  context.retain = 0;
  context.release = 0;
  v2 = CFAllocatorCreate(v1, &context);
  if (v2)
  {
    v8 = v2;
    values[0] = CFURLCreateFromFileSystemRepresentation(v2, "/System/Library/Extensions", 26, 1u);
    values[1] = CFURLCreateFromFileSystemRepresentation(v8, "/Library/Extensions", 19, 1u);
    if (stat("/System/Library/DriverExtensions", &v31))
    {
      v9 = 2;
    }

    else
    {
      *&v34 = CFURLCreateFromFileSystemRepresentation(v8, "/System/Library/DriverExtensions", 32, 1u);
      v9 = 3;
    }

    if (!stat("/Library/DriverExtensions", &v31))
    {
      values[v9++] = CFURLCreateFromFileSystemRepresentation(v8, "/Library/DriverExtensions", 25, 1u);
    }

    if (!stat("/Library/Apple/System/Library/Extensions", &v31))
    {
      values[v9++] = CFURLCreateFromFileSystemRepresentation(v8, "/Library/Apple/System/Library/Extensions", 40, 1u);
    }

    if (!stat("/AppleInternal/Library/Extensions", &v31))
    {
      values[v9++] = CFURLCreateFromFileSystemRepresentation(v8, "/AppleInternal/Library/Extensions", 33, 1u);
    }

    v15 = 0;
    do
    {
      if (!values[v15])
      {
        goto LABEL_22;
      }

      ++v15;
    }

    while (v9 != v15);
    v16 = CFArrayCreate(v8, values, v9, MEMORY[0x1E695E9C0]);
    __sOSKextSystemExtensionsFolderURLs = v16;
    if (v16)
    {
      v17 = MEMORY[0x1E695E9C0];
      __sOSKextPackageTypeValues = CFArrayCreate(v1, v43, 2, MEMORY[0x1E695E9C0]);
      __sOSKextOSBundleRequiredValues = CFArrayCreate(v1, v40, 6, v17);
      __sOSKextInfoEssentialKeys = CFArrayCreate(v1, v39, 18, v17);
      __sOSKextInfoKextOnlyKeys = CFArrayCreate(v1, v36, 5, v17);
      if (__sOSAllKexts)
      {
        goto LABEL_20;
      }

      v18 = *(v17 + 16);
      *&v30.version = *v17;
      *&v30.release = v18;
      v30.equal = *(v17 + 32);
      v30.retain = 0;
      v30.release = 0;
      v16 = CFArrayCreateMutable(v1, 0, &v30);
      __sOSAllKexts = v16;
      if (v16)
      {
LABEL_20:
        if (__sOSKextsByURL)
        {
          goto LABEL_21;
        }

        v19 = *(MEMORY[0x1E695E9E8] + 16);
        *&v30.version = *MEMORY[0x1E695E9E8];
        *&v30.release = v19;
        v30.equal = *(MEMORY[0x1E695E9E8] + 32);
        v30.retain = 0;
        v30.release = 0;
        v20 = MEMORY[0x1E695E9D8];
        __sOSKextsByURL = CFDictionaryCreateMutable(v1, 0, MEMORY[0x1E695E9D8], &v30);
        Mutable = CFDictionaryCreateMutable(v1, 0, v20, &v30);
        __sOSKextsByIdentifier = Mutable;
        if (__sOSKextsByURL)
        {
          if (Mutable)
          {
LABEL_21:
            __sOSNewKmodInfoKernelVersion = OSKextParseVersionString("6.0");
            OSKextSetArchitecture(0, v22, v23, v24, v25, v26, v27, v28);
            goto LABEL_24;
          }
        }

LABEL_22:
        v16 = 0;
      }
    }

    OSKextLog(v16, 17, "Memory allocation failure.", v10, v11, v12, v13, v14, v30.version);
LABEL_24:
    CFRelease(v8);
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v3, v4, v5, v6, v7, v30.version);
  }

  __sOSKextInitializing = 0;
  v29 = *MEMORY[0x1E69E9840];
}

uint64_t OSKextParseVersionString(char *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *a1;
  if (!v2)
  {
    return -1;
  }

  v3 = __vers_digit_for_char(v2);
  if ((v3 & 0x80000000) != 0)
  {
    return -1;
  }

  v4 = v3;
  v5 = a1 + 1;
  v42 = v5;
  v6 = 3;
  do
  {
    v7 = *v5;
    if (v7 <= 0x20 && ((1 << v7) & 0x100002601) != 0)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v42 = v5;
      goto LABEL_17;
    }

    LOBYTE(v9) = *v5;
    if ((v7 - 58) < 0xF6u)
    {
      v42 = v5;
      result = -1;
      v17 = v7 - 46;
      if (v17 > 0x38)
      {
        return result;
      }

      if (((1 << v17) & 0x158000000000000) != 0)
      {
        v15 = 0;
        goto LABEL_22;
      }

      if (v17)
      {
        return result;
      }

LABEL_32:
      v42 = ++v5;
      goto LABEL_33;
    }

    v10 = __vers_digit_for_char(v7);
    if ((v10 & 0x80000000) != 0)
    {
      v42 = v5;
      return -1;
    }

    v4 = 10 * v4 + v10;
    ++v5;
    --v6;
  }

  while (v6);
  v42 = v5;
  v11 = *v5;
  if (v11 == 46)
  {
    goto LABEL_32;
  }

  if ((v11 - 58) > 0xFFFFFFF5)
  {
    return -1;
  }

LABEL_33:
  v15 = 0;
  v21 = 4;
  while (1)
  {
    v22 = *v5;
    if (v22 <= 0x20 && ((1 << v22) & 0x100002601) != 0)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_17;
    }

    LOBYTE(v9) = *v5;
    if ((v22 - 58) < 0xF6u)
    {
      break;
    }

    v24 = __vers_digit_for_char(v22);
    if ((v24 & 0x80000000) != 0)
    {
      return -1;
    }

    v15 = 10 * v15 + v24;
    v42 = ++v5;
    if (!--v21)
    {
      v25 = *v5;
      if (v25 != 46)
      {
        if ((v25 - 58) > 0xFFFFFFF5)
        {
          return -1;
        }

        goto LABEL_63;
      }

LABEL_62:
      v42 = ++v5;
LABEL_63:
      v14 = 0;
      v34 = v5 + 1;
      v35 = 4;
      while (1)
      {
        v36 = *(v34 - 1);
        if (v36 <= 0x20 && ((1 << v36) & 0x100002601) != 0)
        {
          goto LABEL_27;
        }

        LOBYTE(v9) = *(v34 - 1);
        if ((v36 - 58) < 0xF6u)
        {
          v39 = v36 - 97;
          v18 = v39 > 5;
          v40 = (1 << v39) & 0x2B;
          if (v18 || v40 == 0)
          {
            return -1;
          }

          goto LABEL_23;
        }

        v38 = __vers_digit_for_char(v36);
        if ((v38 & 0x80000000) != 0)
        {
          return -1;
        }

        v14 = 10 * v14 + v38;
        v42 = v34++;
        if (!--v35)
        {
          v9 = *(v34 - 1);
          if (v9 == 46)
          {
            v42 = v34;
            LOBYTE(v9) = *v34;
            goto LABEL_23;
          }

          if ((v9 - 58) <= 0xF5u)
          {
            goto LABEL_23;
          }

          return -1;
        }
      }
    }
  }

  result = -1;
  v33 = v22 - 46;
  if (v33 > 0x38)
  {
    return result;
  }

  if (((1 << v33) & 0x158000000000000) == 0)
  {
    if (v33)
    {
      return result;
    }

    goto LABEL_62;
  }

LABEL_22:
  v14 = 0;
LABEL_23:
  v18 = v9 > 0x20u;
  v19 = (1 << v9) & 0x100002601;
  if (!v18 && v19 != 0)
  {
LABEL_27:
    v13 = 0;
LABEL_17:
    v16 = 9;
    return v13 + 1000000000000 * v4 + 10000 * v14 + (1000 * v16) + 100000000 * v15;
  }

  v26 = __OSKextVersionStageForString(&v42);
  if (v26)
  {
    v16 = v26;
    v27 = 0;
    v13 = 0;
    v28 = v42 + 1;
    do
    {
      v29 = *(v28 - 1);
      if (v29 <= 0x20 && ((1 << v29) & 0x100002601) != 0)
      {
        if (!v27)
        {
          return -1;
        }

        goto LABEL_75;
      }

      if ((v29 - 58) < 0xF6u)
      {
        return -1;
      }

      v31 = __vers_digit_for_char(v29);
      if ((v31 & 0x80000000) != 0)
      {
        return -1;
      }

      v13 = 10 * v13 + v31;
      v42 = v28;
      --v27;
      ++v28;
    }

    while (v27 != -3);
    v32 = *(v28 - 1);
    if (v32 <= 0x20 && ((1 << v32) & 0x100002600) != 0)
    {
      if (v13 > 255)
      {
        return -1;
      }
    }

    else
    {
      result = -1;
      if (*(v28 - 1) || v13 > 255)
      {
        return result;
      }
    }

LABEL_75:
    if (v16 == 7 && !v13)
    {
      return -1;
    }

    return v13 + 1000000000000 * v4 + 10000 * v14 + (1000 * v16) + 100000000 * v15;
  }

  return -1;
}

uint64_t __vers_digit_for_char(int a1)
{
  if ((a1 - 48) >= 0xA)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (a1 - 48);
  }
}

void IOHIDEventSystemClientSetDispatchQueue(uint64_t a1, NSObject *a2)
{
  if (*(a1 + 400))
  {
    IOHIDEventSystemClientSetDispatchQueue_cold_1();
  }

  __IOHIDEventSystemClientSetupAsyncSupport(a1);
  label = dispatch_queue_get_label(a2);
  if (!*label)
  {
    label = "IOHIDEventSystemClientDispatchQueue";
  }

  v5 = dispatch_queue_create_with_target_V2(label, 0, a2);
  *(a1 + 400) = v5;
  if (v5)
  {
    _IOHIDObjectInternalRetain(a1);
    v6 = *(a1 + 400);
    v7 = dispatch_mach_create();
    *(a1 + 296) = v7;
    if (v7)
    {
      _IOHIDObjectInternalRetain(a1);
      v8 = *(a1 + 400);
      v9 = dispatch_mach_create();
      *(a1 + 72) = v9;
      if (!v9)
      {
        _IOHIDObjectInternalRelease(a1);
        dispatch_release(*(a1 + 400));
      }
    }

    else
    {
      _IOHIDObjectInternalRelease(a1);
    }
  }
}

io_registry_entry_t IORegistryGetRootEntry(mach_port_t mainPort)
{
  v2 = mainPort;
  if (!mainPort)
  {
    mainPorta = 0;
    if (IOMasterPort(0, &mainPorta))
    {
      v2 = 0;
    }

    else
    {
      v2 = mainPorta;
    }
  }

  io_registry_get_root_entry(v2);
  if (v2 && v2 != mainPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
  }

  return 0;
}

uint64_t IOHIDEventSystemClientActivate(uint64_t result)
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
  if (atomic_fetch_or((result + 312), 1u))
  {
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    v3 = *(v2 + 40);
    if (v3)
    {
      IOMIGMachPortScheduleWithDispatchQueue(v3, *(v2 + 400));
    }

    v4 = *(v2 + 296);
    CFMachPortGetPort(*(v2 + 280));
    dispatch_mach_connect();
    v5 = *(v2 + 56);
    if (v5)
    {
      v6 = *(v2 + 72);
      CFMachPortGetPort(v5);
      dispatch_mach_connect();
    }

    os_unfair_recursive_lock_unlock();
    __IOHIDEventSystemClientStartQueue(v2);
    v7 = *MEMORY[0x1E69E9840];

    return __IOHIDEventSystemClientStartFilter(v2);
  }

  return result;
}

char **OSKextGetRunningKernelArchitecture(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = -1;
  v14 = -1;
  result = OSKextGetRunningKernelArchitecture_result;
  if (OSKextGetRunningKernelArchitecture_result != &__sOSKextUnknownArchInfo)
  {
    if (OSKextGetRunningKernelArchitecture_result)
    {
      return result;
    }

    goto LABEL_10;
  }

  RootEntry = IORegistryGetRootEntry(0);
  if (!RootEntry || (v10 = RootEntry, !__OSKextReadRegistryNumberProperty(RootEntry, @"OSKernelCPUType", kCFNumberSInt32Type, &v14)) || !__OSKextReadRegistryNumberProperty(v10, @"OSKernelCPUSubtype", kCFNumberSInt32Type, &v13))
  {
LABEL_9:
    result = OSKextGetRunningKernelArchitecture_result;
    if (OSKextGetRunningKernelArchitecture_result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v11 = NXGetArchInfoFromCpuType(v14, v13);
  OSKextGetRunningKernelArchitecture_result = v11;
  if (v11)
  {
    OSKextLog(0, 262148, "Running kernel architecture is %s.", a4, a5, a6, a7, a8, v11->name);
    goto LABEL_9;
  }

LABEL_10:
  OSKextLog(0, 81, "Can't read running kernel architecture.", a4, a5, a6, a7, a8, v12);
  OSKextGetRunningKernelArchitecture_result = &__sOSKextUnknownArchInfo;
  return &__sOSKextUnknownArchInfo;
}

uint64_t OSKextSetArchitecture(const NXArchInfo *RunningKernelArchitecture, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = RunningKernelArchitecture;
  v9 = __sOSKextArchInfo;
  if ((__sOSKextInitializing & 1) == 0)
  {
    RunningKernelArchitecture = pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  }

  if (v9)
  {
    v10 = v9 == v8;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    RunningKernelArchitecture = __sOSKextArchInfo;
    goto LABEL_14;
  }

  __sOSKextArchInfo = 0;
  if (!v8)
  {
    v23 = 1;
LABEL_16:
    RunningKernelArchitecture = OSKextGetRunningKernelArchitecture(RunningKernelArchitecture, a2, a3, a4, a5, a6, a7, a8);
    __sOSKextArchInfo = RunningKernelArchitecture;
    v22 = v23;
    goto LABEL_19;
  }

  RunningKernelArchitecture = NXGetArchInfoFromCpuType(v8->cputype, v8->cpusubtype);
  __sOSKextArchInfo = RunningKernelArchitecture;
  if (RunningKernelArchitecture)
  {
LABEL_14:
    v22 = 1;
    goto LABEL_19;
  }

  name = v8->name;
  if (v8->name && *name)
  {
    cputype = v8->cputype;
    cpusubtype = v8->cpusubtype;
    OSKextLog(0, 23, "Architecture %s not found by CPU info (type %d, subtype %d), trying by name.", a4, a5, a6, a7, a8, name);
    RunningKernelArchitecture = NXGetArchInfoFromName(v8->name);
    __sOSKextArchInfo = RunningKernelArchitecture;
    if (!RunningKernelArchitecture)
    {
      v16 = v8->name;
      v34 = *OSKextGetRunningKernelArchitecture(0, v14, v15, a4, a5, a6, a7, a8);
      OSKextLog(0, 23, "Architecture %s not found by name, using running kernel architecture %s.", v17, v18, v19, v20, v21, v16);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v24 = v8->cputype;
  v35 = v8->cpusubtype;
  v37 = *OSKextGetRunningKernelArchitecture(0, v11, v12, a4, a5, a6, a7, a8);
  OSKextLog(0, 7, "Unknown CPU info given (type %d, subtype %d), using running kernel architecture %s.", v25, v26, v27, v28, v29, v24);
LABEL_18:
  v23 = 0;
  v22 = 0;
  RunningKernelArchitecture = __sOSKextArchInfo;
  if (!__sOSKextArchInfo)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (v9 == RunningKernelArchitecture)
  {
    v31 = RunningKernelArchitecture->name;
    if (!RunningKernelArchitecture->name)
    {
      v31 = "(unknown)";
    }

    OSKextLog(0, 23, "Kext library architecture is %s (unchanged).", a4, a5, a6, a7, a8, v31);
  }

  else
  {
    if ((__sOSKextInitializing & 1) == 0 && __sOSAllKexts)
    {
      CFArrayGetCount(__sOSAllKexts);
      RunningKernelArchitecture = __sOSKextArchInfo;
    }

    v30 = RunningKernelArchitecture->name;
    if (!RunningKernelArchitecture->name)
    {
      v30 = "(unknown)";
    }

    OSKextLog(0, 262166, "Kext library architecture set to %s%s.", a4, a5, a6, a7, a8, v30);
    if ((__sOSKextInitializing & 1) == 0)
    {
      if (__sOSKextsByURL)
      {
        CFDictionaryApplyFunction(__sOSKextsByURL, __OSKextReinitApplierFunction, 0);
      }

      OSKextFlushLoadInfo(0, 1);
    }
  }

  return v22;
}

uint64_t io_registry_get_root_entry(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xB0B00000000;
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

uint64_t __OSKextReadRegistryNumberProperty(io_registry_entry_t a1, const __CFString *a2, CFNumberType a3, void *a4)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, *MEMORY[0x1E695E480], 0);
  if (CFProperty)
  {
    v12 = CFProperty;
    v13 = CFGetTypeID(CFProperty);
    if (v13 == CFNumberGetTypeID())
    {
      Value = CFNumberGetValue(v12, a3, a4);
    }

    else
    {
      OSKextLog(0, 81, "Can't read kernel CPU info from IORegistry (absent or wrong type).", v14, v15, v16, v17, v18, v21);
      Value = 0;
    }

    CFRelease(v12);
  }

  else
  {
    OSKextLog(0, 81, "Can't read kernel CPU info from IORegistry (absent or wrong type).", v7, v8, v9, v10, v11, v21);
    return 0;
  }

  return Value;
}

void OSKextVLog(uint64_t a1, int a2, const char *a3, va_list a4)
{
  v8 = a4;
  v7[0] = 0;
  if (__sOSKextLogOutputFunction)
  {
    v6 = a1;
    if (__OSKextShouldLog(a1, a2))
    {
      v7[1] = v8;
      vasprintf(v7, a3, v8);
      if (v7[0])
      {
        __sOSKextLogOutputFunction(v6, a2, "%s", v7[0]);
        if (v7[0])
        {
          free(v7[0]);
        }
      }
    }
  }
}

BOOL __OSKextShouldLog(uint64_t a1, int a2)
{
  if (!a1 || (*(a1 + 92) & 0x10) != 0)
  {
    a2 |= 8u;
  }

  v2 = a2 & 7;
  if ((a2 & 7) == 0)
  {
    return 1;
  }

  v3 = __sUserLogFilter & 7;
  if (v2 <= 3 && v2 <= v3)
  {
    return 1;
  }

  if (((__sUserLogFilter | a2) & 8) == 0)
  {
    return 0;
  }

  return (a2 & __sUserLogFilter & 0xFFFFFF0) != 0 && v2 <= v3;
}

os_log_t __setupLogging_block_invoke()
{
  result = os_log_create("com.apple.iokit", "assertions");
  assertions_log = result;
  return result;
}

uint64_t IOPMCopyAssertionActivityUpdateWithCallback(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v4 = 3758097084;
  result = 3758097090;
  if (a1 && a2 && a3)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", MEMORY[0x1E69E96A0], 0);
    if (mach_service)
    {
      v9 = mach_service;
      PMQueue = getPMQueue();
      xpc_connection_set_target_queue(v9, PMQueue);
      xpc_connection_set_event_handler(v9, &__block_literal_global_226);
      xpc_connection_resume(v9);
      v11 = xpc_dictionary_create(0, 0, 0);
      if (v11)
      {
        v12 = v11;
        xpc_dictionary_set_BOOL(v11, "assertionCopyActivityUpdate", 1);
        xpc_dictionary_set_uint64(v12, "assertionActivityUpdateRefCnt", *a1);
        v13 = getPMQueue();
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 0x40000000;
        v30[2] = __IOPMCopyAssertionActivityUpdateWithCallback_block_invoke_229;
        v30[3] = &unk_1E74A9968;
        v30[4] = a3;
        v30[5] = a1;
        v30[6] = a2;
        v30[7] = v9;
        xpc_connection_send_message_with_reply(v9, v12, v13, v30);
        xpc_release(v12);
        v4 = 0;
      }

      else if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
        {
          IOPMCopyActiveAsyncAssertionsByProcess_cold_5();
        }
      }

      else
      {
        v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v22)
        {
          IOPMCopyActiveAsyncAssertionsByProcess_cold_6(v22, v23, v24, v25, v26, v27, v28, v29);
        }
      }

      xpc_release(v9);
      return v4;
    }

    else
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
        {
          IOPMCopyActiveAsyncAssertionsByProcess_cold_7();
        }
      }

      else
      {
        v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v14)
        {
          IOPSGaugingMitigationGetState_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
        }
      }

      return 3758097084;
    }
  }

  return result;
}

uint64_t io_connect_get_service(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xB0100000000;
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

CFPropertyListRef IOPMCopyAssertionActivityAggregateWithAllocator(const __CFAllocator *a1)
{
  v9 = -536870199;
  v8 = 0;
  memset(length, 0, sizeof(length));
  _pm_connect(&v8);
  if (!v8)
  {
    return 0;
  }

  v2 = io_pm_assertion_activity_aggregate(v8, &length[1], length, &v9);
  if (v2 | v9 || (v3 = CFDataCreateWithBytesNoCopy(0, *&length[1], length[0], *MEMORY[0x1E695E498])) == 0)
  {
    v5 = 0;
  }

  else
  {
    v4 = v3;
    v5 = CFPropertyListCreateWithData(a1, v3, 1uLL, 0, 0);
    CFRelease(v4);
  }

  if (*&length[1] && length[0])
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], *&length[1], length[0]);
  }

  if (v8)
  {
    _pm_disconnect();
  }

  return v5;
}

uint64_t io_connect_map_memory_into_task(unsigned int a1, int a2, int a3, uint64_t *a4, uint64_t *a5, int a6)
{
  v10 = 1;
  v11 = a3;
  v12 = 0x13000000000000;
  v13 = *MEMORY[0x1E69E99E0];
  v14 = a2;
  v15 = *a4;
  v16 = *a5;
  v17 = a6;
  *&v9.msgh_bits = 0x4880001513;
  *&v9.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v9.msgh_voucher_port = 0xB2F00000000;
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

uint64_t io_pm_assertion_activity_aggregate(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x11D4A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(msg, 3162115, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 73134)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v11 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = *&msg[32];
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }

          goto LABEL_25;
        }

        v11 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v16) == 1)
        {
          v12 = DWORD1(v16);
          if (DWORD1(v16) == v17)
          {
            v11 = 0;
            *a2 = *&msg[28];
            *a3 = v12;
            *a4 = DWORD1(v17);
            goto LABEL_26;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t (*initrosetta_is_current_process_translated())()
{
  v0 = RosettaLibrary_libLibrary;
  if (!RosettaLibrary_libLibrary)
  {
    v0 = dlopen("/usr/lib/libRosetta.dylib", 2);
    RosettaLibrary_libLibrary = v0;
  }

  result = dlsym(v0, "rosetta_is_current_process_translated");
  dynLinkrosetta_is_current_process_translated[0] = result;
  if (result)
  {

    return result();
  }

  return result;
}

uint64_t (*initrosetta_is_current_process_translated_0())()
{
  v0 = RosettaLibrary_libLibrary_0;
  if (!RosettaLibrary_libLibrary_0)
  {
    v0 = dlopen("/usr/lib/libRosetta.dylib", 2);
    RosettaLibrary_libLibrary_0 = v0;
  }

  result = dlsym(v0, "rosetta_is_current_process_translated");
  _MergedGlobals[0] = result;
  if (result)
  {

    return result();
  }

  return result;
}

uint64_t (*initrosetta_is_current_process_translated_1())()
{
  v0 = RosettaLibrary_libLibrary_1;
  if (!RosettaLibrary_libLibrary_1)
  {
    v0 = dlopen("/usr/lib/libRosetta.dylib", 2);
    RosettaLibrary_libLibrary_1 = v0;
  }

  result = dlsym(v0, "rosetta_is_current_process_translated");
  dynLinkrosetta_is_current_process_translated_0 = result;
  if (result)
  {

    return result();
  }

  return result;
}

kern_return_t IODestroyPlugInInterface(IOCFPlugInInterface **interface)
{
  v2 = ((*interface)->Stop)(interface);
  ((*interface)->Release)(interface);
  return v2;
}

uint64_t io_connect_unmap_memory_from_task(unsigned int a1, int a2, int a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 1;
  v10 = a3;
  v11 = 0x13000000000000;
  v12 = *MEMORY[0x1E69E99E0];
  v13 = a2;
  v14 = a4;
  *&v8.msgh_bits = 0x3C80001513;
  *&v8.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v8.msgh_voucher_port = 0xB3000000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v8.msgh_local_port);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(v8.msgh_local_port);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(&v8);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void __IOPMCopyAssertionActivityUpdateWithCallback_block_invoke_229(uint64_t a1, void *a2)
{
  if (MEMORY[0x19A8DC620](a2) == MEMORY[0x1E69E9E80])
  {
    value = xpc_dictionary_get_value(a2, "assertionActivityUpdateData");
    uint64 = xpc_dictionary_get_uint64(a2, "assertionActivityUpdateRefCnt");
    v6 = xpc_dictionary_get_BOOL(a2, "assertionActivityUpdateOverflow");
    v7 = xpc_dictionary_get_value(a2, "assertionActivityUpdateProcessList");
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        __IOPMCopyAssertionActivityUpdateWithCallback_block_invoke_229_cold_3();
        if (!value)
        {
LABEL_16:
          if (assertions_log)
          {
            if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
            {
              __IOPMCopyAssertionActivityUpdateWithCallback_block_invoke_229_cold_5();
            }
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            __IOPMCopyAssertionActivityUpdateWithCallback_block_invoke_229_cold_6();
          }

          v16 = 0;
          if (!v7)
          {
            goto LABEL_22;
          }

          goto LABEL_14;
        }

LABEL_13:
        v16 = _CFXPCCreateCFObjectFromXPCObject();
        if (!v7)
        {
LABEL_22:
          v17 = 0;
          goto LABEL_23;
        }

LABEL_14:
        v17 = _CFXPCCreateCFObjectFromXPCObject();
LABEL_23:
        v18 = *(a1 + 48);
        **(a1 + 40) = uint64;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 0x40000000;
        v19[2] = __IOPMCopyAssertionActivityUpdateWithCallback_block_invoke_232;
        v19[3] = &unk_1E74A9940;
        v19[4] = *(a1 + 32);
        v19[5] = v16;
        v20 = v6;
        v19[6] = v17;
        dispatch_async(v18, v19);
        goto LABEL_24;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __IOPMCopyAssertionActivityUpdateWithCallback_block_invoke_229_cold_4();
      if (!value)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    if (!value)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      __IOPMCopyAssertionActivityUpdateWithCallback_block_invoke_229_cold_1();
    }
  }

  else
  {
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      __IOPMCopyAssertionActivityUpdateWithCallback_block_invoke_229_cold_2(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

LABEL_24:
  xpc_connection_cancel(*(a1 + 56));
}

__CFData *IOHIDEventCreateDataInternal(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26();
  Length = __IOHIDEventGetLength(v3, 0);
  if (!Length)
  {
    return 0;
  }

  v5 = Length;
  v6 = OUTLINED_FUNCTION_24();
  Mutable = CFDataCreateMutable(v6, v7);
  if (Mutable)
  {
    v9 = OUTLINED_FUNCTION_24();
    CFDataSetLength(v9, v10);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v13 = 0;
    __IOHIDEventReadBytesHelper(v2, MutableBytePtr, v5, &v13, 0);
  }

  return Mutable;
}

__CFData *IOHIDEventCreateCopy(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  result = IOHIDEventCreateDataInternal(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = __IOHIDEventCreateWithDataHelper(v2, result, 0);
    CFRelease(v4);
    return v5;
  }

  return result;
}

void *__IOHIDEventCreateWithDataHelper(int a1, CFDataRef theData, int a3)
{
  if (!theData || !CFDataGetBytePtr(theData) || CFDataGetLength(theData) < 28)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_24();

  return __IOHIDEventCreateWithBytesHelper(v5, v6, v7, a3);
}

uint64_t IOHIDEventSetTimeStamp(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (_MergedGlobals[0])
  {
    result = _MergedGlobals[0]();
    if (result)
    {
      if (off_1ED446908)
      {
        result = off_1ED446908(a2);
        a2 = result;
      }
    }
  }

  *(v3 + 8) = a2;
  *(v3 + 32) &= ~0x80u;
  return result;
}

uint64_t IOHIDVirtualServiceClientDispatchEvent(__IOHIDServiceClient *a1, uint64_t a2)
{
  v17 = 0;
  EventSystemClient = _IOHIDVirtuaServiceClientGetEventSystemClient(a1);
  RegistryID = IOHIDServiceClientGetRegistryID(a1);
  CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &v17);
  IOHIDEventSetSenderID(a2, v17);
  v6 = *MEMORY[0x1E695E480];
  DataInternal = IOHIDEventCreateDataInternal(*MEMORY[0x1E695E480], a2);
  v8 = _IOHIDCreateBinaryData(v6, DataInternal);
  if (!v8)
  {
    IOHIDVirtualServiceClientDispatchEvent_cold_2();
    v15 = v18;
    if (!DataInternal)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  os_unfair_recursive_lock_lock_with_options();
  v9 = *(EventSystemClient + 32);
  v10 = v17;
  BytePtr = CFDataGetBytePtr(v8);
  Length = CFDataGetLength(v8);
  v13 = io_hideventsystem_dispatch_event_for_virtual_service(v9, v10, BytePtr, Length);
  os_unfair_recursive_lock_unlock();
  if (!v13)
  {
    v15 = 1;
    if (!DataInternal)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = _IOHIDLogCategory(0xDu);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    IOHIDVirtualServiceClientDispatchEvent_cold_1();
  }

  v15 = 0;
  if (DataInternal)
  {
LABEL_8:
    CFRelease(DataInternal);
  }

LABEL_9:
  if (v8)
  {
    CFRelease(v8);
  }

  return v15;
}

const __CFArray *IOHIDEventSetFloatValueWithOptions(const __CFArray *result, int a2, uint64_t a3, double a4)
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

const __CFArray *IOHIDEventCreateDigitizerFingerEventWithQuality(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18)
{
  DigitizerEvent = IOHIDEventCreateDigitizerEvent(a1, a2, 2, a3, a4, a5, 0, a6, a9, a10, a11, a12, a13, a7, a8);
  v22 = DigitizerEvent;
  if (DigitizerEvent)
  {
    *(*(DigitizerEvent + 12) + 88) = 2;
    IOHIDEventSetFloatValueWithOptions(DigitizerEvent, 720913, 4026531840, a16);
    IOHIDEventSetFloatValueWithOptions(v22, 720914, 4026531840, a17);
    IOHIDEventSetFloatValueWithOptions(v22, 720915, 4026531840, a18);
    IOHIDEventSetFloatValueWithOptions(v22, 720916, 4026531840, a15);
    IOHIDEventSetFloatValueWithOptions(v22, 720917, 4026531840, a14);
    IOHIDEventSetFloatValueWithOptions(v22, 720922, 4026531840, 0.0);
  }

  return v22;
}

uint64_t io_hideventsystem_dispatch_event_for_virtual_service(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = a3;
  v10 = 16777472;
  v11 = a4;
  v12 = *MEMORY[0x1E69E99E0];
  v13 = a2;
  v14 = a4;
  v6 = 2147483667;
  v7 = a1;
  *name = xmmword_19723E150;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v6);
  }

  v4 = mach_msg(&v6, 1, 0x40u, 0, 0, 0, 0);
  if ((v4 - 268435459) <= 1)
  {
    if ((v6 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[0]);
    }

    mach_msg_destroy(&v6);
  }

  return v4;
}

uint64_t _Xio_hideventsystem_dispatch_event_for_virtual_service(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 64)
  {
    if (*(result + 39) == 1)
    {
      v3 = *(result + 40);
      if (v3 == *(result + 60))
      {
        result = _io_hideventsystem_dispatch_event_for_virtual_service(*(result + 12), *(result + 52), *(result + 28), v3);
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

uint64_t _io_hideventsystem_dispatch_event_for_virtual_service(unsigned int a1, const void *a2, uint64_t a3, unsigned int a4)
{
  v6 = a4;
  CFDataGetTypeID();
  v7 = OUTLINED_FUNCTION_1_15();
  v9 = _IOHIDUnserializeAndVMDeallocWithTypeID(v7, v6, v8);
  if (v9)
  {
    v10 = v9;
    v11 = IOMIGMachPortCacheCopy(a1);
    if (v11)
    {
      v12 = v11;
      v13 = CFGetTypeID(v11);
      if (v13 == IOHIDEventSystemConnectionGetTypeID())
      {
        v14 = CFGetAllocator(v12);
        v15 = IOHIDEventCreateWithDataInternal(v14, v10);
        if (v15)
        {
          v16 = v15;
          _IOHIDEventSystemConnectionDispatchEventForVirtualService(v12, a2, v15);
          CFRelease(v16);
        }
      }

      CFRelease(v12);
    }

    CFRelease(v10);
  }

  return 0;
}

void _IOHIDEventSystemConnectionDispatchEventForVirtualService(uint64_t a1, const void *a2, const void *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 280), a2);
  if (Value)
  {
    v5 = Value;
    v6 = _IOHIDServiceCopyDispatchQueue(Value);
    if (v6)
    {
      v7 = v6;
      CFRetain(v5);
      CFRetain(a3);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = ___IOHIDEventSystemConnectionDispatchEventForVirtualService_block_invoke;
      v8[3] = &__block_descriptor_tmp_136;
      v8[4] = v5;
      v8[5] = a3;
      dispatch_async(v7, v8);
      dispatch_release(v7);
    }
  }
}

uint64_t _IOHIDServiceCopyDispatchQueue(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    dispatch_retain(*(a1 + 80));
  }

  return v1;
}

uint64_t IOHIDEventCreateArrayOfEventsWithType(void *a1, int a2, unsigned int a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if ((a1[3] >> a2))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v16[3] = Mutable;
    v7 = a1[12];
    if (*(v7 + 4) == a2)
    {
      if (a3 >> 28 || (v8 = *(v7 + 8), (v8 & a3) != 0) || !(v8 | a3))
      {
        CFArrayAppendValue(Mutable, a1);
      }
    }

    v9 = a1[9];
    if (v9)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __IOHIDEventCreateArrayOfEventsWithType_block_invoke;
      v12[3] = &unk_1E74A8308;
      v13 = a2;
      v14 = a3;
      v12[4] = &v15;
      _IOHIDCFArrayApplyBlock(v9, v12);
    }
  }

  v10 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v10;
}

void __IOHIDEventCreateArrayOfEventsWithType_block_invoke(uint64_t a1, uint64_t a2)
{
  ArrayOfEventsWithType = IOHIDEventCreateArrayOfEventsWithType(a2, *(a1 + 40), *(a1 + 44));
  if (ArrayOfEventsWithType)
  {
    v4 = ArrayOfEventsWithType;
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v7.length = CFArrayGetCount(ArrayOfEventsWithType);
    v7.location = 0;
    CFArrayAppendArray(v5, v4, v7);

    CFRelease(v4);
  }
}

const void **__ActivityFunctionApplier(const void **a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ____ActivityFunctionApplier_block_invoke;
  v3[3] = &__block_descriptor_tmp_51;
  v3[4] = a2;
  return IOHIDNotificationSignalWithBlock(a1, v3);
}

void __IOHIDEventSystemConnectionActivityNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 424);
  v6 = dispatch_time(0, 1000000000 * *(a1 + 416));
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);

  __IOHIDEventSystemConnectionUpdateActivityState(a1, 1, a3);
}

void __IOHIDEventSystemConnectionUpdateActivityState(uint64_t a1, int a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 408) != a2)
  {
    if (a3)
    {
      Type = IOHIDEventGetType(a3);
      SenderID = IOHIDEventGetSenderID(a3);
    }

    else
    {
      Type = 0;
      SenderID = 0;
    }

    v8 = _IOHIDLogCategory(9u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 168);
      v10 = *(a1 + 408);
      *v19 = 136316162;
      *&v19[4] = v9;
      *&v19[12] = 1024;
      *&v19[14] = v10;
      *&v19[18] = 1024;
      *&v19[20] = a2;
      *&v19[24] = 2048;
      *&v19[26] = SenderID;
      *&v19[34] = 1024;
      *&v19[36] = Type;
      _os_log_impl(&dword_197195000, v8, OS_LOG_TYPE_INFO, "%s: HID activity: %d -> %d (service:0x%llx event:%d)", v19, 0x28u);
    }

    memset(v19, 0, sizeof(v19));
    *v19 = a2;
    if (a3)
    {
      v11 = IOHIDEventGetSenderID(a3);
      v12 = IOHIDEventGetType(a3);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    *&v19[24] = v11;
    *&v19[32] = v12;
    gettimeofday(&v19[8], 0);
    ++*(a1 + 412);
    os_unfair_recursive_lock_lock_with_options();
    v13 = *(a1 + 440);
    if (v13 || (v14 = CFGetAllocator(a1), v13 = _IOHIDSimpleQueueCreate(v14, 40, 50), (*(a1 + 440) = v13) != 0))
    {
      _IOHIDSimpleQueueEnqueue(v13, v19, 1);
    }

    os_unfair_recursive_lock_unlock();
    *(a1 + 408) = a2;
    v15 = CFGetAllocator(a1);
    v16 = CFNumberCreate(v15, kCFNumberSInt32Type, (a1 + 408));
    if (v16)
    {
      v17 = v16;
      _IOHIDEventSystemConnectionPropertyChanged(a1, @"HIDActivityState", v16);
      CFRelease(v17);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void processUserActivityMsg(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x19A8DC620](a2);
  if (v4 == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(a2, "UserActivityLevels");
    *(a1 + 64) = uint64;
    v14 = 1 << __clz(__rbit64(uint64));
    if (uint64)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = _Block_copy(*(a1 + 32));
    v17 = *(a1 + 64);
    v18 = *a1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __processUserActivityMsg_block_invoke;
    block[3] = &unk_1E74A7D10;
    block[4] = v16;
    block[5] = v17;
    block[6] = v15;
    v19 = block;
    PMQueue = v18;
    goto LABEL_30;
  }

  if (v4 != MEMORY[0x1E69E9E98])
  {
    goto LABEL_31;
  }

  if (a2 == MEMORY[0x1E69E9E18])
  {
    PMQueue = getPMQueue();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = __processUserActivityMsg_block_invoke_2;
    v22[3] = &__block_descriptor_tmp_15;
    v22[4] = a1;
    v19 = v22;
LABEL_30:
    dispatch_async(PMQueue, v19);
    goto LABEL_31;
  }

  if (a2 == MEMORY[0x1E69E9E38])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      processUserActivityMsg_cold_2();
    }
  }

  else if (a2 == MEMORY[0x1E69E9E20])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v25 = a1;
      _os_log_error_impl(&dword_197195000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Received connection invalid error for connection 0x%lx. UnregisterNotification", buf, 0xCu);
      if (!a1)
      {
        goto LABEL_31;
      }
    }

    else if (!a1)
    {
      goto LABEL_31;
    }

    UserActiveValidDict = getUserActiveValidDict();
    v6 = CFNumberCreate(0, kCFNumberSInt64Type, a1);
    if (CFDictionaryGetValue(UserActiveValidDict, v6))
    {
      CFDictionaryRemoveValue(UserActiveValidDict, v6);
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = *(a1 + 8);
      if (v7)
      {
        _Block_release(v7);
      }

      v8 = *(a1 + 32);
      if (v8)
      {
        _Block_release(v8);
      }

      v9 = *(a1 + 16);
      if (v9)
      {
        IONotificationPortDestroy(v9);
      }

      v10 = *(a1 + 24);
      if (v10)
      {
        IOObjectRelease(v10);
      }

      v11 = *(a1 + 40);
      if (v11)
      {
        notify_cancel(v11);
      }

      v12 = *(a1 + 48);
      if (v12)
      {
        xpc_release(v12);
      }

      if (*a1)
      {
        dispatch_release(*a1);
      }

      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      free(a1);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      processUserActivityMsg_cold_1();
    }
  }

LABEL_31:
  v21 = *MEMORY[0x1E69E9840];
}

void __processUserActivityMsg_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  (*(a1[4] + 16))();
  v4 = a1[4];

  _Block_release(v4);
}

__CFString *IOPMCopyUserActivityLevelDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (!a1)
  {
    v4 = @"Inactive";
LABEL_22:
    CFStringAppend(v3, v4);
    return v3;
  }

  if (a1)
  {
    CFStringAppend(Mutable, @"PresentActive");
    if ((a1 & 2) == 0)
    {
      if ((a1 & 0x10) != 0)
      {
LABEL_16:
        CFStringAppend(v3, @" ");
LABEL_17:
        CFStringAppend(v3, @"RemoteActive");
        if ((a1 & 0x20) != 0)
        {
          goto LABEL_18;
        }

        goto LABEL_12;
      }

LABEL_11:
      if ((a1 & 0x20) != 0)
      {
LABEL_18:
        CFStringAppend(v3, @" ");
        goto LABEL_19;
      }

LABEL_12:
      if ((a1 & 0x40) == 0)
      {
        return v3;
      }

      goto LABEL_20;
    }

    CFStringAppend(v3, @" ");
LABEL_15:
    CFStringAppend(v3, @"PresentPassive");
    if ((a1 & 0x10) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if ((a1 & 2) != 0)
  {
    goto LABEL_15;
  }

  if ((a1 & 0x10) != 0)
  {
    goto LABEL_17;
  }

  if ((a1 & 0x20) == 0)
  {
    if ((a1 & 0x40) == 0)
    {
      return v3;
    }

    goto LABEL_21;
  }

LABEL_19:
  CFStringAppend(v3, @"NotificationActive");
  if ((a1 & 0x40) != 0)
  {
LABEL_20:
    CFStringAppend(v3, @" ");
LABEL_21:
    v4 = @"AbsentWithDisplay";
    goto LABEL_22;
  }

  return v3;
}

uint64_t io_hideventsystem_create_virtual_service(mach_port_t a1, uint64_t a2, int a3, void *a4)
{
  v13 = 1;
  v14 = a2;
  LODWORD(v15) = 16777472;
  HIDWORD(v15) = a3;
  v16 = *MEMORY[0x1E69E99E0];
  v17 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1118A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&msg, 3162115, 0x38u, 0x34u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (msg.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (msg.msgh_id == 70126)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 44)
          {
            if (!msg.msgh_remote_port)
            {
              v9 = HIDWORD(v14);
              if (!HIDWORD(v14))
              {
                *a4 = v15;
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = HIDWORD(v14) == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v14);
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_26;
  }

  return v9;
}

void *IOHIDVirtualServiceClientCreateWithCallbacks(uint64_t cf, const void *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  key[0] = 0;
  if (!*(cf + 384) && !*(cf + 400))
  {
    IOHIDVirtualServiceClientCreateWithCallbacks_cold_2();
    return key[1];
  }

  v10 = CFGetAllocator(cf);
  v11 = _IOHIDCreateBinaryData(v10, a2);
  v12 = v11;
  if (v11)
  {
    BytePtr = CFDataGetBytePtr(v11);
    Length = CFDataGetLength(v12);
  }

  else
  {
    Length = 0;
    BytePtr = 0;
  }

  os_unfair_recursive_lock_lock_with_options();
  if (io_hideventsystem_create_virtual_service(*(cf + 32), BytePtr, Length, key) || !key[0])
  {
    v20 = _IOHIDLogCategory(0xDu);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      IOHIDVirtualServiceClientCreateWithCallbacks_cold_1();
    }

    v16 = 0;
  }

  else
  {
    v15 = CFGetAllocator(cf);
    v16 = CFNumberCreate(v15, kCFNumberSInt64Type, key);
    if (v16)
    {
      v17 = CFGetAllocator(cf);
      Virtual = _IOHIDServiceClientCreateVirtual(v17, cf, v16, a3, a4, a5);
      if (Virtual)
      {
        CFDictionarySetValue(*(cf + 104), key[0], Virtual);
      }

      else
      {
        io_hideventsystem_remove_virtual_service(*(cf + 32), key[0]);
      }

      goto LABEL_12;
    }
  }

  Virtual = 0;
LABEL_12:
  os_unfair_recursive_lock_unlock();
  if (v12)
  {
    CFRelease(v12);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return Virtual;
}

uint64_t _io_hideventsystem_create_virtual_service(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  OUTLINED_FUNCTION_26();
  v24 = *MEMORY[0x1E69E9840];
  *v6 = 0;
  v8 = v7;
  CFDictionaryGetTypeID();
  v9 = OUTLINED_FUNCTION_1_15();
  _IOHIDUnserializeAndVMDeallocWithTypeID(v9, v8, v10);
  v11 = OUTLINED_FUNCTION_4_7();
  if (v11)
  {
    v12 = v11;
    v13 = CFGetTypeID(v11);
    if (v13 == IOHIDEventSystemConnectionGetTypeID())
    {
      if (IOHIDEventSystemConnectionGetType(v12) && (*IOHIDEventSystemConnectionGetEntitlements(v12) & 8) == 0)
      {
        v16 = _IOHIDLogCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          _IOHIDEventSystemConnectionGetPID(v12);
          OUTLINED_FUNCTION_0_17();
          OUTLINED_FUNCTION_5_6(&dword_197195000, v17, v18, "Error: the client with pid %d is missing the '%s' entitlement.", v19, v20, v21, v22, v23);
        }
      }

      else
      {
        *a4 = _IOHIDEventSystemConnectionCreateVirtualService(v12);
      }
    }

    CFRelease(v12);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v14 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __IOHIDServiceInit(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *(&v150[2] + 4) = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  *v129 = 0u;
  v130 = 0u;
  memset(name, 0, sizeof(name));
  v4 = mach_absolute_time();
  __sprintf_chk(v129, 0, 0x100uLL, "0x%llx", v2);
  *(a1 + 400) = v2;
  IORegistryEntryGetName(*(a1 + 16), name);
  if (!name[0])
  {
    IOObjectGetClass(*(a1 + 16), name);
    v2 = valuePtr;
  }

  __sprintf_chk(v129, 0, 0x100uLL, "IOHIDService(%p) id:0x%llx name:%s", a1, v2, name);
  Mutable = malloc_type_calloc(1uLL, 0x48uLL, 0x10000400131AABDuLL);
  *(a1 + 72) = Mutable;
  if (Mutable)
  {
    *(a1 + 456) = 0;
    v127.__sig = 0;
    *v127.__opaque = 0;
    if (pthread_mutexattr_init(&v127))
    {
      __IOHIDServiceInit_cold_1(v145, buf);
    }

    pthread_mutexattr_settype(&v127, 2);
    if (pthread_mutex_init((*(a1 + 72) + 8), &v127))
    {
      __IOHIDServiceInit_cold_2(v145, buf);
    }

    pthread_mutexattr_destroy(&v127);
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    Mutable = hid_dispatch_queue_create_with_context_destructor(v129, v6, kIOHIDServiceInterruptWorkloop, __IOHIDServiceQueueWillExecute, __IOHIDServiceQueueDidExecute, *(a1 + 72), __IOHIDServiceQueueContextDestructor);
    *(a1 + 80) = Mutable;
    if (Mutable)
    {
      Mutable = IONotificationPortCreate(0);
      *(a1 + 88) = Mutable;
      if (Mutable)
      {
        v7 = *(a1 + 16);
        if (v7)
        {
          v8 = IOServiceAddInterestNotification(Mutable, v7, "IOGeneralInterest", __IOHIDServiceNotification, a1, (a1 + 96));
          if (v8)
          {
            __IOHIDServiceInit_cold_3((a1 + 400), v8, buf);
            LOBYTE(Mutable) = buf[0];
            goto LABEL_134;
          }
        }

        callBacks = *byte_1F0B91278;
        v9 = CFGetAllocator(a1);
        Mutable = CFSetCreateMutable(v9, 0, &callBacks);
        *(a1 + 104) = Mutable;
        if (Mutable)
        {
          v10 = CFGetAllocator(a1);
          Mutable = CFSetCreateMutable(v10, 0, &callBacks);
          *(a1 + 112) = Mutable;
          if (Mutable)
          {
            v11 = CFGetAllocator(a1);
            Mutable = CFSetCreateMutable(v11, 0, &callBacks);
            *(a1 + 120) = Mutable;
            if (Mutable)
            {
              v12 = CFGetAllocator(a1);
              Mutable = CFNumberCreate(v12, kCFNumberSInt64Type, &valuePtr);
              *(a1 + 48) = Mutable;
              if (Mutable)
              {
                v13 = CFGetAllocator(a1);
                Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                *(a1 + 240) = Mutable;
                if (Mutable)
                {
                  v14 = CFGetAllocator(a1);
                  Mutable = CFDictionaryCreateMutable(v14, 15, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  *(a1 + 312) = Mutable;
                  if (Mutable)
                  {
                    for (i = 0; i != 15; ++i)
                    {
                      CFDictionaryAddValue(*(a1 + 312), _servicePropertyCacheKeys[i], defaultPropertyKeyValue);
                    }

                    v16 = CFGetAllocator(a1);
                    Mutable = CFArrayCreateMutable(v16, 0, MEMORY[0x1E695E9C0]);
                    *(a1 + 248) = Mutable;
                    if (Mutable)
                    {
                      v17 = CFGetAllocator(a1);
                      Mutable = CFSetCreateMutable(v17, 0, MEMORY[0x1E695E9F8]);
                      *(a1 + 264) = Mutable;
                      if (Mutable)
                      {
                        Mutable = malloc_type_malloc(0x18uLL, 0xC0040B8AA526DuLL);
                        *(a1 + 368) = Mutable;
                        if (Mutable)
                        {
                          *Mutable = 0;
                          *(Mutable + 1) = 0;
                          *(Mutable + 2) = 0;
                          Mutable = malloc_type_malloc(0x160uLL, 0x100004000313F17uLL);
                          *(a1 + 416) = Mutable;
                          if (Mutable)
                          {
                            *(Mutable + 20) = 0u;
                            *(Mutable + 21) = 0u;
                            *(Mutable + 18) = 0u;
                            *(Mutable + 19) = 0u;
                            *(Mutable + 16) = 0u;
                            *(Mutable + 17) = 0u;
                            *(Mutable + 14) = 0u;
                            *(Mutable + 15) = 0u;
                            *(Mutable + 12) = 0u;
                            *(Mutable + 13) = 0u;
                            *(Mutable + 10) = 0u;
                            *(Mutable + 11) = 0u;
                            *(Mutable + 8) = 0u;
                            *(Mutable + 9) = 0u;
                            *(Mutable + 6) = 0u;
                            *(Mutable + 7) = 0u;
                            *(Mutable + 4) = 0u;
                            *(Mutable + 5) = 0u;
                            *(Mutable + 2) = 0u;
                            *(Mutable + 3) = 0u;
                            *Mutable = 0u;
                            *(Mutable + 1) = 0u;
                            *(a1 + 272) = 0;
                            *(a1 + 288) = 0;
                            block[0] = MEMORY[0x1E69E9820];
                            block[1] = 0x40000000;
                            block[2] = ____IOHIDServiceInit_block_invoke;
                            block[3] = &__block_descriptor_tmp_198;
                            block[4] = a1;
                            *(a1 + 424) = dispatch_block_create(0, block);
                            v119[0] = MEMORY[0x1E69E9820];
                            v119[1] = 0x40000000;
                            v119[2] = ____IOHIDServiceInit_block_invoke_2;
                            v119[3] = &__block_descriptor_tmp_199;
                            v119[4] = a1;
                            *(a1 + 432) = dispatch_block_create(0, v119);
                            v18 = CFGetAllocator(a1);
                            Mutable = CFArrayCreateMutable(v18, 0, MEMORY[0x1E695E9C0]);
                            *(a1 + 256) = Mutable;
                            if (Mutable)
                            {
                              *(a1 + 172) = 1;
                              *(a1 + 304) = 1;
                              v19 = *MEMORY[0x1E695E738];
                              v20 = _IOHIDServiceCopyPropertyForClient(a1, @"Built-In", *MEMORY[0x1E695E738]);
                              v21 = MEMORY[0x1E695E4D0];
                              if (v20)
                              {
                                v22 = v20;
                                *(a1 + 284) = CFEqual(v20, *MEMORY[0x1E695E4D0]);
                                CFRelease(v22);
                              }

                              v23 = _IOHIDServiceCopyPropertyForClient(a1, @"Hidden", v19);
                              if (v23)
                              {
                                v24 = v23;
                                *(a1 + 300) = CFEqual(v23, *v21);
                                CFRelease(v24);
                              }

                              v116 = v4;
                              alloc = *MEMORY[0x1E695E480];
                              if (CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
                              {
                                __IOHIDServiceInit_cold_5();
                              }

                              v115 = v19;
                              v25 = _IOHIDLoadBundles();
                              if (v25)
                              {
                                v26 = v25;
                                if (CFArrayGetCount(v25) >= 1)
                                {
                                  v27 = 0;
                                  v118 = v26;
                                  do
                                  {
                                    ValueAtIndex = CFArrayGetValueAtIndex(v26, v27);
                                    v29 = __IOHIDServicePassiveMatchToFilterPlugin(a1, ValueAtIndex);
                                    if (v29)
                                    {
                                      v30 = v29;
                                      if (CFArrayGetCount(v29) >= 1)
                                      {
                                        v31 = 0;
                                        do
                                        {
                                          v32 = CFArrayGetValueAtIndex(v30, v31);
                                          v33 = CFGetAllocator(a1);
                                          v34 = IOHIDServiceFilterCreate(v33, a1, ValueAtIndex, v32);
                                          if (v34)
                                          {
                                            v35 = v34;
                                            v36 = _IOHIDLogCategory(0);
                                            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                                            {
                                              v37 = *(a1 + 400);
                                              *buf = 138412546;
                                              *&buf[4] = v35;
                                              *&buf[12] = 2048;
                                              *&buf[14] = v37;
                                              _os_log_impl(&dword_197195000, v36, OS_LOG_TYPE_DEFAULT, "Add filter:%@ for service:0x%llx", buf, 0x16u);
                                            }

                                            CFArrayAppendValue(*(a1 + 248), v35);
                                            if (!IOHIDServiceFilterGetType(v35))
                                            {
                                              CFArrayAppendValue(*(a1 + 256), v35);
                                            }

                                            CFRelease(v35);
                                          }

                                          ++v31;
                                        }

                                        while (v31 < CFArrayGetCount(v30));
                                      }

                                      CFRelease(v30);
                                      v26 = v118;
                                    }

                                    ++v27;
                                  }

                                  while (v27 < CFArrayGetCount(v26));
                                }
                              }

                              v38 = _IOHIDLoadServiceFilterBundles();
                              if (v38)
                              {
                                v39 = v38;
                                if (CFArrayGetCount(v38) >= 1)
                                {
                                  for (j = 0; j < CFArrayGetCount(v39); ++j)
                                  {
                                    v123 = 0;
                                    v41 = CFArrayGetValueAtIndex(v39, j);
                                    InfoDictionary = CFBundleGetInfoDictionary(v41);
                                    if (InfoDictionary)
                                    {
                                      v43 = InfoDictionary;
                                      Value = CFDictionaryGetValue(InfoDictionary, @"Matching");
                                      if (Value)
                                      {
                                        v45 = Value;
                                        v46 = CFGetTypeID(Value);
                                        if (v46 == CFDictionaryGetTypeID())
                                        {
                                          if (!_IOHIDServiceMatchPropertyTable(a1, v45, 1))
                                          {
                                            continue;
                                          }
                                        }

                                        else
                                        {
                                          v47 = CFGetTypeID(v45);
                                          if (v47 == CFArrayGetTypeID() && CFArrayGetCount(v45) >= 1)
                                          {
                                            v48 = 0;
                                            v49 = 1;
                                            do
                                            {
                                              v50 = CFArrayGetValueAtIndex(v45, v48);
                                              if (v50)
                                              {
                                                v51 = v50;
                                                v52 = CFGetTypeID(v50);
                                                if (v52 == CFDictionaryGetTypeID())
                                                {
                                                  if (_IOHIDServiceMatchPropertyTable(a1, v51, 1))
                                                  {
                                                    goto LABEL_61;
                                                  }

                                                  v49 = 0;
                                                }
                                              }

                                              ++v48;
                                            }

                                            while (v48 < CFArrayGetCount(v45));
                                            if (!v49)
                                            {
                                              continue;
                                            }
                                          }
                                        }
                                      }

LABEL_61:
                                      v53 = CFDictionaryGetValue(v43, @"NSPrincipalClass");
                                      if (!v53)
                                      {
                                        continue;
                                      }

                                      v54 = v53;
                                      v55 = CFGetTypeID(v53);
                                      if (v55 != CFStringGetTypeID())
                                      {
                                        continue;
                                      }

                                      v56 = CFStringCreateWithFormat(alloc, 0, @"OBJC_CLASS_$_%@", v54);
                                      if (!v56)
                                      {
                                        continue;
                                      }

                                      v57 = v56;
                                      DataPointerForName = CFBundleGetDataPointerForName(v41, v56);
                                      if (!DataPointerForName)
                                      {
                                        v66 = _IOHIDLogCategory(0);
                                        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                                        {
                                          *v145 = 138412546;
                                          v146 = v57;
                                          v147 = 2112;
                                          v148 = v43;
                                          _os_log_error_impl(&dword_197195000, v66, OS_LOG_TYPE_ERROR, "__IOHIDServiceLoadServiceFilterBundles failed to find symbol %@ for bundle %@", v145, 0x16u);
                                        }

                                        v67 = v57;
LABEL_81:
                                        CFRelease(v67);
                                        continue;
                                      }

                                      v59 = DataPointerForName;
                                      CFRelease(v57);
                                      if ([v59 getUid("matchService:a1 options:0 score:&v123")])
                                      {
                                        v60 = IOHIDServiceFilterCreateWithClass(alloc, v59, a1, v54, v123);
                                        if (!v60)
                                        {
                                          v68 = _IOHIDLogCategory(0);
                                          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                                          {
                                            *v145 = 138412290;
                                            v146 = v43;
                                            _os_log_error_impl(&dword_197195000, v68, OS_LOG_TYPE_ERROR, "IOHIDServiceFilterCreateWithClass failed for bundle %@", v145, 0xCu);
                                          }

                                          continue;
                                        }

                                        v61 = v60;
                                        v62 = CFBundleGetInfoDictionary(v41);
                                        if (v62)
                                        {
                                          v63 = CFDictionaryGetValue(v62, @"PropertyMerge");
                                          if (v63)
                                          {
                                            v64 = v63;
                                            v65 = CFGetTypeID(v63);
                                            if (v65 == CFDictionaryGetTypeID())
                                            {
                                              *buf = MEMORY[0x1E69E9820];
                                              *&buf[8] = 0x40000000;
                                              *&buf[16] = ____IOHIDServiceLoadServiceFilterBundles_block_invoke;
                                              v125 = &__block_descriptor_tmp_229;
                                              v126 = v61;
                                              _IOHIDCFDictionaryApplyBlock(v64, buf);
                                            }

                                            else
                                            {
                                              v69 = _IOHIDLogCategory(0);
                                              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                                              {
                                                __IOHIDServiceInit_cold_4(v149, v41, v150, v69);
                                              }
                                            }
                                          }
                                        }

                                        v70 = _IOHIDLogCategory(0);
                                        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                                        {
                                          v71 = *(a1 + 400);
                                          *v145 = 138412546;
                                          v146 = v61;
                                          v147 = 2048;
                                          v148 = v71;
                                          _os_log_impl(&dword_197195000, v70, OS_LOG_TYPE_DEFAULT, "Add filter:%@ for service:0x%llx", v145, 0x16u);
                                        }

                                        CFArrayAppendValue(*(a1 + 248), v61);
                                        CFArrayAppendValue(*(a1 + 256), v61);
                                        v67 = v61;
                                        goto LABEL_81;
                                      }
                                    }
                                  }
                                }
                              }

                              v72 = *(a1 + 248);
                              v151.length = CFArrayGetCount(v72);
                              v151.location = 0;
                              CFArraySortValues(v72, v151, IOHIDServiceFilterCompare, 0);
                              v73 = *(a1 + 256);
                              v152.length = CFArrayGetCount(v73);
                              v152.location = 0;
                              CFArraySortValues(v73, v152, IOHIDServiceFilterCompare, 0);
                              v74 = __IOHIDServiceCopyPropertyForClient(a1, @"ReportInterval", 0, 1);
                              v75 = MEMORY[0x1E695E4D0];
                              if (v74)
                              {
                                v76 = v74;
                                v77 = CFGetTypeID(v74);
                                if (v77 == CFNumberGetTypeID())
                                {
                                  CFNumberGetValue(v76, kCFNumberSInt32Type, (a1 + 168));
                                  *(a1 + 160) = *(a1 + 168);
                                }

                                CFRelease(v76);
                              }

                              v78 = __IOHIDServiceCopyPropertyForClient(a1, @"BatchInterval", 0, 1);
                              v4 = v116;
                              if (v78)
                              {
                                v79 = v78;
                                v80 = CFGetTypeID(v78);
                                if (v80 == CFNumberGetTypeID())
                                {
                                  CFNumberGetValue(v79, kCFNumberSInt32Type, (a1 + 172));
                                }

                                CFRelease(v79);
                              }

                              v81 = _IOHIDServiceCopyPropertyForClient(a1, @"DisplayIntegrated", v115);
                              if (v81)
                              {
                                v82 = v81;
                                *(a1 + 280) = CFEqual(v81, *v75);
                                CFRelease(v82);
                              }

                              else if (IOHIDServiceConformsTo(a1, 13, 4))
                              {
                                *(a1 + 280) = 1;
                              }

                              v83 = _IOHIDServiceCopyPropertyForClient(a1, @"ProtectedAccess", v115);
                              if (v83)
                              {
                                v84 = v83;
                                *(a1 + 308) = CFEqual(v83, *v75);
                                CFRelease(v84);
                              }

                              v85 = _IOHIDServiceCopyPropertyForClient(a1, @"QueueSize", v115);
                              if (v85)
                              {
                                v86 = v85;
                                v87 = CFGetTypeID(v85);
                                if (v87 == CFNumberGetTypeID())
                                {
                                  CFNumberGetValue(v86, kCFNumberSInt32Type, (a1 + 216));
                                }

                                CFRelease(v86);
                              }

                              *(a1 + 296) = 7;
                              v88 = _IOHIDServiceCopyPropertyForClient(a1, @"SensorPropertySupported", v115);
                              if (v88)
                              {
                                v89 = v88;
                                *buf = 0;
                                v90 = CFGetTypeID(v88);
                                if (v90 == CFNumberGetTypeID())
                                {
                                  CFNumberGetValue(v89, kCFNumberSInt32Type, buf);
                                }

                                if ((buf[0] & 2) != 0)
                                {
                                  *(a1 + 296) &= ~4u;
                                }

                                CFRelease(v89);
                              }

                              v91 = _IOHIDServiceCopyPropertyForClient(a1, @"HIDDefaultSensorControlOptions", v115);
                              if (v91)
                              {
                                v92 = v91;
                                *buf = 0;
                                v93 = CFGetTypeID(v91);
                                if (v93 == CFNumberGetTypeID())
                                {
                                  CFNumberGetValue(v92, kCFNumberSInt32Type, buf);
                                  *(a1 + 296) = buf[0];
                                }

                                CFRelease(v92);
                              }

                              v94 = _IOHIDServiceCopyPropertyForClient(a1, @"PrimaryUsagePage", v115);
                              if (v94)
                              {
                                v95 = v94;
                                v96 = CFGetTypeID(v94);
                                if (v96 == CFNumberGetTypeID())
                                {
                                  CFNumberGetValue(v95, kCFNumberSInt32Type, (a1 + 176));
                                }

                                CFRelease(v95);
                              }

                              v97 = _IOHIDServiceCopyPropertyForClient(a1, @"PrimaryUsage", v115);
                              if (v97)
                              {
                                v98 = v97;
                                v99 = CFGetTypeID(v97);
                                if (v99 == CFNumberGetTypeID())
                                {
                                  CFNumberGetValue(v98, kCFNumberSInt32Type, (a1 + 180));
                                }

                                CFRelease(v98);
                              }

                              v100 = _IOHIDServiceCopyPropertyForClient(a1, @"Transport", v115);
                              if (v100)
                              {
                                v101 = v100;
                                v102 = CFGetTypeID(v100);
                                if (v102 == CFStringGetTypeID())
                                {
                                  CFStringGetCString(v101, (a1 + 184), 32, 0x8000100u);
                                }

                                CFRelease(v101);
                              }

                              *(a1 + 56) = _IOHIDServiceCopyPropertyForClient(a1, @"LocationID", v115);
                              v103 = _IOHIDServiceCopyPropertyForClient(a1, @"HIDServiceAccessEntitlement", v115);
                              if (!v103)
                              {
                                goto LABEL_129;
                              }

                              v104 = v103;
                              v105 = CFGetTypeID(v103);
                              if (v105 == CFStringGetTypeID())
                              {
                                v106 = CFGetAllocator(a1);
                                v107 = CFArrayCreateMutable(v106, 0, MEMORY[0x1E695E9C0]);
                                CFArrayAppendValue(v107, v104);
                                *(a1 + 64) = v107;
                              }

                              else
                              {
                                v108 = CFGetTypeID(v104);
                                if (v108 == CFArrayGetTypeID())
                                {
                                  *(a1 + 64) = v104;
                                  goto LABEL_129;
                                }

                                v114 = _IOHIDLogCategory(0);
                                if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                                {
                                  __IOHIDServiceInit_cold_6((a1 + 48));
                                }
                              }

                              CFRelease(v104);
LABEL_129:
                              v109 = _IOHIDServiceCopyPropertyForClient(a1, @"Unregistered", v115);
                              if (v109)
                              {
                                v110 = v109;
                                v111 = CFGetTypeID(v109);
                                if (v111 == CFBooleanGetTypeID())
                                {
                                  *(a1 + 304) = CFEqual(v110, *MEMORY[0x1E695E4C0]);
                                }

                                CFRelease(v110);
                              }

                              LOBYTE(Mutable) = 1;
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
    }
  }

LABEL_134:
  __IOHIDServiceInit_cold_7(Mutable, name, v129, v4, a1, buf);
  result = buf[0];
  v113 = *MEMORY[0x1E69E9840];
  return result;
}

void *_IOHIDServiceClientCreateVirtual(const __CFAllocator *a1, uint64_t a2, const void *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  Private = _IOHIDServiceClientCreatePrivate();
  if (!Private)
  {
    return Private;
  }

  v13 = malloc_type_calloc(1uLL, 0x38uLL, 0x10800405737D6B9uLL);
  Private[8] = v13;
  if (!v13)
  {
    CFRelease(Private);
    return 0;
  }

  v14 = *a4;
  v15 = a4[1];
  if (*a4 == 2)
  {
    v16 = a4[2];
    *(v13 + 6) = *(a4 + 6);
    *(v13 + 1) = v15;
    *(v13 + 2) = v16;
    *v13 = v14;
  }

  else
  {
    *(v13 + 5) = *(a4 + 4);
    *(v13 + 24) = v15;
    *(v13 + 8) = v14;
  }

  Private[1] = a2;
  Private[9] = a5;
  Private[10] = a6;
  Private[2] = CFRetain(a3);
  Private[12] = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Private[11] = 0;
  Private[3] = 0;
  return Private;
}

void __IOHIDServiceInit_cold_5()
{
  OUTLINED_FUNCTION_15_1();
  v3 = v2;
  v4 = _IOHIDServiceCopyPropertyForClient(v2, @"DeviceUsagePairs", v1);
  if (v4)
  {
    v5 = v4;
    CFDictionaryAddValue(v0, @"DeviceUsagePairs", v4);
    CFRelease(v5);
  }

  v6 = _IOHIDServiceCopyPropertyForClient(v3, @"Transport", v1);
  if (v6)
  {
    v7 = v6;
    CFDictionaryAddValue(v0, @"Transport", v6);
    CFRelease(v7);
  }

  v8 = _IOHIDServiceCopyPropertyForClient(v3, @"ProductID", v1);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v0, @"ProductID", v8);
    CFRelease(v9);
  }

  v10 = _IOHIDServiceCopyPropertyForClient(v3, @"VendorID", v1);
  if (v10)
  {
    v17 = v10;
    CFDictionaryAddValue(v0, @"VendorID", v10);
    CFRelease(v17);
  }

  v18 = *(v3 + 464);
  if (!v18)
  {
    v18 = IOHIDAnalyticsEventCreate(@"com.apple.hid.analytics.service", v0);
    *(v3 + 464) = v18;
  }

  v45 = xmmword_19723DAB0;
  v19 = *(v3 + 472);
  if (!v19)
  {
    v19 = IOHIDAnalyticsHistogramEventCreate(@"com.apple.hid.analytics.service.dispatchEvent", v0, @"LatencyDispatchEvent", &v45, 1);
    *(v3 + 472) = v19;
    v18 = *(v3 + 464);
  }

  if (v18)
  {
    OUTLINED_FUNCTION_14_0(v18, @"LatencyServiceInit", v11, v12, v13, v14, v15, v16, v45);
    OUTLINED_FUNCTION_14_0(*(v3 + 464), @"LatencyServiceOpen", v20, v21, v22, v23, v24, v25, v45);
    OUTLINED_FUNCTION_14_0(*(v3 + 464), @"LatencyCopyProperty", v26, v27, v28, v29, v30, v31, v45);
    OUTLINED_FUNCTION_14_0(*(v3 + 464), @"LatencySetProperty", v32, v33, v34, v35, v36, v37, v45);
    OUTLINED_FUNCTION_14_0(*(v3 + 464), @"LatencyCopyEvent", v38, v39, v40, v41, v42, v43, v45);
    v44 = *(v3 + 464);
    IOHIDAnalyticsEventActivate();
    v19 = *(v3 + 472);
  }

  if (v19)
  {
    IOHIDAnalyticsEventActivate();
  }

  CFRelease(v0);
}

uint64_t _Xio_hideventsystem_create_virtual_service(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = _io_hideventsystem_create_virtual_service(*(result + 12), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

const void *_IOHIDEventSystemConnectionCreateVirtualService(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = (atomic_fetch_add(_virtualServiceID, 1u) | (a1 << 16));
  v3 = CFGetAllocator(a1);
  VirtualForConnection = _IOHIDServiceCreateVirtualForConnection(v3, v2, virtualServiceCallbacks, a1);
  if (VirtualForConnection)
  {
    v5 = VirtualForConnection;
    CFDictionarySetValue(*(a1 + 280), v2, VirtualForConnection);
    CFRetain(a1);
    EnumerationQueue = _IOHIDEventSystemGetEnumerationQueue(*(a1 + 8));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___IOHIDEventSystemConnectionCreateVirtualService_block_invoke;
    block[3] = &__block_descriptor_tmp_134;
    block[4] = v5;
    block[5] = a1;
    block[6] = v2;
    dispatch_async(EnumerationQueue, block);
  }

  else
  {
    v2 = 0;
  }

  v7 = _IOHIDLogCategory(9u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 168);
    *buf = 136315394;
    v13 = v8;
    v14 = 2048;
    v15 = v2;
    _os_log_impl(&dword_197195000, v7, OS_LOG_TYPE_DEFAULT, "%s: HIDVS ID:%llx create", buf, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _IOHIDServiceCreatePrivate(uint64_t a1)
{
  v1 = [HIDEventService allocWithZone:a1];

  return [(HIDEventService *)v1 init];
}

void *__IOHIDServiceCreateVirtualNoInit(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  Private = _IOHIDServiceCreatePrivate(a1);
  if (Private)
  {
    v10 = malloc_type_calloc(1uLL, 0x58uLL, 0x10800405B6EA996uLL);
    Private[45] = v10;
    if (v10)
    {
      if (*a3 == 2)
      {
        v11 = a3;
        v12 = 88;
      }

      else
      {
        v10 += 8;
        v11 = a3;
        v12 = 72;
      }

      memmove(v10, v11, v12);
      Private[43] = a4;
      Private[44] = a5;
      Private[50] = a2;
    }

    else
    {
      CFRelease(Private);
      return 0;
    }
  }

  return Private;
}

void *_IOHIDServiceCreateVirtualForConnection(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  VirtualNoInit = __IOHIDServiceCreateVirtualNoInit(a1, a2, a3, 0, a4);
  v6 = VirtualNoInit;
  if (VirtualNoInit)
  {
    VirtualNoInit[43] = VirtualNoInit;
    VirtualNoInit[42] = CFRetain(a4);
  }

  return v6;
}

uint64_t _Xiohideventsystem_client_dispatch_virtual_service_copy_property(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 64)
  {
    v3 = -304;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 60))
  {
    v3 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  result = _iohideventsystem_client_dispatch_virtual_service_copy_property(*(result + 12), *(result + 52), *(result + 28), *(result + 40), (a2 + 28), (a2 + 52));
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

uint64_t _iohideventsystem_client_dispatch_virtual_service_copy_property(unsigned int a1, const void *a2, UInt8 *a3, unsigned int a4, vm_offset_t *a5, _DWORD *a6)
{
  v11 = a4;
  TypeID = CFStringGetTypeID();
  v13 = _IOHIDUnserializeAndVMDeallocWithTypeID(a3, v11, TypeID);
  if (v13)
  {
    v14 = v13;
    v15 = IOMIGMachPortCacheCopy(a1);
    v16 = v15;
    if (!v15)
    {
      goto LABEL_14;
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
        v21 = _IOHIDVirtualServiceClientCopyProperty(v20, v14);
        *a6 = _IOHIDSerialize(v21, a5);
        CFRelease(v20);
        if (v21)
        {
          CFRelease(v21);
        }
      }

      else
      {
        os_unfair_recursive_lock_unlock();
        v22 = _IOHIDLogCategory(0xDu);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          _iohideventsystem_client_dispatch_virtual_service_copy_property_cold_1();
        }
      }

      CFRelease(v14);
    }

    else
    {
LABEL_14:
      if (_iohideventsystem_client_dispatch_virtual_service_copy_property_cold_2(a2, v14, v16 == 0))
      {
        return 0;
      }
    }

    CFRelease(v16);
  }

  else
  {
    _iohideventsystem_client_dispatch_virtual_service_copy_property_cold_3();
  }

  return 0;
}

uint64_t _IOHIDVirtualServiceClientCopyProperty(void *a1, uint64_t a2)
{
  v2 = a1[8];
  if (v2 && (v3 = *(v2 + 24)) != 0)
  {
    return v3(a1[9], a1[10], a1, a2);
  }

  else
  {
    return 0;
  }
}

void __RegisterServiceFunction(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (_IOHIDServiceOpen(a1, a2, 0))
  {
    if (pthread_mutex_lock((*(a2 + 32) + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_1(context, v9);
    }

    ++**(a2 + 32);
    CFDictionaryApplyFunction(*(a2 + 120), __SetPropertiesForObjectFunction, a1);
    context[0] = a1;
    context[1] = a2;
    v4 = *(a2 + 152);
    v11.length = CFArrayGetCount(v4);
    v11.location = 0;
    CFArrayApplyFunction(v4, v11, __FilterFunctionRegisterService, context);
    v5 = *(a2 + 32);
    if (*v5)
    {
      --*v5;
      if (pthread_mutex_unlock((v5 + 8)))
      {
        __IOHIDSessionCreate_block_invoke_cold_2(&v7, v9);
      }
    }

    _IOHIDServiceSetEventCallback(a1, __IOHIDSessionServiceCallback, a2, 0);
  }

  _IOHIDServiceScheduleAsync(a1);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t _IOHIDServiceOpen(void *a1, const void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = mach_absolute_time();
  _IOHIDDebugTrace(8258, 1, a1, a2, 0, 0);
  if (pthread_mutex_lock((a1[9] + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v20, &context);
  }

  ++*a1[9];
  if (a1[1])
  {
    goto LABEL_3;
  }

  v8 = a1[4];
  if (v8 && (v9 = *(*v8 + 32)) != 0 || (v10 = a1[3]) != 0 && (v9 = *(*v10 + 32)) != 0)
  {
    v11 = v9();
  }

  else
  {
    v13 = a1[45];
    if (!v13 || (v14 = *(v13 + 8)) == 0)
    {
      v7 = 1;
      goto LABEL_16;
    }

    v11 = v14(a1[43], a1[44], a3);
  }

  v7 = v11;
  if (v11)
  {
LABEL_16:
    a1[1] = CFRetain(a2);
    *(&context + 1) = a2;
    v22 = 0;
    *&context = a1;
    v15 = a1[32];
    v24.length = CFArrayGetCount(v15);
    v24.location = 0;
    CFArrayApplyFunction(v15, v24, __FilterFunctionOpen, &context);
    goto LABEL_17;
  }

  v12 = _IOHIDLogCategory(6u);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    _IOHIDServiceOpen_cold_2(a1);
  }

LABEL_3:
  v7 = 0;
LABEL_17:
  v16 = a1[9];
  if (*v16)
  {
    --*v16;
    if (pthread_mutex_unlock((v16 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v20, &context);
    }
  }

  _IOHIDDebugTrace(8258, 2, a1, a2, 0, 0);
  v17 = mach_absolute_time();
  _IOHIDGetTimestampDelta(v17, v6, 0x3E8u);
  if (a1[58])
  {
    IOHIDAnalyticsEventSetIntegerValueForField();
  }

  v18 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __IOHIDServiceVirtualOpenCallback(uint64_t a1)
{
  _IOHIDServiceGetSenderID(a1);
  v1 = OUTLINED_FUNCTION_15_2();
  return _IOHIDEventSystemConnectionVirtualServiceNotify(v1, v2, 0, 0);
}

uint64_t IOHIDServiceFilterOpen(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v2 = *(*result + 56);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

uint64_t __FilterFunctionOpen(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  return IOHIDServiceFilterOpen(a1);
}

void __FilterFunctionOpen_0(const void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (IOHIDSessionFilterOpen(a1))
  {
    v5 = a2[1];
    if (v5)
    {
      v6 = *v5;
      if (*v5 || (*a2[1] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (v6 = *a2[1]) != 0))
      {

        CFArrayAppendValue(v6, a1);
      }
    }
  }
}

uint64_t IOHIDAnalyticsEventCreate(uint64_t a1, uint64_t a2)
{
  if (__loadFramework_haOnce_0 != -1)
  {
    IOHIDAnalyticsEventCreate_cold_1();
  }

  v4 = createEventFuncPtr;
  if (!createEventFuncPtr)
  {
    return 0;
  }

  return v4(a1, a2);
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return IOHIDAnalyticsEventAddHistogramField(a1, a2, &a9, 1u);
}

uint64_t IOHIDAnalyticsEventAddHistogramField(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (addHistogramFieldFuncPtr)
  {
    return addHistogramFieldFuncPtr(result, a2, a3, a4);
  }

  return result;
}

uint64_t _IOHIDLoadBundles()
{
  if (_IOHIDLoadBundles_onceToken != -1)
  {
    _IOHIDLoadBundles_cold_1();
  }

  return __hidPlugInBundles;
}

CFArrayRef __IOHIDServicePassiveMatchToFilterPlugin(uint64_t a1, CFBundleRef bundle)
{
  PlugIn = CFBundleGetPlugIn(bundle);
  if (!PlugIn)
  {
    return 0;
  }

  v4 = PlugIn;
  v5 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0x6Bu, 3u, 0x40u, 0xD3u, 0x57u, 0x98u, 0x40u, 0x64u, 0xAAu, 0x17u, 0x92u, 4u, 0xC7u, 0xB0u, 0x6Fu, 0xFDu);
  FactoriesForPlugInTypeInPlugIn = CFPlugInFindFactoriesForPlugInTypeInPlugIn(v5, v4);
  if (FactoriesForPlugInTypeInPlugIn)
  {
    InfoDictionary = CFBundleGetInfoDictionary(v4);
    if (InfoDictionary)
    {
      Value = CFDictionaryGetValue(InfoDictionary, @"Matching");
      if (Value)
      {
        v9 = Value;
        v10 = CFGetTypeID(Value);
        if (v10 == CFDictionaryGetTypeID() && !_IOHIDServiceMatchPropertyTable(a1, v9, 1))
        {
          CFRelease(FactoriesForPlugInTypeInPlugIn);
          return 0;
        }
      }
    }
  }

  return FactoriesForPlugInTypeInPlugIn;
}

uint64_t __IOHIDServiceCompareUsagePair(uint64_t a1, CFDictionaryRef theDict)
{
  v12 = -1;
  valuePtr = -1;
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"DeviceUsagePage");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
    }
  }

  v7 = CFDictionaryGetValue(theDict, @"DeviceUsage");
  if (v7 && (v8 = v7, v9 = CFGetTypeID(v7), v9 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v8, kCFNumberSInt32Type, &v12);
    v10 = v12;
  }

  else
  {
    v10 = -1;
  }

  return IOHIDServiceConformsTo(a1, valuePtr, v10);
}

uint64_t IOHIDServiceConformsTo(uint64_t a1, int a2, int a3)
{
  context[0] = 0;
  context[1] = a2;
  context[2] = a3;
  v4 = *MEMORY[0x1E695E738];
  v5 = _IOHIDServiceCopyPropertyForClient(a1, @"DeviceUsagePairs", *MEMORY[0x1E695E738]);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFArrayGetTypeID())
    {
      v12.length = CFArrayGetCount(v6);
      v12.location = 0;
      CFArrayApplyFunction(v6, v12, __IOHIDServiceConformsToFunction, context);
LABEL_9:
      CFRelease(v6);
      return context[0];
    }

    v8 = _IOHIDLogCategory(6u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      IOHIDServiceConformsTo_cold_1(a1);
    }
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    IOHIDServiceConformsTo_cold_2(a1, v4, Mutable, context);
  }

  if (v6)
  {
    goto LABEL_9;
  }

  return context[0];
}

void __IOHIDServiceConformsToFunction(const void *a1, _DWORD *a2)
{
  if (a1 && !*a2)
  {
    valuePtr = 0;
    v4 = CFGetTypeID(a1);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (a2[1] == -1 || (v5 = CFDictionaryGetValue(a1, @"DeviceUsagePage")) != 0 && (v6 = v5, v7 = CFGetTypeID(v5), v7 == CFNumberGetTypeID()) && CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr) && valuePtr == a2[1])
      {
        if (a2[2] == -1 || (Value = CFDictionaryGetValue(a1, @"DeviceUsage")) != 0 && (v9 = Value, v10 = CFGetTypeID(Value), v10 == CFNumberGetTypeID()) && CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr) && valuePtr == a2[2])
        {
          *a2 = 1;
        }
      }
    }

    else
    {
      v11 = _IOHIDLogCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __IOHIDServiceConformsToFunction_cold_1();
      }
    }
  }
}

CFTypeRef IOHIDServiceFilterCreate(const __CFAllocator *a1, uint64_t a2, __CFBundle *a3, const __CFUUID *a4)
{
  Private = __IOHIDServiceFilterCreatePrivate(a1);
  if (!Private)
  {
    return 0;
  }

  v9 = Private;
  v10 = *MEMORY[0x1E695E4A8];
  v11 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0x6Bu, 3u, 0x40u, 0xD3u, 0x57u, 0x98u, 0x40u, 0x64u, 0xAAu, 0x17u, 0x92u, 4u, 0xC7u, 0xB0u, 0x6Fu, 0xFDu);
  v12 = CFPlugInInstanceCreate(a1, a4, v11);
  if (!v12)
  {
    v23 = 0;
    goto LABEL_17;
  }

  v13 = v12;
  v14 = *(*v12 + 8);
  v15 = CFUUIDGetConstantUUIDWithBytes(v10, 5u, 5u, 0xD7u, 0x8Du, 0x4Fu, 0x4Eu, 0x4Cu, 0x41u, 0xA3u, 0xA6u, 0xC7u, 0xA7u, 0x7Bu, 0x41u, 0xBDu, 0xACu);
  v16 = CFUUIDGetUUIDBytes(v15);
  if (v14(v13, *&v16.byte0, *&v16.byte8, v9 + 24))
  {
    *(v9 + 24) = 0;
  }

  v17 = *(*v13 + 8);
  v18 = CFUUIDGetConstantUUIDWithBytes(v10, 0xC7u, 0x10u, 0x95u, 0x1Du, 0x18u, 0x40u, 0x45u, 0x6Eu, 0x82u, 0xE7u, 0xFCu, 0xA1u, 0xA0u, 0xFAu, 0x7Fu, 0xE4u);
  v19 = CFUUIDGetUUIDBytes(v18);
  if (v17(v13, *&v19.byte0, *&v19.byte8, v9 + 16))
  {
    *(v9 + 16) = 0;
    goto LABEL_7;
  }

  if (!*(v9 + 16))
  {
LABEL_7:
    if (!*(v9 + 24))
    {
      goto LABEL_15;
    }
  }

  v20 = IOHIDServiceFilterMatch(v9);
  if (v20)
  {
    v21 = v20;
    *(v9 + 48) = a2;
    *(v9 + 32) = _IOHIDServiceCopyDispatchQueue(a2);
    *(v9 + 40) = v21;
    Identifier = CFBundleGetIdentifier(a3);
    *(v9 + 80) = Identifier;
    if (Identifier)
    {
      CFRetain(Identifier);
    }

    v23 = CFRetain(v9);
    goto LABEL_16;
  }

  _IOHIDPlugInInstanceCacheAdd(a4, v13);
LABEL_15:
  v23 = 0;
LABEL_16:
  (*(*v13 + 24))(v13);
LABEL_17:
  CFRelease(v9);
  return v23;
}

uint64_t __IOHIDServiceFilterCreatePrivate(const __CFAllocator *a1)
{
  if (!__kIOHIDServiceFilterTypeID)
  {
    pthread_once(&__systemFilterClientTypeInit_0, __IOHIDServiceFilterRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), 0xB8uLL);
    *(v3 + 88) = CFUUIDCreate(a1);
  }

  return v3;
}

uint64_t IOHIDServiceFilterMatch(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(*v2 + 32);
    if (v3)
    {
      return v3();
    }
  }

  v4 = *(a1 + 24);
  if (v4 && (v3 = *(*v4 + 32)) != 0)
  {
    return v3();
  }

  else
  {
    return 0;
  }
}

CFStringRef __IOHIDServiceFilterCopyDebugDescription(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    v3 = CFCopyDescription(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = CFGetAllocator(a1);
  v5 = &stru_1F0B93200;
  if (v3)
  {
    v5 = v3;
  }

  v6 = CFStringCreateWithFormat(v4, 0, @"IOHIDServiceFilter uuid:%@ name:%@ %@", a1[11], a1[10], v5);
  if (v3)
  {
    CFRelease(v3);
  }

  return v6;
}

void _IOHIDPlugInInstanceCacheAdd(void *key, const void *a2)
{
  if (a2 && key && __hidPlugInInstanceCache && !CFDictionaryContainsKey(__hidPlugInInstanceCache, key))
  {
    v4 = __hidPlugInInstanceCache;
    (*(*a2 + 16))(a2);

    CFDictionarySetValue(v4, key, a2);
  }
}

uint64_t _IOHIDLoadServiceFilterBundles()
{
  if (_IOHIDLoadServiceFilterBundles_onceToken != -1)
  {
    _IOHIDLoadServiceFilterBundles_cold_1();
  }

  return __hidServiceFilterBundles;
}

uint64_t __IOHIDServiceInit_cold_7(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v10 = mach_absolute_time();
  _IOHIDGetTimestampDelta(v10, a4, 0x3E8u);
  result = *(a5 + 464);
  if (result)
  {
    result = IOHIDAnalyticsEventSetIntegerValueForField();
  }

  *a6 = a1 & 1;
  return result;
}

void _IOHIDEventSystemAddService(void *a1, void *a2)
{
  values = a2;
  v3 = CFGetAllocator(a1);
  v4 = CFArrayCreate(v3, &values, 1, MEMORY[0x1E695E9C0]);
  if (v4)
  {
    v5 = v4;
    __IOHIDEventSystemAddServices(a1, v4);
    CFRelease(v5);
  }
}

CFIndex __IOHIDEventSystemAddServices(void *a1, const __CFArray *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = a1[16];
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v11 = _IOHIDLog();
      if (os_signpost_enabled(v11))
      {
        if (ValueAtIndex)
        {
          RegistryID = IOHIDServiceGetRegistryID(ValueAtIndex);
        }

        else
        {
          RegistryID = 0;
        }

        *buf = 138412290;
        v28 = RegistryID;
        _os_signpost_emit_with_name_impl(&dword_197195000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemAddService", "%@", buf, 0xCu);
      }

      if (ValueAtIndex)
      {
        RemovalNotification = IOHIDServiceCreateRemovalNotification(ValueAtIndex, __IOHIDEventSystemServiceRemoved, a1, 0);
        if (RemovalNotification)
        {
          os_unfair_recursive_lock_lock_with_options();
          v14 = a1[2];
          v15 = IOHIDServiceGetRegistryID(ValueAtIndex);
          CFDictionaryAddValue(v14, v15, ValueAtIndex);
          v16 = a1[3];
          v17 = IOHIDServiceGetRegistryID(ValueAtIndex);
          CFDictionarySetValue(v16, v17, RemovalNotification);
          os_unfair_recursive_lock_unlock();
          IOHIDSessionAddService(v6, ValueAtIndex);
          v18 = _IOHIDLogCategory(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v28 = ValueAtIndex;
            _os_log_impl(&dword_197195000, v18, OS_LOG_TYPE_DEFAULT, "Service added: %{public}@", buf, 0xCu);
          }

          if (Mutable)
          {
            v19 = IOHIDServiceGetRegistryID(ValueAtIndex);
            CFDictionaryAddValue(Mutable, v19, ValueAtIndex);
          }
        }
      }

      else
      {
        RemovalNotification = 0;
      }

      v20 = _IOHIDLog();
      if (os_signpost_enabled(v20))
      {
        if (ValueAtIndex)
        {
          v21 = IOHIDServiceGetRegistryID(ValueAtIndex);
        }

        else
        {
          v21 = 0;
        }

        *buf = 138412290;
        v28 = v21;
        _os_signpost_emit_with_name_impl(&dword_197195000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemAddService", "%@", buf, 0xCu);
      }

      if (RemovalNotification)
      {
        CFRelease(RemovalNotification);
      }
    }
  }

  IOHIDEventSystemRematchServices(a1, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = CFArrayGetCount(a2);
  if (result >= 1)
  {
    v23 = result;
    for (j = 0; j != v23; ++j)
    {
      v25 = CFArrayGetValueAtIndex(a2, j);
      result = __IOHIDServiceOpenedByEventSystem(v25);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void *IOHIDServiceCreateRemovalNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v15, v16);
  }

  ++**(a1 + 72);
  v8 = CFGetAllocator(a1);
  v9 = IOHIDNotificationCreate(v8, __IOHIDServiceNotificationRelease, a1, 0, a2, a3, a4);
  if (v9)
  {
    if (*(a1 + 224))
    {
      CFRetain(a1);
      CFRetain(v9);
      global_queue = dispatch_get_global_queue(0, 0);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __IOHIDServiceCreateRemovalNotification_block_invoke;
      v14[3] = &__block_descriptor_tmp_87;
      v14[4] = v9;
      v14[5] = a1;
      dispatch_async(global_queue, v14);
    }

    else
    {
      CFSetAddValue(*(a1 + 104), v9);
    }
  }

  v11 = *(a1 + 72);
  if (*v11)
  {
    --*v11;
    if (pthread_mutex_unlock((v11 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v15, v16);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t IOHIDSessionAddService(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(&v13, context);
  }

  ++**(a1 + 32);
  __IOHIDSessionSetStateBusy(a1, 1);
  v4 = *(a1 + 88);
  v5 = CFGetAllocator(*(a1 + 120));
  Copy = CFDictionaryCreateCopy(v5, *(a1 + 120));
  v7 = *(a1 + 32);
  if (*v7)
  {
    --*v7;
    if (pthread_mutex_unlock((v7 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v13, context);
    }
  }

  if (v4)
  {
    __RegisterServiceFunction(a2, a1);
  }

  if (pthread_mutex_lock((*(a1 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(&v13, context);
  }

  ++**(a1 + 32);
  if (v4)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *&context[0] = Copy;
    *(&context[0] + 1) = Mutable;
    CFDictionaryApplyFunction(*(a1 + 120), __CheckForNewProperties, context);
    CFDictionaryApplyFunction(Mutable, __SetPropertiesForObjectFunction, a2);
    CFRelease(Mutable);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  if (!v4 || _IOHIDServiceGetOwner(a2) == a1)
  {
    v9 = CFGetAllocator(*(a1 + 136));
    MutableCopy = CFSetCreateMutableCopy(v9, 0, *(a1 + 136));
    CFRelease(*(a1 + 136));
    *(a1 + 136) = MutableCopy;
    CFSetAddValue(MutableCopy, a2);
  }

  pthread_cond_signal((a1 + 40));
  *(a1 + 92) = 0;
  result = *(a1 + 32);
  if (*result)
  {
    --*result;
    result = pthread_mutex_unlock((result + 8));
    if (result)
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v13, context);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *_IOHIDEventDebugInfo(uint64_t a1)
{
  v2 = *(*(a1 + 96) + 4);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v10 = *MEMORY[0x1E695E480];
      EventWithOptions = IOHIDEventGetEventWithOptions(a1, 3, 4026531840);
      if (EventWithOptions)
      {
        v12 = *(*(EventWithOptions + 12) + 20);
      }

      else
      {
        v12 = 0;
      }

      return CFStringCreateWithFormat(v10, 0, @"keyboardPress: %ld", v12);
    }

    else
    {
      if (v2 != 37)
      {
        return &stru_1F0B93200;
      }

      v13 = MEMORY[0x1E695E480];
      v14 = IOHIDEventGetEventWithOptions(a1, 37, 4026531840);
      if (v14)
      {
        v15 = *(*(v14 + 12) + 16);
      }

      else
      {
        v15 = 0;
      }

      v21 = *v13;
      v22 = IOHIDEventGetEventWithOptions(a1, 37, 4026531840);
      if (v22)
      {
        v23 = *(*(v22 + 12) + 18);
      }

      else
      {
        v23 = 0;
      }

      Count = CFArrayGetCount(*(a1 + 72));
      v25 = IOHIDEventGetEventWithOptions(a1, 37, 4026531840);
      if (v25)
      {
        v26 = *(*(v25 + 12) + 20);
      }

      else
      {
        v26 = 0;
      }

      return CFStringCreateWithFormat(v21, 0, @"usagePage: %ld usage: %ld children: %ld ungroupForLegacy: %ld", v15, v23, Count, v26);
    }
  }

  else
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        v3 = *MEMORY[0x1E695E480];
        v4 = IOHIDEventGetEventWithOptions(a1, 2, 4026531840);
        if (v4)
        {
          v5 = *(*(v4 + 12) + 28);
        }

        else
        {
          v5 = 0;
        }

        return CFStringCreateWithFormat(v3, 0, @"buttonState: %ld", v5);
      }

      return &stru_1F0B93200;
    }

    v7 = MEMORY[0x1E695E480];
    v8 = IOHIDEventGetEventWithOptions(a1, 1, 4026531840);
    if (v8)
    {
      v9 = *(*(v8 + 12) + 16);
    }

    else
    {
      v9 = 0;
    }

    v16 = *v7;
    v17 = IOHIDEventGetEventWithOptions(a1, 1, 4026531840);
    if (v17)
    {
      v18 = *(*(v17 + 12) + 18);
    }

    else
    {
      v18 = 0;
    }

    v19 = IOHIDEventGetEventWithOptions(a1, 1, 4026531840);
    if (v19)
    {
      v20 = *(*(v19 + 12) + 24);
    }

    else
    {
      v20 = 0;
    }

    return CFStringCreateWithFormat(v16, 0, @"vendorUsagePage: %ld vendorUsage:%ld dataLength:%ld", v9, v18, v20);
  }
}

uint64_t __SetPropertiesForObjectFunction(const void *a1, const void *a2, CFTypeRef cf)
{
  v6 = CFGetTypeID(cf);
  result = IOHIDServiceGetTypeID();
  if (v6 == result)
  {

    return IOHIDServiceSetProperty(cf, a1, a2);
  }

  return result;
}

uint64_t __IOHIDServiceVirtualScheduleWithDispatchQueueCallback(uint64_t a1)
{
  _IOHIDServiceGetSenderID(a1);
  v1 = OUTLINED_FUNCTION_15_2();

  return _IOHIDEventSystemConnectionVirtualServiceNotify(v1, v2, 2, 0);
}

BOOL IOHIDServiceFilterSetCancelHandler(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRetain(*(a1 + 48));
    *(a1 + 56) = a2;
    [*(a1 + 96) *(a1 + 136)];
  }

  return v2 != 0;
}

void IOHIDEventSystemRematchServices(uint64_t a1, const __CFDictionary *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  if (CFSetGetCount(*(a1 + 40)))
  {
    v4 = CFGetAllocator(*(a1 + 40));
    Copy = CFSetCreateCopy(v4, *(a1 + 40));
  }

  else
  {
    Copy = 0;
  }

  v6 = CFGetAllocator(a1);
  v7 = CFSetCreateCopy(v6, *(a1 + 432));
  os_unfair_recursive_lock_unlock();
  if (a2 && Copy)
  {
    if (CFDictionaryGetCount(a2))
    {
      v8[0] = a1;
      v8[1] = a2;
      CFSetApplyFunction(Copy, __IOHIDEventSystemMatchNotifyFunction, v8);
    }
  }

  else if (!Copy)
  {
    goto LABEL_10;
  }

  CFRelease(Copy);
LABEL_10:
  if (v7)
  {
    CFSetApplyFunction(v7, _IOHIDEventSystemConnectionRecordServiceChanged, 0);
    CFRelease(v7);
  }
}