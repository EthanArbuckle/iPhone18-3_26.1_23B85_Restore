void AXSetPipPid(uint64_t a1)
{
  v4[2] = *MEMORY[0x1E69E9840];
  _PipPid = a1;
  v3[0] = @"pid";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v3[1] = @"pipPid";
  v4[0] = v1;
  v4[1] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];

  AXPushNotificationToSystemForBroadcast();
}

uint64_t AXSerializeWrapper(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, void **a5, _DWORD *a6)
{
  v12 = gSerializeBufferKey;
  if (!gSerializeBufferKey)
  {
    Internal = _AXUIElementCreateInternal(0, 0, 0);
    CFRelease(Internal);
    v12 = gSerializeBufferKey;
    if (!gSerializeBufferKey)
    {
      v20 = AXRuntimeLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        AXSerializeWrapper_cold_2(v20);
      }

      return 4294942092;
    }
  }

  v14 = pthread_getspecific(v12);
  if (!v14)
  {
    v15 = mmap(0, 0x1000uLL, 3, 4098, -1, 0);
    if (v15 == -1)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    pthread_setspecific(gSerializeBufferKey, v16);
    __src = v16;
    if (v16)
    {
      goto LABEL_9;
    }

    return 4294942092;
  }

  __src = v14;
LABEL_9:
  __n = 0;
  v23 = 4096;
  if (AXInitSerializationStyle_onceToken != -1)
  {
    AXUnserializeWrapper_cold_1();
  }

  v17 = atomic_load(&AXCurrentSerializationStyle);
  v18 = (AXSerializationImplementations[2 * v17])(a1, 0, a2, &__src, &__n, &v23);
  if (!v18)
  {
    v19 = __n;
    if (__n <= 0x1000)
    {
      memcpy(a3, __src, __n);
      *a4 = v19;
      return v18;
    }

    *a5 = __src;
    *a6 = v23;
    goto LABEL_16;
  }

  if (v23 != 4096)
  {
    munmap(__src, v23);
LABEL_16:
    pthread_setspecific(gSerializeBufferKey, 0);
  }

  return v18;
}

uint64_t AXSerializeCFType3(void *a1, uint64_t a2, uint64_t a3, void **a4, size_t *a5, size_t *a6)
{
  if (InitSmuggledTypes_onceToken != -1)
  {
    AXSerializeCFType3_cold_1();
  }

  v26 = 0;
  v10 = [a1 _axRecursivelyPropertyListCoercedRepresentationWithError:&v26];
  v11 = v26;
  v12 = v11;
  if (v10)
  {
    v25 = 0;
    v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:200 options:0 error:&v25];
    v14 = v25;

    if (v13)
    {
      if ([v13 length] <= 0xFFFFFFFA)
      {
        v19 = [v13 length] + 4;
        if (*a6 >= v19)
        {
          v22 = *a4;
        }

        else
        {
          v20 = *MEMORY[0x1E69E9AC8] + v19 / *MEMORY[0x1E69E9AC8] * *MEMORY[0x1E69E9AC8];
          v21 = mmap(0, v20, 3, 4098, -1, 0);
          if (v21 == -1)
          {
            v15 = 4294942096;
            goto LABEL_16;
          }

          v22 = v21;
          munmap(*a4, *a6);
          *a4 = v22;
          *a6 = v20;
        }

        *v22 = bswap32(v19);
        memcpy(*a4 + 4, [v13 bytes], objc_msgSend(v13, "length"));
        v15 = 0;
        *a5 = v19;
      }

      else
      {
        v15 = 4294942082;
      }
    }

    else
    {
      v15 = 4294942095;
    }

LABEL_16:

    v12 = v14;
    goto LABEL_20;
  }

  v16 = [v11 domain];
  v17 = [v16 isEqual:@"AXSerialize3ErrorDomain"];

  if (!v17)
  {
LABEL_19:
    v15 = 4294942096;
    goto LABEL_20;
  }

  v18 = [v12 code];
  if ((v18 - 1) >= 5)
  {
    if (v18)
    {
      v24 = AXRuntimeLogSerialization();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        AXSerializeCFType3_cold_2(v24);
      }

      abort();
    }

    goto LABEL_19;
  }

  v15 = 4294942095;
LABEL_20:

  return v15;
}

uint64_t AXPushNotificationToSystemForBroadcast()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v30 = *MEMORY[0x1E69E9840];
  if (_AXSApplicationAccessibilityEnabled() || _AXSAutomationEnabled())
  {
    goto LABEL_3;
  }

  if (!_AXSAccessibilityNeedsMiniServer())
  {
    if (v5 == 1021 && (gAXAccessibilityTurnedOnOnce & 1) != 0)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = AXRuntimeLogNotifications();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LODWORD(length_4[0]) = 67109120;
      DWORD1(length_4[0]) = v5;
      _os_log_impl(&dword_1BF78E000, v15, OS_LOG_TYPE_INFO, "Not posting notification: (%d) because app ax and automation are off", length_4, 8u);
    }

    return 4294942092;
  }

  if (((v5 - 1021) > 0x3A || ((1 << (v5 + 3)) & 0x400000000000081) == 0) && v5 != 8004)
  {
    goto LABEL_25;
  }

LABEL_3:
  memset(length_4, 0, 512);
  length = 0;
  *&v27[1] = 0;
  v27[0] = 0;
  v6 = sSystemWideServerPID;
  v7 = getpid();
  if (!v2 || v6 == v7 || (result = AXSerializeWrapper(v2, 1, length_4, &length, &v27[1], v27), !result))
  {
    v9 = sSystemWideServerPID;
    if (v9 == getpid())
    {
      v10 = gSystemWideServerBroadcastRelayerCallback;
      if (gSystemWideServerBroadcastRelayerCallback)
      {
        v11 = getpid();
        v10(v5, v11, v4, v2, gSystemWideServerBroadcastRelayerCallbackInfo);
      }
    }

    else if (gNotificationBypassCallback)
    {
      cf[0] = 0;
      AXUnserializeWrapper(length_4, length, *&v27[1], v27[0], cf);
      v12 = gNotificationBypassCallback;
      v13 = getpid();
      v12(v5, v13, v4, cf[0], 0);
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (v27[0])
      {
        munmap(*&v27[1], v27[0]);
      }
    }

    else
    {
      if (AXPushNotificationToSystemForBroadcast_registerOnce != -1)
      {
        AXPushNotificationToSystemForBroadcast_cold_1();
      }

      if (length)
      {
        v14 = CFDataCreate(*MEMORY[0x1E695E480], length_4, length);
      }

      else
      {
        v14 = 0;
      }

      cf[0] = 0;
      cf[1] = 0;
      v25 = 0;
      v24 = 0;
      _AXUIElementValidate(v4, &v25, cf, &v24);
      v17 = cf[0];
      v16 = cf[1];
      v18 = _AXGetPortFromCache(sSystemWideServerPID, "com.apple.iphone.axserver-systemwide");
      if (!v18)
      {
        return 4294942081;
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __AXPushNotificationToSystemForBroadcast_block_invoke_2;
      v19[3] = &__block_descriptor_80_e5_v8__0l;
      v20 = length;
      v21 = v18;
      v19[4] = v14;
      v19[5] = v17;
      v19[6] = v16;
      v19[7] = *&v27[1];
      v22 = v5;
      v23 = v27[0];
      dispatch_async(AXPushNotificationToSystemForBroadcast_broadcast_queue, v19);
    }

    return 0;
  }

  return result;
}

void AXPidUnsuspend(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = AXRuntimeLogPID();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:a1];
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = @"<redacted>";
    _os_log_impl(&dword_1BF78E000, v4, OS_LOG_TYPE_INFO, "Client requesting unsuspension of PID:%@ Name:%@", buf, 0x16u);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:{a1, @"pid"}];
  v10[0] = v6;
  v10[1] = @"resumed";
  v9[1] = @"suspended-status";
  v9[2] = @"display-type";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v10[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  AXPushNotificationToSystemForBroadcast();
}

uint64_t mshMIGPerform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a4 + 32);
  v7 = *(a1 + 20);
  v8 = *(v6 + 8);
  v9 = 36;
  if (*(v6 + 12) <= v7 || v7 < v8)
  {
    v11 = 0;
  }

  else
  {
    v12 = v6 + 40 * (v7 - v8);
    v11 = *(v12 + 40);
    if (*(v12 + 64) <= 0x24u)
    {
      v9 = 36;
    }

    else
    {
      v9 = *(v12 + 64);
    }
  }

  MEMORY[0x1EEE9AC00]();
  v14 = (&previous - v13);
  bzero(&previous - v13, v15);
  if (v9 > 0x2000)
  {
    v14 = malloc_type_malloc(v9, 0x49D5B8F8uLL);
    v7 = *(a1 + 20);
  }

  v16 = *(a1 + 8);
  v14->msgh_bits = *a1 & 0x1F;
  v14->msgh_size = 36;
  *&v14->msgh_remote_port = v16;
  v14->msgh_id = v7 + 100;
  if (v11)
  {
    v17 = *(a4 + 8);
    if ((*(a4 + 4) & 2) != 0)
    {
      *(a1 + 12) = v17;
    }

    *(a1 + *(a1 + 4) + 52) = v17;
    v11(a1, v14);
    if ((v14->msgh_bits & 0x80000000) != 0)
    {
LABEL_33:
      if (v14->msgh_remote_port)
      {
        if ((v14->msgh_bits & 0x1F) == 0x12)
        {
          v25 = 1;
        }

        else
        {
          v25 = 17;
        }

        v26 = mach_msg(v14, v25, v14->msgh_size, 0, 0, 0, 0);
        if ((v26 - 268435459) >= 2)
        {
          if (v26)
          {
            v27 = *MEMORY[0x1E69E9848];
            v28 = getpid();
            fprintf(v27, "%d: badly generated MIG reply for port %x\n", v28, *a4);
          }
        }

        else
        {
          mach_msg_destroy(v14);
        }
      }

      goto LABEL_42;
    }

LABEL_28:
    msgh_remote_port = v14[1].msgh_remote_port;
    if (msgh_remote_port)
    {
      if (msgh_remote_port == -305)
      {
        v14->msgh_remote_port = 0;
        goto LABEL_42;
      }

      if ((*a1 & 0x80000000) != 0)
      {
        *(a1 + 8) = 0;
        mach_msg_destroy(a1);
      }
    }

    goto LABEL_33;
  }

  v18 = *(a1 + 20);
  if (v18 == 71)
  {
    v23 = *(a4 + 24);
    if (v23)
    {
      v23(a1, *(a4 + 8));
    }
  }

  else
  {
    if (v18 != 70)
    {
      *&v14[1].msgh_bits = *MEMORY[0x1E69E99E0];
      v14[1].msgh_remote_port = -303;
      goto LABEL_28;
    }

    v19 = *(a4 + 16);
    if (v19)
    {
      v31 = *(a1 + 32);
      if (*(a1 + 28) != *(MEMORY[0x1E69E99E0] + 4))
      {
        v31 = bswap32(v31);
      }

      v20 = v19();
      v31 = v20;
      if (v20)
      {
        previous = 0;
        v21 = *a4;
        v22 = *MEMORY[0x1E69E9A60];
        mach_port_request_notification(*MEMORY[0x1E69E9A60], v21, 70, v20, v21, 0x15u, &previous);
        if (previous)
        {
          mach_port_mod_refs(v22, previous, 2u, -1);
        }
      }

      else
      {
        *(a4 + 16) = 0;
      }
    }
  }

LABEL_42:
  if (v9 > 0x2000)
  {
    free(v14);
  }

  return 0;
}

uint64_t _AXXMIGBroadcastNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, void *a8, unsigned int a9)
{
  cf = 0;
  v14 = AXUnserializeWrapper(a6, a7, a8, a9, &cf);
  if (v14)
  {
    v15 = v14 == -25212;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v23 = 5;
    goto LABEL_14;
  }

  Internal = _AXUIElementCreateInternal(a2, a4, a5);
  v17 = gSystemWideServerBroadcastRelayerCallback;
  if (gSystemWideServerBroadcastRelayerCallback)
  {
    v18 = cf;
    v19 = gSystemWideServerBroadcastRelayerCallbackInfo;
    v20 = a3;
    v21 = a2;
    v22 = Internal;
LABEL_10:
    v17(v20, v21, v22, v18, v19);
    goto LABEL_11;
  }

  v17 = gNotificationBypassCallback;
  if (gNotificationBypassCallback)
  {
    v18 = cf;
    v20 = a3;
    v21 = a2;
    v22 = Internal;
    v19 = 0;
    goto LABEL_10;
  }

LABEL_11:
  if (Internal)
  {
    CFRelease(Internal);
  }

  v23 = 0;
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a8 && a9)
  {
    munmap(a8, a9);
  }

  return v23;
}

uint64_t AXUnserializeWrapper(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a2)
  {
    v6 = a2;
    if (AXInitSerializationStyle_onceToken != -1)
    {
      AXUnserializeWrapper_cold_1();
    }
  }

  else
  {
    if (!a4)
    {
      return 4294942084;
    }

    if (AXInitSerializationStyle_onceToken == -1)
    {
      v6 = a4;
      a1 = a3;
    }

    else
    {
      a1 = a3;
      v6 = a4;
      AXUnserializeWrapper_cold_1();
    }
  }

  v8 = atomic_load(&AXCurrentSerializationStyle);
  v9 = AXSerializationImplementations[2 * v8 + 1];

  return (v9)(0, 0, a1, v6, a5);
}

uint64_t __AXPushNotificationToSystemForBroadcast_block_invoke_2()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v42 = *MEMORY[0x1E69E9840];
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
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *buffer = 0u;
  v11 = 0u;
  v1 = *(v0 + 32);
  if (v1)
  {
    v43.length = *(v0 + 64);
    v43.location = 0;
    CFDataGetBytes(v1, v43, buffer);
  }

  v2 = *(v0 + 68);
  v3 = getpid();
  v4 = _AXMIGBroadcastNotification(v2, v3, *(v0 + 72), *(v0 + 40), *(v0 + 48), buffer, *(v0 + 64), *(v0 + 56), *(v0 + 76));
  if (v4)
  {
    v5 = v4;
    v6 = AXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __AXPushNotificationToSystemForBroadcast_block_invoke_2_cold_1((v0 + 72), v5, v6);
    }
  }

  v7 = *(v0 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(v0 + 76);
  if (v8)
  {
    munmap(*(v0 + 56), v8);
  }

  return _AXReleasePortFromCache(*(v0 + 68));
}

uint64_t _AXMIGBroadcastNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = MEMORY[0x1EEE9AC00]();
  v55 = *MEMORY[0x1E69E9840];
  v53 = 0u;
  memset(v54, 0, sizeof(v54));
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0;
  memset(&msg.msgh_size, 0, 20);
  v22 = 1;
  v23 = v11;
  v24 = 16777472;
  v25 = a9;
  v26 = *MEMORY[0x1E69E99E0];
  *&v27 = __PAIR64__(v13, v12);
  *(&v27 + 1) = v14;
  *&v28 = v15;
  if (v10 > 0x1000)
  {
    return 4294966989;
  }

  v17 = v10;
  v18 = v9;
  __memcpy_chk();
  v19 = (v17 + 3) & 0x3FFC;
  *(&msg + v19 + 80) = a9;
  msg.msgh_bits = -2147483629;
  msg.msgh_remote_port = v18;
  DWORD2(v28) = v17;
  msg.msgh_id = 860011;
  *&msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v16 = mach_msg(&msg, 1, v19 + 84, 0, 0, 0, 0);
  if ((v16 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v16;
}

uint64_t _AXReleasePortFromCache(uint64_t result)
{
  if (result)
  {
    return AX_PERFORM_WITH_LOCK();
  }

  return result;
}

uint64_t _XBroadcastNotification(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(result + 4);
  if (*(result + 24) != 1 || (v3 - 4181) < 0xFFFFEFFF)
  {
    goto LABEL_6;
  }

  if (*(result + 39) != 1)
  {
    goto LABEL_18;
  }

  v6 = *(result + 76);
  if (v6 > 0x1000)
  {
LABEL_6:
    v5 = -304;
LABEL_7:
    *(a2 + 32) = v5;
    goto LABEL_8;
  }

  v5 = -304;
  if (v3 - 84 < v6)
  {
    goto LABEL_7;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v3 != v7 + 84)
  {
    goto LABEL_7;
  }

  v8 = *(result + 40);
  if (v8 != *(result + v7 + 80))
  {
LABEL_18:
    v5 = -300;
    goto LABEL_7;
  }

  v9 = (((v3 + 3) & 0x3FFC) + result);
  if (!*v9 && v9[1] > 0x1Fu)
  {
    result = _AXXMIGBroadcastNotification(*(result + 12), *(result + 52), *(result + 56), *(result + 60), *(result + 68), result + 80, v6, *(result + 28), v8);
    *(a2 + 32) = result;
    return result;
  }

  *(a2 + 32) = -309;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t AXUnserializeCFType3(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4, uint64_t a5)
{
  if (InitSmuggledTypes_onceToken != -1)
  {
    AXSerializeCFType3_cold_1();
  }

  if (a4 >= 4)
  {
    v8 = bswap32(*a3);
    if (v8 <= a4)
    {
      if (!a5)
      {
        v12 = 0;
        goto LABEL_11;
      }

      *a5 = 0;
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a3 + 1 length:v8 - 4 freeWhenDone:0];
      v21 = 0;
      v10 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:0 format:0 error:&v21];
      v11 = v21;
      if (v11)
      {
        v12 = v11;

LABEL_9:
        a5 = 4294942095;
LABEL_11:

        return a5;
      }

      v20 = 0;
      v14 = [v10 _axRecursivelyReconstitutedRepresentationFromPropertyListWithError:&v20];
      v12 = v20;
      if (v14)
      {
        v15 = v14;
      }

      *a5 = v14;

      if (!v12)
      {
        a5 = 0;
        goto LABEL_11;
      }

      v16 = [v12 domain];
      v17 = [v16 isEqual:@"AXSerialize3ErrorDomain"];

      if (v17)
      {
        v18 = [v12 code];
        if ((v18 - 1) < 5)
        {
          goto LABEL_9;
        }

        if (v18)
        {
          v19 = AXRuntimeLogSerialization();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            AXSerializeCFType3_cold_2(v19);
          }

          abort();
        }
      }

      a5 = 4294942096;
      goto LABEL_11;
    }
  }

  return 4294942095;
}

uint64_t _AXUIElementCreateInternal(int a1, uint64_t a2, uint64_t a3)
{
  if ((__AXUIElementInitialized & 1) == 0)
  {
    __AXUIElementInitialize();
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    if (sSystemWideServerPID == a1)
    {
      v7 = 0;
    }

    else
    {
      v7 = a1;
    }

    *(result + 16) = v7;
    *(result + 20) = a2;
    *(result + 28) = a3;
    *(result + 36) = 0;
  }

  return result;
}

void _AXBroadcastEventProcessNotification(int a1, uint64_t a2, const void *a3, const void *a4)
{
  v6 = a2;
  *&v13[5] = *MEMORY[0x1E69E9840];
  if (_AXPidIsSuspended(a2) && a1 != 1021 && a1 != 4002)
  {
    v8 = AXRuntimeLogNotifications();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v13[0] = v6;
      LOWORD(v13[1]) = 2048;
      *(&v13[1] + 2) = a1;
      _os_log_impl(&dword_1BF78E000, v8, OS_LOG_TYPE_INFO, "Pid is suspended and notification is not acceptable: pid: %d, %ld", buf, 0x12u);
    }

    v9 = AXRuntimeLogNotifications();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *v13 = a1;
      _os_log_impl(&dword_1BF78E000, v9, OS_LOG_TYPE_INFO, "Don't broadcast notification: %ld", buf, 0xCu);
    }

    return;
  }

  if (_AXBroadcastEventProcessNotification_registerOnce != -1)
  {
    _AXBroadcastEventProcessNotification_cold_1();
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a4)
  {
LABEL_9:
    CFRetain(a4);
  }

LABEL_10:
  if (a3)
  {
    CFRetain(a3);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___AXBroadcastEventProcessNotification_block_invoke_2;
  block[3] = &__block_descriptor_52_e5_v8__0l;
  v11 = a1;
  block[4] = a3;
  block[5] = a4;
  dispatch_async(_AXBroadcastEventProcessNotification_replayQueue, block);
}

uint64_t _AXUIElementValidate(uint64_t a1, BOOL *a2, _OWORD *a3, int *a4)
{
  if (!a1 || CFGetTypeID(a1) != __kAXUIElementTypeID)
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = *(a1 + 16) == 0;
  *a3 = *(a1 + 20);
  v8 = *(a1 + 36);
  if (!v8)
  {
    v8 = sGlobalTimeout;
  }

  *a4 = v8;
  result = *(a1 + 16);
  if (result == 2147483637)
  {

    return _AXKeyboardAppPid();
  }

  return result;
}

uint64_t _AXGetPortFromCache(uint64_t a1, const char *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (gAllowsSuspendedAppServer || !_AXPidIsSuspended(a1))
  {
    AX_PERFORM_WITH_LOCK();
    if (!v16[3])
    {
      memset(buf, 0, 60);
      if (a2)
      {
        strncpy(buf, a2, 0x3BuLL);
        v8 = bootstrap_look_up(*MEMORY[0x1E69E99F8], buf, v20 + 6);
      }

      else
      {
        v8 = bootstrap_look_up2();
      }

      v9 = v8;
      if (v8)
      {
        v10 = AXRuntimeLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v13 = bootstrap_strerror(v9);
          v14 = [MEMORY[0x1E696AF00] callStackSymbols];
          *context = 67110146;
          *&context[4] = v9;
          *&context[8] = 2080;
          *&context[10] = v13;
          *&context[18] = 2112;
          *&context[20] = @"com.apple.iphone.axserver";
          *&context[28] = 1024;
          *&context[30] = a1;
          *&context[34] = 2112;
          *&context[36] = v14;
          _os_log_error_impl(&dword_1BF78E000, v10, OS_LOG_TYPE_ERROR, "AX Lookup problem - errorCode:%d error:%s portName:'%@' PID:%d %@", context, 0x2Cu);
        }
      }

      v11 = v20[6];
      if (v11)
      {
        *context = 0;
        memset(&context[16], 0, 24);
        *&context[8] = a1;
        v12 = CFMachPortCreateWithPort(0, v11, 0, context, 0);
        v16[3] = v12;
        if (v12)
        {
          AX_PERFORM_WITH_LOCK();
          CFRelease(v16[3]);
        }
      }
    }

    v4 = v20[6];
  }

  else
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:a1];
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = a2;
      _os_log_impl(&dword_1BF78E000, v5, OS_LOG_TYPE_INFO, "Asking for port/pid but its suspended: %@, %s", buf, 0x16u);
    }

    v4 = 0;
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v4;
}

void sub_1BF791084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t _AXPidIsSuspended(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 hasPrefix:*MEMORY[0x1E6988740]];

  if (v4)
  {
    v5 = &unk_1F3E6C330;
  }

  else
  {
    v5 = _allDisplayTypes();
  }

  IsSuspendedInternal = _AXPidIsSuspendedInternal(a1, v5);

  return IsSuspendedInternal;
}

id _allDisplayTypes()
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (_displayMonitor_onceToken != -1)
  {
    _allDisplayTypes_cold_1();
  }

  v0 = [_displayMonitor_DisplayMonitor connectedIdentities];
  v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v0);
        }

        if ([*(*(&v7 + 1) + 8 * i) isCarDisplay])
        {

          v5 = [&unk_1F3E6C348 arrayByAddingObjectsFromArray:&unk_1F3E6C360];
          goto LABEL_13;
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v5 = &unk_1F3E6C348;
LABEL_13:

  return v5;
}

uint64_t _AXPidIsSuspendedInternal(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (_PipPid == a1)
  {
    v4 = 0;
  }

  else
  {
    os_unfair_lock_lock(&gAXSuspendedPidsLock);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v33;
LABEL_5:
      v8 = 0;
      while (1)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        v10 = +[AXPidSuspensionInfo shared];
        v11 = [v10 suspendedPidsForDisplay:{objc_msgSend(v9, "intValue")}];

        v12 = [MEMORY[0x1E696AD98] numberWithInt:a1];
        v13 = [v11 containsObject:v12];

        if (!v13)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v6)
          {
            goto LABEL_5;
          }

          v4 = 1;
          v14 = &gAXSuspendedPidsLock;
          goto LABEL_24;
        }
      }
    }

    os_unfair_lock_unlock(&gAXSuspendedPidsLock);
    v14 = &gAXTimeoutProbationPidsLock;
    os_unfair_lock_lock(&gAXTimeoutProbationPidsLock);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = obj;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v26 = v3;
      v18 = *v29;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = +[AXPidSuspensionInfo shared];
          v22 = [v21 timeoutProbationPidsForDisplay:{objc_msgSend(v20, "intValue")}];

          v23 = [MEMORY[0x1E696AD98] numberWithInt:a1];
          v24 = [v22 containsObject:v23];

          if (!v24)
          {
            v4 = 0;
            goto LABEL_22;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

      v4 = 1;
LABEL_22:
      v3 = v26;
      v14 = &gAXTimeoutProbationPidsLock;
    }

    else
    {
      v4 = 0;
    }

LABEL_24:

    os_unfair_lock_unlock(v14);
  }

  return v4;
}

uint64_t _XPostNotification(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(result + 4);
  if (*(result + 24) != 1 || (v3 - 4189) < 0xFFFFEFFF)
  {
    goto LABEL_6;
  }

  if (*(result + 39) != 1)
  {
    goto LABEL_18;
  }

  v6 = *(result + 76);
  if (v6 > 0x1000)
  {
LABEL_6:
    v5 = -304;
LABEL_7:
    *(a2 + 32) = v5;
    goto LABEL_8;
  }

  v5 = -304;
  if (v3 - 92 < v6)
  {
    goto LABEL_7;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v3 != v7 + 92)
  {
    goto LABEL_7;
  }

  v8 = result + v7;
  v9 = *(result + 40);
  if (v9 != *(v8 + 80))
  {
LABEL_18:
    v5 = -300;
    goto LABEL_7;
  }

  v10 = (((v3 + 3) & 0x3FFC) + result);
  if (!*v10 && v10[1] > 0x1Fu)
  {
    result = _AXXMIGPostNotification(*(result + 12), *(result + 52), *(result + 56), *(result + 64), *(result + 72), result + 80, v6, *(result + 28), v9, *(v8 + 84));
    *(a2 + 32) = result;
    return result;
  }

  *(a2 + 32) = -309;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _AXXMIGPostNotification(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, void *a8, unsigned int a9, uint64_t a10)
{
  cf = 0;
  Internal = _AXUIElementCreateInternal(a2, a3, a4);
  v16 = AXUnserializeWrapper(a6, a7, a8, a9, &cf);
  if (v16 != -25212 && v16 != 0)
  {
    v20 = 5;
    if (!Internal)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (a5 == 1021)
  {
    v18 = AXRuntimeLogPID();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&dword_1BF78E000, v18, OS_LOG_TYPE_INFO, "Did receive kAXPidStatusChangedNotification", v22, 2u);
    }

    _AXManagePidState(cf);
  }

  if (Internal)
  {
    os_unfair_lock_lock(&gAXObserverLock);
    Value = CFDictionaryGetValue(gObserverCache, a1);
    os_unfair_lock_unlock(&gAXObserverLock);
    if (Value)
    {
      Value[5](Value, Internal, a5, cf, a10);
    }

    v20 = 0;
LABEL_15:
    CFRelease(Internal);
    goto LABEL_17;
  }

  v20 = 0;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a8 && a9)
  {
    munmap(a8, a9);
  }

  return v20;
}

void AXBroadcastNotificationToAllClients(int a1, int a2, CFTypeRef cf)
{
  v22 = *MEMORY[0x1E69E9840];
  if (_AXInitializeObserverAccess_onceToken == -1)
  {
    if (!cf)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  _AXInitializeObserverAccess_cold_1();
  if (cf)
  {
LABEL_3:
    CFRetain(cf);
  }

LABEL_4:
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __AXBroadcastNotificationToAllClients_block_invoke;
  v18 = &unk_1E80D3FB0;
  v20 = a1;
  v19 = v5;
  AX_PERFORM_WITH_LOCK();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v19;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * i) observer];
        _AXUIElementPostNotification();
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v21 count:16];
    }

    while (v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t _AXMIGPostNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  v10 = MEMORY[0x1EEE9AC00]();
  v56 = *MEMORY[0x1E69E9840];
  v54 = 0u;
  memset(v55, 0, sizeof(v55));
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v31 = 0u;
  v32 = 0u;
  *&v29[16] = 0u;
  v30 = 0u;
  v28 = 0;
  *v29 = 0u;
  memset(&msg.msgh_size, 0, 20);
  v24 = 1;
  v25 = v12;
  v26 = 16777472;
  v27 = a9;
  v28 = *MEMORY[0x1E69E99E0];
  *v29 = v13;
  *&v29[4] = v14;
  *&v29[12] = v15;
  *&v29[20] = v16;
  if (v11 > 0x1000)
  {
    return 4294966989;
  }

  v18 = v11;
  v19 = v10;
  __memcpy_chk();
  v20 = (v18 + 3) & 0x3FFC;
  v21 = &msg + v20;
  *(v21 + 20) = a9;
  *(v21 + 84) = a10;
  msg.msgh_bits = -2147483629;
  msg.msgh_remote_port = v19;
  *&v29[24] = v18;
  msg.msgh_id = 860012;
  *&msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v17 = mach_msg(&msg, 1, v20 + 92, 0, 0, 0, 0);
  if ((v17 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v17;
}

void _AXManagePidState(void *a1)
{
  v62 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      v3 = a1;
      v4 = [(__CFString *)v3 objectForKey:@"pid"];
      v5 = v4;
      if (!v4 || ![(__CFString *)v4 intValue])
      {
LABEL_43:

        return;
      }

      v6 = [(__CFString *)v3 valueForKey:@"display-type"];
      v46 = [v6 intValue];

      v7 = AXRuntimeLogPID();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v57 = v3;
        v58 = 1024;
        LODWORD(v59) = v46;
        _os_log_impl(&dword_1BF78E000, v7, OS_LOG_TYPE_INFO, "pid status change recorded: %@ for display type: %d", buf, 0x12u);
      }

      v8 = [(__CFString *)v3 objectForKey:@"suspended-status"];
      if ([v8 isEqualToString:@"suspended"])
      {
        v9 = 1;
      }

      else
      {
        v10 = [(__CFString *)v3 objectForKey:@"suspended"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(__CFString *)v3 objectForKey:@"suspended"];
          v9 = [v11 BOOLValue];
        }

        else
        {
          v9 = 0;
        }
      }

      v12 = [(__CFString *)v3 objectForKey:@"tentative-suspended"];
      v13 = [v12 isEqualToString:@"suspended"];

      v14 = [(__CFString *)v3 objectForKey:@"pipPid"];
      v15 = [v14 BOOLValue];

      if (v15)
      {
        _PipPid = [(__CFString *)v5 intValue];
      }

      os_unfair_lock_lock(&gAXSuspendedPidsLock);
      v16 = +[AXPidSuspensionInfo shared];
      v17 = [v16 tentativeSuspendedPidsForDisplay:v46];

      if (v9)
      {
        if ([v17 containsObject:v5])
        {
          [v17 removeObject:v5];
          v18 = AXRuntimeLogPID();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v57 = v5;
            _os_log_impl(&dword_1BF78E000, v18, OS_LOG_TYPE_INFO, "Got confimration that tentative pid should be suspended: %@", buf, 0xCu);
          }
        }
      }

      else if (!v13)
      {
        _AXRemoveSuspendedPid([(__CFString *)v5 intValue], v46);
        os_unfair_lock_unlock(&gAXSuspendedPidsLock);
LABEL_36:
        v39 = AXRuntimeLogPID();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = @"resume";
          if (v9)
          {
            v40 = @"suspend";
          }

          *buf = 138412802;
          if (v13)
          {
            v40 = @"tentative-suspend";
          }

          v57 = v40;
          v58 = 2112;
          v59 = v5;
          v60 = 1024;
          v61 = v46;
          _os_log_impl(&dword_1BF78E000, v39, OS_LOG_TYPE_INFO, "Did %@ pid: %@ on Display %d", buf, 0x1Cu);
        }

        goto LABEL_43;
      }

      v42 = v13;
      v43 = v9;
      v44 = v5;
      v45 = v3;
      v19 = [(__CFString *)v5 intValue];
      v20 = +[AXPidSuspensionInfo shared];
      v21 = [v20 suspendedPidsForDisplay:v46];
      v22 = [MEMORY[0x1E696AD98] numberWithInt:v19];
      [v21 addObject:v22];

      v23 = AXRuntimeLogPID();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v57) = v19;
        _os_log_impl(&dword_1BF78E000, v23, OS_LOG_TYPE_INFO, "Adding suspended pid: %d", buf, 8u);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v24 = +[AXPidSuspensionInfo shared];
      v25 = [v24 associatedRemotePidsForDisplay:v46];
      v26 = [MEMORY[0x1E696AD98] numberWithInt:v19];
      v27 = [v25 objectForKey:v26];

      v28 = [v27 countByEnumeratingWithState:&v50 objects:buf count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v51;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v51 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v50 + 1) + 8 * i);
            v33 = AXRuntimeLogPID();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *v54 = 67109120;
              v55 = v19;
              _os_log_impl(&dword_1BF78E000, v33, OS_LOG_TYPE_INFO, "Adding Associated suspended pid: %d", v54, 8u);
            }

            v34 = +[AXPidSuspensionInfo shared];
            v35 = [v34 suspendedPidsForDisplay:v46];
            [v35 addObject:v32];
          }

          v29 = [v27 countByEnumeratingWithState:&v50 objects:buf count:16];
        }

        while (v29);
      }

      os_unfair_lock_unlock(&gAXSuspendedPidsLock);
      v13 = v42;
      if (v42)
      {
        os_unfair_lock_lock(&gAXSuspendedPidsLock);
        v36 = +[AXPidSuspensionInfo shared];
        v37 = [v36 tentativeSuspendedPidsForDisplay:v46];

        v5 = v44;
        [v37 addObject:v44];
        os_unfair_lock_unlock(&gAXSuspendedPidsLock);
        v38 = dispatch_time(0, 2000000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___AXManagePidState_block_invoke;
        block[3] = &unk_1E80D3FB0;
        v48 = v44;
        v49 = v46;
        dispatch_after(v38, MEMORY[0x1E69E96A0], block);

        v17 = v37;
        v3 = v45;
        v9 = v43;
      }

      else
      {
        v5 = v44;
        v3 = v45;
        v9 = v43;
        v17 = v41;
      }

      goto LABEL_36;
    }
  }
}

void __AXBroadcastNotificationToAllClients_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = CFDictionaryGetValue(ObserverDictionary, *(a1 + 40));
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) addObject:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

uint64_t _AXUIElementPostNotification()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v63 = *MEMORY[0x1E69E9840];
  v31 = 0uLL;
  v30 = 0;
  length_4 = 0;
  v8 = AXRuntimeLogNotifications();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109379;
    *&buf[4] = v6;
    *&buf[8] = 2117;
    *&buf[10] = v2;
    _os_log_impl(&dword_1BF78E000, v8, OS_LOG_TYPE_INFO, "Sending notification to client: %d, %{sensitive}@", buf, 0x12u);
  }

  if (v4)
  {
    if (!v7)
    {
      return 4294942095;
    }
  }

  else
  {
    v4 = AXUIElementSharedSystemWide();
    if (!v7)
    {
      return 4294942095;
    }
  }

  v9 = _AXUIElementValidate(v4, &v30, &v31, &length_4);
  if (v9 < 0)
  {
    return 4294942095;
  }

  v14 = v31;
  if (_AXUIElementPostNotification_registerOnce != -1)
  {
    _AXUIElementPostNotification_cold_1();
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
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
  memset(buf, 0, sizeof(buf));
  length = 0;
  v27 = 0;
  v26 = 0;
  if (v2)
  {
    result = AXSerializeWrapper(v2, 1, buf, &length, &v27, &v26);
    if (result)
    {
      return result;
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    if (!length)
    {
      goto LABEL_17;
    }

    v11 = CFDataCreate(*MEMORY[0x1E695E480], buf, length);
    v12 = v23;
  }

  else
  {
    v11 = 0;
    v12 = &v22;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
  }

  v12[3] = v11;
LABEL_17:
  getpid();
  CFRetain(v7);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___AXUIElementPostNotification_block_invoke_2;
  aBlock[3] = &unk_1E80D3798;
  aBlock[4] = &v22;
  aBlock[5] = v7;
  v18 = length;
  v19 = v9;
  v16 = v14;
  v17 = v27;
  v20 = v6;
  v21 = v26;
  v13 = _Block_copy(aBlock);
  dispatch_async(_AXUIElementPostNotification_DifferentQueue, v13);

  _Block_object_dispose(&v22, 8);
  return 0;
}

void sub_1BF792978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AXRemoveSuspendedPid(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = AXRuntimeLogPID();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v25) = a1;
    _os_log_impl(&dword_1BF78E000, v4, OS_LOG_TYPE_INFO, "Removing suspended PID: %d", buf, 8u);
  }

  v5 = +[AXPidSuspensionInfo shared];
  v6 = [v5 suspendedPidsForDisplay:a2];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  [v6 removeObject:v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = +[AXPidSuspensionInfo shared];
  v9 = [v8 associatedRemotePidsForDisplay:a2];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v11 = [v9 objectForKey:v10];

  v12 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = AXRuntimeLogPID();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = v16;
          _os_log_impl(&dword_1BF78E000, v17, OS_LOG_TYPE_INFO, "Removing associated remote PID: %@", buf, 0xCu);
        }

        v18 = +[AXPidSuspensionInfo shared];
        v19 = [v18 suspendedPidsForDisplay:a2];
        [v19 removeObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v13);
  }
}

uint64_t __AXCreateAXUIElementWithElement(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == AXUIElementGetTypeID())
    {
      v8 = CFRetain(v6);
    }

    else
    {
      v9 = AXRemoteElementFromObject(v6);
      v10 = v9;
      if (v9)
      {
        v11 = [v9 uuidHash];
        if (a3)
        {
          v12 = getpid();
        }

        else
        {
          v12 = [v10 remotePid];
        }

        AppElementWithPid = _AXUIElementCreateWithPIDAndID(v12, v11, 9999);
      }

      else if (ApplicationElementRetrieval && (ApplicationElementRetrieval(), v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == v6))
      {
        v18 = getpid();
        AppElementWithPid = _AXUIElementCreateAppElementWithPid(v18);
      }

      else
      {
        v14 = _AXIsInElementCache(v6);
        v15 = v14;
        if (!a2 && !v14)
        {
          v15 = _AXAddToElementCache(v6);
        }

        AppElementWithPid = _AXUIElementCreateWithID(v6, v15);
      }

      v8 = AppElementWithPid;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

CFTypeID AXUIElementGetTypeID(void)
{
  if ((__AXUIElementInitialized & 1) == 0)
  {
    __AXUIElementInitialize();
  }

  return __kAXUIElementTypeID;
}

void AXPidSuspend(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = AXRuntimeLogPID();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:a1];
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = @"<redacted>";
    _os_log_impl(&dword_1BF78E000, v4, OS_LOG_TYPE_INFO, "Client requesting suspension of PID:%@ Name:%@", buf, 0x16u);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:{a1, @"pid"}];
  v10[0] = v6;
  v10[1] = @"suspended";
  v9[1] = @"suspended-status";
  v9[2] = @"display-type";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v10[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  AXPushNotificationToSystemForBroadcast();
}

void *serializeBufferDestructor(void *result)
{
  if (result)
  {
    return munmap(result, 0x1000uLL);
  }

  return result;
}

uint64_t _copyAttributeValueCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = MEMORY[0x1BFB5C740](0);
  if (!a4)
  {
    return 4294942095;
  }

  v11 = v10;
  v12 = a5;
  v13 = [v12 attributeCallback];
  v14 = v13[2](v13, a1, a2, a3);

  v15 = [v12 outgoingValuePreprocessor];
  if (v15)
  {
    v16 = [v12 outgoingValuePreprocessor];
    v17 = (v16)[2](v16, a3, v14);

    v14 = v17;
  }

  v18 = AXConvertOutgoingValue(a3, v14);

  if (v18)
  {
    v19 = CFRetain(v18);
  }

  else
  {
    v19 = 0;
  }

  *a4 = v19;
  MEMORY[0x1BFB5C730](v11);

  return 0;
}

uint64_t _setAttributeValueCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = MEMORY[0x1BFB5C740](0);
  v11 = a5;
  v12 = AXConvertIncomingValue(a4);
  v13 = [v11 setAttributeCallback];

  (v13)[2](v13, a1, a2, a3, v12);
  MEMORY[0x1BFB5C730](v10);

  return 0;
}

uint64_t _serverPerformActionCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = MEMORY[0x1BFB5C740](0);
  v9 = [a4 performActionCallback];
  LODWORD(a3) = v9[2](v9, a1, a2, a3, 0, 0);

  if (a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = 4294942096;
  }

  MEMORY[0x1BFB5C730](v8);
  return v10;
}

uint64_t _performActionWithValueCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v12 = MEMORY[0x1BFB5C740](0);
  v13 = [a5 performActionCallback];
  v14 = AXConvertIncomingValue(a4);
  LODWORD(a6) = (v13)[2](v13, a1, a2, a3, v14, a6);

  if (a6)
  {
    v15 = 0;
  }

  else
  {
    v15 = 4294942096;
  }

  MEMORY[0x1BFB5C730](v12);
  return v15;
}

uint64_t _copyElementAtPositionCallback(uint64_t a1, uint64_t a2, float a3, float a4, uint64_t a5, uint64_t a6, uint64_t *a7, void *a8)
{
  v26 = *MEMORY[0x1E69E9840];
  v15 = MEMORY[0x1BFB5C740](0);
  v16 = a8;
  v17 = [v16 hitTestCallback];

  if (v17)
  {
    v18 = [v16 hitTestCallback];
    v19 = v18[2](v18, a1, a2, a6, a3, a4);

    v20 = __AXCreateAXUIElementWithElement(v19, 0, 0);
    if (v20)
    {
      v21 = 0;
      *a7 = v20;
    }

    else
    {
      v22 = AXLogUIA();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v19;
        _os_log_impl(&dword_1BF78E000, v22, OS_LOG_TYPE_INFO, "Returning invalid element for copy element: %@", &v24, 0xCu);
      }

      v21 = 4294942094;
    }

    MEMORY[0x1BFB5C730](v15);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t _copyParameterizedAttributeValueCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = objc_autoreleasePoolPush();
  if (a5)
  {
    v13 = a6;
    v14 = AXConvertIncomingValue(a4);
    if (v14 || ([v13 parameterizedAttributeCallback], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = [v13 parameterizedAttributeCallback];
      v17 = (v16)[2](v16, a1, a2, a3, v14);

      v18 = [v13 outgoingValuePreprocessor];
      if (v18)
      {
        v19 = [v13 outgoingValuePreprocessor];
        v20 = (v19)[2](v19, a3, v17);

        v17 = v20;
      }

      v21 = AXConvertOutgoingValue(a3, v17);

      if (v21)
      {
        v22 = v21;

        v21 = 0;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
      v21 = 4294942095;
    }

    *a5 = v22;
  }

  else
  {
    v21 = 4294942095;
  }

  objc_autoreleasePoolPop(v12);
  return v21;
}

uint64_t _copyMultipleAttributeValuesCallback(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4, __CFArray **a5, void *a6)
{
  v9 = objc_autoreleasePoolPush();
  if (a3 && (Count = CFArrayGetCount(a3)) != 0)
  {
    v11 = Count;
    v25 = a5;
    context = v9;
    v12 = a6;
    theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], v11, MEMORY[0x1E695E9C0]);
    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = [CFArrayGetValueAtIndex(a3 i)];
        v16 = [v12 attributeCallback];
        v17 = v16[2](v16, a1, a2, v15);

        v18 = [v12 outgoingValuePreprocessor];
        if (v18)
        {
          v19 = [v12 outgoingValuePreprocessor];
          v20 = (v19)[2](v19, v15, v17);

          v17 = v20;
        }

        v21 = AXConvertOutgoingValue(v15, v17);

        if (v21)
        {
          CFArraySetValueAtIndex(theArray, i, v21);
        }

        else
        {
          valuePtr = -25205;
          v22 = AXValueCreate(kAXValueTypeAXError, &valuePtr);
          CFArraySetValueAtIndex(theArray, i, v22);
          CFRelease(v22);
        }

        objc_autoreleasePoolPop(v14);
      }
    }

    *v25 = theArray;

    v23 = 0;
    v9 = context;
  }

  else
  {
    v23 = 4294942095;
  }

  objc_autoreleasePoolPop(v9);
  return v23;
}

void _axNotificationObserverDiedHandler(uint64_t a1)
{
  v3 = +[AXSimpleRuntimeManager sharedManager];
  v2 = [v3 clientObserverCallback];
  v2[2](v2, a1);
}

id AXSimpleRuntimeApplicationElementRetrieval()
{
  v0 = +[AXSimpleRuntimeManager sharedManager];
  v1 = [v0 applicationElementCallback];
  v2 = v1[2]();

  return v2;
}

id _UIAXElementForAXUIElementRef(uint64_t a1)
{
  v1 = _AXUIElementIDForElement(a1);

  return _AXElementForAXUIElementUniqueId(v1, v2);
}

id _AXElementForAXUIElementUniqueId(void *a1, uint64_t a2)
{
  if (a2 == kAXApplicationUID)
  {
    if (ApplicationElementRetrieval)
    {
      v2 = ApplicationElementRetrieval();
    }

    else
    {
      v2 = 0;
    }
  }

  else if (a2 == 9999)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___AXElementForAXUIElementUniqueId_block_invoke;
    v5[3] = &__block_descriptor_40_e25_B16__0__AXRemoteElement_8l;
    v5[4] = a1;
    v2 = [AXRemoteElement remoteElementForBlock:v5];
  }

  else if (a2 == kAXLookingGlassUID || (v2 = _AXIsInElementCache(a1)) != 0)
  {
    v2 = a1;
  }

  return v2;
}

uint64_t _AXRequestingClientForSelfMachMessage()
{
  if (_OverrideClientType)
  {
    return _OverrideClientType;
  }

  else
  {
    return 7;
  }
}

uint64_t AXOverrideRequestingClientType(int a1)
{
  result = _AXDetermineRequestingClient();
  _OverrideClientType = a1;
  return result;
}

uint64_t _AXDetermineRequestingClient()
{
  if (_AXDetermineRequestingClient_onceToken != -1)
  {
    _AXDetermineRequestingClient_cold_1();
  }

  result = _OverrideClientType;
  if (!_OverrideClientType)
  {
    result = _DefaultClientType;
    if (_DefaultClientType == 9999)
    {
      if (_AXSHoverTextEnabled())
      {
        return 15;
      }

      else if (_AXSWatchControlEnabled())
      {
        return 14;
      }

      else
      {
        v1 = AXRuntimeLogCommon();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
        {
          _AXDetermineRequestingClient_cold_2(v1);
        }

        return 0;
      }
    }

    else if (_AXDetermineRequestingClient__sIsAST == 1)
    {
      if (_AXSAssistiveTouchScannerEnabled())
      {
        return 4;
      }

      else
      {
        return 17;
      }
    }
  }

  return result;
}

BOOL AXAttributeAllowsRequeryWhenRemoteElementFails(uint64_t a1)
{
  result = 1;
  if ((a1 - 3000) > 0x32 || ((1 << (a1 + 72)) & 0x4000009800205) == 0)
  {
    return a1 == 2231 || a1 == 2600;
  }

  return result;
}

BOOL _AXCallingFromSameApp(int a1, int a2)
{
  v4 = getpid();
  if (v4 == a1)
  {
    return 1;
  }

  v6 = v4;
  result = 0;
  if (!a1)
  {
    if (a2)
    {
      return v6 == sSystemWideServerPID;
    }
  }

  return result;
}

void _AXUIElementSetMachPortForNextMessage(mach_port_name_t name)
{
  if (name)
  {
    v2 = MEMORY[0x1E69E9A60];
    v3 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 0, 1);
    if (v3 == 17)
    {
      v3 = mach_port_mod_refs(*v2, name, 4u, 1);
    }

    if (v3)
    {
      v4 = AXRuntimeLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_1BF78E000, v4, OS_LOG_TYPE_INFO, "Could not set next mach port because it was already dead", v5, 2u);
      }
    }

    else
    {
      AXUIElementMachPortForNextMessage = name;
    }
  }
}

uint64_t AXUIElementCopyAttributeValueRecursive()
{
  v3 = MEMORY[0x1EEE9AC00]();
  v42 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v33 = 0;
  v32 = 0;
  result = 4294942095;
  if (!v0)
  {
    return result;
  }

  if (!v3)
  {
    return result;
  }

  v5 = v1;
  if (!v1)
  {
    return result;
  }

  v6 = v2;
  v7 = v0;
  v36 = kAXErrorSuccess;
  v35 = 0;
  memset(v41, 0, 512);
  v31 = 0;
  v29 = 0;
  v30 = 0;
  *v1 = 0;
  v8 = _AXUIElementValidate(v3, &v35, &v29, &v31);
  v9 = v29;
  v10 = v30;
  v11 = v35;
  v12 = getpid();
  if (v12 == v8 || !v8 && v11 && v12 == sSystemWideServerPID)
  {
    if (_OverrideClientType)
    {
      v13 = _OverrideClientType;
    }

    else
    {
      v13 = 7;
    }

    if (getSelfAuditToken_onceToken != -1)
    {
      AXUIElementCopyAttributeValueRecursive_cold_2();
    }

    *buf = getSelfAuditToken_auditToken;
    v40 = unk_1ED65513C;
    v14 = _AXXMIGCopyAttributeValue(0, v8, v9, v10, v7, v13, v41, &v34, &v33, &v32, &v36, buf);
    if (v14)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

  v15 = AXUIElementMachPortForNextMessage;
  if (AXUIElementMachPortForNextMessage)
  {
    AXUIElementMachPortForNextMessage = 0;
    goto LABEL_26;
  }

  if (v35)
  {
    if (_SystemWideServerPortName_onceToken != -1)
    {
      AXUIElementCopyAttributeValueRecursive_cold_1();
    }

    v16 = _SystemWideServerPortName___portName;
  }

  else
  {
    v16 = 0;
  }

  v15 = _AXGetPortFromCache(v8, v16);
  if (v15)
  {
LABEL_26:
    v17 = v31;
    v18 = _AXDetermineRequestingClient();
    v14 = _AXMIGCopyAttributeValue(v15, v17, v8, v9, v10, v7, v18, v41, &v34, &v33, &v32, &v36);
    _AXReleasePortFromCache(v15);
    _AXUIElementSetLastGlobalError(v36);
    if (v14)
    {
LABEL_14:
      if (v14 != 268451843 && v14 != 268435460)
      {
        return 4294942092;
      }

      _AXIPCToPidTimedOut(v8);
      return 4294942080;
    }

LABEL_27:
    v19 = v36;
    if (v36 == kAXErrorSuccess)
    {
      v19 = AXUnserializeWrapper(v41, v34, v33, v32, v5);
      v36 = v19;
    }

    if (v32 && v33)
    {
      munmap(v33, v32);
      v19 = v36;
    }

    v20 = *v5;
    if (*v5 && v19 == kAXErrorSuccess)
    {
      if (!shouldHandleRemoteElementCallthroughForAttribute(v7))
      {
        goto LABEL_53;
      }

      v28 = 0;
      v21 = _AXHandleRemoteElementCallthrough(v20, v3, v7, 0, 0, &v28, v6);
      if (v21)
      {
        v22 = v21;
        CFRelease(*v5);
        *v5 = v22;
      }

      else if (v28 == 1 && AXAttributeAllowsRequeryWhenRemoteElementFails(v7))
      {
        v37 = @"IgnoreRemoteElement";
        v38 = *v5;
        *buf = 0;
        v36 = AXUIElementCopyParameterizedAttributeValue(v3, v7, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1], buf);
        if (v36 || !*buf)
        {
          if (*buf)
          {
            CFRelease(*buf);
            *buf = 0;
          }

          if (*v5)
          {
            CFRelease(*v5);
            *v5 = 0;
          }

          v36 = kAXErrorFailure;
        }

        else
        {
          CFRelease(*v5);
          *v5 = *buf;
        }
      }

      v19 = v36;
    }

    if (v19 && v19 != kAXErrorNoValue)
    {
      return v36;
    }

LABEL_53:
    v25 = v35;
    v26 = getpid();
    if (v26 != v8 && (v8 || !v25 || v26 != sSystemWideServerPID) && [AXClientSideValueTransformer canTransformAttribute:v7])
    {
      v27 = [AXClientSideValueTransformer transformValue:*v5 forAttribute:v7 withElement:v3];
      if (v27)
      {
        if (*v5)
        {
          CFRelease(*v5);
          *v5 = 0;
        }

        *v5 = v27;
        v36 = kAXErrorSuccess;
      }
    }

    return v36;
  }

  v23 = AXRuntimeLogPID();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [MEMORY[0x1E696AD98] numberWithInt:v8];
    *buf = 138412290;
    *&buf[4] = v24;
    _os_log_impl(&dword_1BF78E000, v23, OS_LOG_TYPE_INFO, "Unable to CopyAttribute, no port for %@", buf, 0xCu);
  }

  return 4294942081;
}

void _AXIPCToPidTimedOut(uint64_t a1)
{
  if (a1 >= 1 && getpid() != a1 && !_AXSAutomationEnabled())
  {
    _AXPutPidOnTimeoutProbation(a1, 1);

    _AXPutPidOnTimeoutProbation(a1, 0);
  }
}

uint64_t shouldHandleRemoteElementCallthroughForAttribute(uint64_t a1)
{
  result = 0;
  if (a1 <= 5000)
  {
    if (a1 == 2011 || a1 == 2310 || a1 == 3051)
    {
      return result;
    }

    return 1;
  }

  v3 = a1 - 5001;
  if (v3 > 0x18 || ((1 << v3) & 0x1000003) == 0)
  {
    return 1;
  }

  return result;
}

void *_AXHandleRemoteElementCallthrough(void *cf, const __AXUIElement *a2, unint64_t a3, void *a4, char a5, _BYTE *a6, __CFSet *a7)
{
  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == AXUIElementGetTypeID())
    {
      if (_AXIsRemoteElement(cf, a2))
      {
        if (!a7)
        {
          goto LABEL_7;
        }

        if (!CFSetContainsValue(a7, cf))
        {
          CFSetAddValue(a7, cf);
LABEL_7:
          *a6 = 1;
          v38 = 0;
          pid = 0;
          v36[0] = 0;
          v36[1] = 0;
          v15 = _AXUIElementValidate(cf, &v38, v36, &pid);
          if (v15 < 0)
          {
            v26 = -v15;
            v27 = _AXUIElementIDForElement(cf);
            v29 = _AXUIElementCreateWithPIDAndID(v26, v27, v28);
            v30 = [AXUIMLElement cachedElementForParent:v29];
            v31 = v30;
            if (v30)
            {
              v32 = v30;
            }

            else
            {
              v32 = [[AXUIMLElement alloc] initWithParentElement:v29];
            }

            v34 = v32;
            if (v29)
            {
              CFRelease(v29);
            }

            if (a5)
            {
              v35 = [(AXUIMLElement *)v34 copyAttributeValue:a3 parameter:a4];
            }

            else
            {
              v35 = [(AXUIMLElement *)v34 copyAttributeValue:a3];
            }

            v24 = v35;
          }

          else
          {
            v16 = _UIAXElementForAXUIElementRef(cf);
            if (v16 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v17 = [v16 remotePid], v17 == getpid()) && (objc_msgSend(MEMORY[0x1E696AF00], "isMainThread") & 1) == 0))
            {
              v33 = AXRuntimeLogCommon();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                _AXHandleRemoteElementCallthrough_cold_1(v33);
              }

              v24 = 0;
            }

            else
            {
              _AXUIElementSetMachPortForNextMessage([v16 machPort]);
              if (a5)
              {
                v36[0] = 0;
                v18 = AXUIElementCopyParameterizedAttributeValueRecursive();
                if (v18 != -25212 && v18 && (a3 - 95252 < 3 || a3 - 92501 <= 1))
                {
                  pid = 0;
                  AXUIElementGetPid(a2, &pid);
                  v19 = pid;
                  v20 = _AXUIElementIDForElement(cf);
                  v22 = _AXUIElementCreateWithPIDAndID(v19, v20, v21);
                  AXUIElementCopyParameterizedAttributeValueRecursive();
                  CFRelease(v22);
                }
              }

              else
              {
                v36[0] = 0;
                AXUIElementCopyAttributeValueRecursive(cf, a3, v36, a7);
              }

              v24 = v36[0];
            }
          }

          return v24;
        }
      }

      return 0;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [a4 objectForKey:@"elementCount"];
    v24 = _AXHandleRemoteElementCallthroughForArray(cf, a2, a3, v23);

    return v24;
  }

  return _AXHandleRemoteElementCallthroughForArray(cf, a2, a3, a4);
}

AXError AXUIElementCopyParameterizedAttributeValue(AXUIElementRef element, CFStringRef parameterizedAttribute, CFTypeRef parameter, CFTypeRef *result)
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v5 = AXUIElementCopyParameterizedAttributeValueRecursive();
  CFRelease(Mutable);
  return v5;
}

AXError AXUIElementCopyAttributeValue(AXUIElementRef element, CFStringRef attribute, CFTypeRef *value)
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v4 = AXUIElementCopyAttributeValueRecursive();
  CFRelease(Mutable);
  return v4;
}

uint64_t AXUIElementCopyParameterizedAttributeValueRecursive()
{
  v3 = MEMORY[0x1EEE9AC00]();
  v54 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v43 = 0;
  result = 4294942095;
  if (v1)
  {
    if (v3)
    {
      v5 = v2;
      if (v2)
      {
        v6 = v1;
        v7 = v0;
        *v2 = 0;
        if (v0 == 91503 && _AXSMossdeepEnabled())
        {
          AXUIElementSharedSystemApp();
          AXUIElementPerformFencedActionWithValue();
        }

        v49 = 0;
        v48 = 0;
        memset(__dst, 0, 512);
        memset(v52, 0, 512);
        v42 = 0;
        v40 = 0;
        v41 = 0;
        v8 = _AXUIElementValidate(v3, &v48, &v40, &v42);
        if ((v8 & 0x80000000) != 0)
        {
          v19 = *v5;
          if (!*v5)
          {
            if ((v7 - 92501) < 2 || v7 == 95252)
            {
              Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
              *v5 = Mutable;
              CFArrayAppendValue(Mutable, v3);
              v19 = *v5;
            }

            else
            {
              v19 = 0;
            }
          }

          v29 = _AXHandleRemoteElementCallthrough(v19);
          if (v29)
          {
            CFRelease(*v5);
            *v5 = v29;
          }

          if (getpid() != v8 && [AXClientSideValueTransformer canTransformAttribute:v7])
          {
            v29 = [AXClientSideValueTransformer transformValue:*v5 forAttribute:v7 withElement:v3];
          }

          if (v29)
          {
            CFRelease(*v5);
            *v5 = v29;
          }

          return v49;
        }

        result = AXSerializeWrapper(v6, 1, v52, &v45, &v44, &v43);
        v49 = result;
        if (result)
        {
          return result;
        }

        v9 = v40;
        v10 = v41;
        v11 = v48;
        v12 = getpid();
        if (v12 == v8 || !v8 && v11 && v12 == sSystemWideServerPID)
        {
          v13 = v45;
          v14 = v44;
          v15 = v43;
          if (_OverrideClientType)
          {
            v16 = _OverrideClientType;
          }

          else
          {
            v16 = 7;
          }

          if (getSelfAuditToken_onceToken != -1)
          {
            v39 = v45;
            v37 = v44;
            AXUIElementCopyAttributeValueRecursive_cold_2();
            v14 = v37;
            v13 = v39;
          }

          *buf = getSelfAuditToken_auditToken;
          v51 = unk_1ED65513C;
          v17 = _AXXMIGCopyParameterizedAttributeValue(0, v8, v9, v10, v7, v52, v13, v14, v15, v16, __dst, &v47, &v46, &v45 + 1, &v49, buf);
          if (v17)
          {
LABEL_19:
            if (v17 == 268451843 || v17 == 268435460)
            {
              _AXIPCToPidTimedOut(v8);
              v18 = -25216;
            }

            else
            {
              v18 = -25204;
            }

            v49 = v18;
LABEL_32:
            if (v15)
            {
              munmap(v44, v15);
            }

            if (HIDWORD(v45) && v46)
            {
              munmap(v46, HIDWORD(v45));
            }

            v22 = v49;
            if (!v49)
            {
              if (!*v5)
              {
                goto LABEL_43;
              }

              v23 = _AXHandleRemoteElementCallthrough(*v5);
              if (v23)
              {
                v24 = v23;
                CFRelease(*v5);
                *v5 = v24;
              }

              v22 = v49;
              if (!v49)
              {
                goto LABEL_43;
              }
            }

            if (v22 == -25212)
            {
LABEL_43:
              v25 = v48;
              v26 = getpid();
              if (v26 != v8 && (v8 || !v25 || v26 != sSystemWideServerPID))
              {
                if ([AXClientSideValueTransformer canTransformAttribute:v7])
                {
                  v27 = [AXClientSideValueTransformer transformValue:*v5 forAttribute:v7 withElement:v3];
                  if (v27)
                  {
                    v28 = v27;
                    CFRelease(*v5);
                    *v5 = v28;
                    return 0;
                  }
                }
              }
            }

            return v49;
          }
        }

        else
        {
          if (v48)
          {
            if (_SystemWideServerPortName_onceToken != -1)
            {
              AXUIElementCopyAttributeValueRecursive_cold_1();
            }

            v21 = _SystemWideServerPortName___portName;
          }

          else
          {
            v21 = 0;
          }

          v30 = _AXGetPortFromCache(v8, v21);
          if (!v30)
          {
            v33 = AXRuntimeLogPID();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = [MEMORY[0x1E696AD98] numberWithInt:v8];
              *buf = 138412290;
              *&buf[4] = v34;
              _os_log_impl(&dword_1BF78E000, v33, OS_LOG_TYPE_INFO, "Unable to CopyParam, no port for %@", buf, 0xCu);
            }

            v49 = -25215;
            v15 = v43;
            goto LABEL_32;
          }

          v31 = v30;
          v15 = v43;
          v36 = v42;
          v38 = v45;
          v35 = v44;
          v32 = _AXDetermineRequestingClient();
          v17 = _AXMIGCopyParameterizedAttributeValue(v31, v36, v8, v9, v10, v7, v52, v38, v35, v15, v32, __dst, &v47, &v46, &v45 + 1, &v49);
          _AXReleasePortFromCache(v31);
          _AXUIElementSetLastGlobalError(v49);
          if (v17)
          {
            goto LABEL_19;
          }
        }

        if (!v49)
        {
          v49 = AXUnserializeWrapper(__dst, v47, v46, HIDWORD(v45), v5);
        }

        goto LABEL_32;
      }
    }
  }

  return result;
}

uint64_t AXUIElementSharedSystemApp()
{
  result = SystemApp;
  if (!SystemApp)
  {
    if (AXUIElementSharedSystemWide_onceToken != -1)
    {
      AXUIElementSharedSystemApp_cold_1();
    }

    AXUIElementCopyAttributeValue(AXUIElementSharedSystemWide_SystemWide, 0x3E9, &SystemApp);
    AXUIElementRegisterForApplicationDeath(SystemApp, &__block_literal_global_37);
    return SystemApp;
  }

  return result;
}

AXError AXUIElementSetAttributeValue(AXUIElementRef element, CFStringRef attribute, CFTypeRef value)
{
  v3 = MEMORY[0x1EEE9AC00](element);
  v35 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v6 = kAXErrorIllegalArgument;
  if (!v4)
  {
    return v6;
  }

  if (!v3)
  {
    return v6;
  }

  v7 = v5;
  if (!v5)
  {
    return v6;
  }

  v8 = v4;
  v32 = 0;
  memset(v34, 0, 512);
  v28 = 0;
  v27 = 0uLL;
  v9 = _AXUIElementValidate(v3, &v32, &v27, &v28);
  v6 = AXSerializeWrapper(v7, 0, v34, &v31, &v30, &v29);
  v33 = v6;
  if (v6)
  {
    return v6;
  }

  v10 = v27;
  v11 = v32;
  v12 = getpid();
  if (v12 == v9 || !v9 && v11 && v12 == sSystemWideServerPID)
  {
    v13 = v31;
    v14 = v30;
    v15 = v29;
    if (_OverrideClientType)
    {
      v16 = _OverrideClientType;
    }

    else
    {
      v16 = 7;
    }

    if (getSelfAuditToken_onceToken != -1)
    {
      v25 = v30;
      AXUIElementCopyAttributeValueRecursive_cold_2();
      v14 = v25;
    }

    v26[0] = getSelfAuditToken_auditToken;
    v26[1] = unk_1ED65513C;
    v17 = _AXXMIGSetAttributeValue(0, v9, v10, *(&v10 + 1), v8, v34, v13, v14, v15, v16, &v33, v26);
    if (!v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v32)
    {
      if (_SystemWideServerPortName_onceToken != -1)
      {
        AXUIElementCopyAttributeValueRecursive_cold_1();
      }

      v18 = _SystemWideServerPortName___portName;
    }

    else
    {
      v18 = 0;
    }

    v20 = _AXGetPortFromCache(v9, v18);
    if (v20)
    {
      v21 = v28;
      v15 = v29;
      v22 = v31;
      v23 = v30;
      v24 = _AXDetermineRequestingClient();
      v17 = _AXMIGSetAttributeValue(v20, v21, v9, v10, *(&v10 + 1), v8, v34, v22, v23, v15, v24, &v33);
      _AXUIElementSetLastGlobalError(v33);
    }

    else
    {
      v17 = 0;
      v33 = -25215;
      v15 = v29;
    }

    _AXReleasePortFromCache(v20);
    if (!v15)
    {
      goto LABEL_16;
    }
  }

  munmap(v30, v15);
LABEL_16:
  if (v17 == 268451843 || v17 == 268435460)
  {
    _AXIPCToPidTimedOut(v9);
    return -25216;
  }

  else if (v17)
  {
    return -25204;
  }

  else
  {
    return v33;
  }
}

AXError AXUIElementCopyMultipleAttributeValues(AXUIElementRef element, CFArrayRef attributes, AXCopyMultipleAttributeOptions options, CFArrayRef *values)
{
  v7 = MEMORY[0x1EEE9AC00](element);
  v62 = *MEMORY[0x1E69E9840];
  v56 = 0;
  v54 = 0;
  v55 = 0;
  memset(v53, 0, sizeof(v53));
  result = kAXErrorIllegalArgument;
  v44 = v7;
  if (!v7)
  {
    return result;
  }

  if (!v4)
  {
    return result;
  }

  v9 = v6;
  cf = v4;
  if (!v6)
  {
    return result;
  }

  v10 = v5;
  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(cf) || !CFArrayGetCount(cf))
  {
    return -25201;
  }

  v58 = kAXErrorSuccess;
  v57 = 0;
  memset(v61, 0, 512);
  memset(__dst, 0, 512);
  v52 = 0;
  v51 = 0uLL;
  v12 = _AXUIElementValidate(v44, &v57, &v51, &v52);
  result = AXSerializeWrapper(cf, 1, v61, &v56, &v55, &v54 + 1);
  v58 = result;
  if (result)
  {
    return result;
  }

  v13 = v51;
  if (v12 == getpid())
  {
    v14 = v56;
    v15 = v55;
    v16 = HIDWORD(v54);
    if (_OverrideClientType)
    {
      v17 = _OverrideClientType;
    }

    else
    {
      v17 = 7;
    }

    if (getSelfAuditToken_onceToken != -1)
    {
      AXUIElementCopyAttributeValueRecursive_cold_2();
    }

    v50[0] = getSelfAuditToken_auditToken;
    v50[1] = unk_1ED65513C;
    v18 = _AXXMIGCopyMultipleAttributeValues(0, v12, v13, *(&v13 + 1), v61, v14, v15, v16, v10, v17, __dst, &v54, &v53[1], v53, &v58, v50);
  }

  else
  {
    if (v57)
    {
      if (_SystemWideServerPortName_onceToken != -1)
      {
        AXUIElementCopyAttributeValueRecursive_cold_1();
      }

      v19 = _SystemWideServerPortName___portName;
    }

    else
    {
      v19 = 0;
    }

    v20 = _AXGetPortFromCache(v12, v19);
    if (v20)
    {
      v21 = v52;
      v22 = v56;
      v23 = v55;
      v16 = HIDWORD(v54);
      v24 = _AXDetermineRequestingClient();
      v18 = _AXMIGCopyMultipleAttributeValues(v20, v21, v12, v13, SDWORD2(v13), v61, v22, v23, v16, v10, v24, __dst, &v54, &v53[1], v53, &v58);
      _AXUIElementSetLastGlobalError(v58);
    }

    else
    {
      v18 = 0;
      v58 = -25215;
      v16 = HIDWORD(v54);
    }

    _AXReleasePortFromCache(v20);
  }

  if (v16)
  {
    munmap(v55, v16);
  }

  if (!v18)
  {
    if (v58 == kAXErrorSuccess)
    {
      v58 = AXUnserializeWrapper(__dst, v54, *&v53[1], v53[0], v9);
    }

    if (v53[0] && *&v53[1])
    {
      munmap(*&v53[1], v53[0]);
    }

    if (!*v9)
    {
      return v58;
    }

    v25 = v57;
    v26 = getpid();
    if (v26 == v12)
    {
      v45 = 0;
    }

    else
    {
      v45 = 1;
      if (!v12 && v25)
      {
        v45 = v26 != sSystemWideServerPID;
      }
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v27 = *v9;
    v28 = [v27 countByEnumeratingWithState:&v46 objects:v59 count:16];
    v29 = cf;
    if (v28)
    {
      v30 = v28;
      v31 = 0;
      v32 = 0;
      v33 = *v47;
      allocator = *MEMORY[0x1E695E480];
      obj = v27;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v47 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v46 + 1) + 8 * i);
          v36 = [CFArrayGetValueAtIndex(v29 v32)];
          if (shouldHandleRemoteElementCallthroughForAttribute(v36))
          {
            Mutable = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
            v38 = _AXHandleRemoteElementCallthrough(v35, v44, v36, 0, 0, v50, Mutable);
            v39 = Mutable;
            v29 = cf;
            CFRelease(v39);
          }

          else
          {
            v38 = 0;
          }

          if (v45 && [AXClientSideValueTransformer canTransformAttribute:v36])
          {
            if (v38)
            {
              v40 = v38;
            }

            else
            {
              v40 = v35;
            }

            v38 = [AXClientSideValueTransformer transformValue:v40 forAttribute:v36 withElement:v44];
          }

          if (v38)
          {
            if (!v31)
            {
              v31 = [*v9 mutableCopy];
            }

            [v31 replaceObjectAtIndex:v32 withObject:v38];
            CFRelease(v38);
          }

          ++v32;
        }

        v30 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v30);

      if (!v31)
      {
        return v58;
      }

      CFRelease(*v9);
      v27 = v31;
      *v9 = v27;
    }

    return v58;
  }

  if (v18 != 268451843 && v18 != 268435460)
  {
    return -25204;
  }

  _AXIPCToPidTimedOut(v12);
  return -25216;
}

uint64_t AXUIElementPerformFencedActionWithValue()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v5 = 4294942095;
  if (v0)
  {
    v6 = v1;
    if (v1)
    {
      v7 = v4;
      v8 = v3;
      v36 = 0;
      v35 = 0;
      v33 = 0;
      v34 = 0;
      memset(v38, 0, 480);
      v9 = v2 ? v2 : *MEMORY[0x1E695E738];
      memset(&v38[30], 0, 32);
      v10 = _AXUIElementValidate();
      v5 = AXSerializeWrapper(v9, 1, v38, &v32, &v31, &v30);
      v37 = v5;
      if (!v5)
      {
        v11 = v33;
        v12 = v34;
        v13 = v36;
        v14 = getpid();
        if (v14 == v10 || !v10 && v13 && v14 == sSystemWideServerPID)
        {
          if ((v8 - 1) > 0xFFFFFFFD)
          {
            LODWORD(v8) = 0;
          }

          else if (mach_port_insert_right(*MEMORY[0x1E69E9A60], v8, v8, 0x13u))
          {
            LODWORD(v8) = 0;
          }

          v15 = v32;
          v16 = v31;
          v17 = v30;
          v18 = _OverrideClientType;
          if (!_OverrideClientType)
          {
            v18 = 7;
          }

          if (getSelfAuditToken_onceToken != -1)
          {
            v28 = v18;
            AXUIElementCopyAttributeValueRecursive_cold_2();
            v18 = v28;
          }

          v29[0] = getSelfAuditToken_auditToken;
          v29[1] = unk_1ED65513C;
          v19 = _AXXMIGPerformActionWithValue(0, v8, v10, v11, v12, v6, v38, v15, v16, v17, v18, &v37, v29);
        }

        else
        {
          v20 = AXUIElementMachPortForNextMessage;
          if (AXUIElementMachPortForNextMessage)
          {
            AXUIElementMachPortForNextMessage = 0;
          }

          else
          {
            if (v36)
            {
              if (_SystemWideServerPortName_onceToken != -1)
              {
                AXUIElementCopyAttributeValueRecursive_cold_1();
              }

              v22 = _SystemWideServerPortName___portName;
            }

            else
            {
              v22 = 0;
            }

            v20 = _AXGetPortFromCache(v10, v22);
            if (!v20)
            {
              return 4294942081;
            }
          }

          v27 = v35;
          v23 = v32;
          v24 = v31;
          v25 = v30;
          v26 = _AXDetermineRequestingClient();
          v19 = _AXMIGPerformActionWithValue(v20, v8, v27, v10, v11, v12, v6, v38, v23, v24, v25, v26, &v37);
          _AXUIElementSetLastGlobalError(v37);
          if (!v7)
          {
            _AXReleasePortFromCache(v20);
          }
        }

        if (v19 == 268451843 || v19 == 268435460)
        {
          _AXIPCToPidTimedOut(v10);
          return 4294942080;
        }

        else if (v19)
        {
          return 4294942092;
        }

        else
        {
          return v37;
        }
      }
    }
  }

  return v5;
}

AXError AXUIElementPerformAction(AXUIElementRef element, CFStringRef action)
{
  result = kAXErrorIllegalArgument;
  if (element)
  {
    v4 = action;
    if (action)
    {
      v20 = kAXErrorSuccess;
      v19 = 0;
      v18 = 0;
      v17 = 0uLL;
      v5 = _AXUIElementValidate(element, &v19, &v17, &v18);
      v6 = v17;
      v7 = v19;
      v8 = getpid();
      if (v8 == v5 || !v5 && v7 && v8 == sSystemWideServerPID)
      {
        if (_OverrideClientType)
        {
          v9 = _OverrideClientType;
        }

        else
        {
          v9 = 7;
        }

        if (getSelfAuditToken_onceToken != -1)
        {
          AXUIElementCopyAttributeValueRecursive_cold_2();
        }

        v16[0] = getSelfAuditToken_auditToken;
        v16[1] = unk_1ED65513C;
        v10 = _AXXMIGPerformAction(0, v5, v6, *(&v6 + 1), v4, v9, &v20, v16);
      }

      else
      {
        if (v19)
        {
          if (_SystemWideServerPortName_onceToken != -1)
          {
            AXUIElementCopyAttributeValueRecursive_cold_1();
          }

          v11 = _SystemWideServerPortName___portName;
        }

        else
        {
          v11 = 0;
        }

        v12 = _AXGetPortFromCache(v5, v11);
        if (!v12)
        {
          return -25215;
        }

        v13 = v12;
        v14 = v18;
        v15 = _AXDetermineRequestingClient();
        v10 = _AXMIGPerformAction(v13, v14, v5, v6, *(&v6 + 1), v4, v15, &v20);
        _AXUIElementSetLastGlobalError(v20);
        _AXReleasePortFromCache(v13);
      }

      if (v10 == 268451843 || v10 == 268435460)
      {
        _AXIPCToPidTimedOut(v5);
        return -25216;
      }

      else if (v10)
      {
        return -25204;
      }

      else
      {
        return v20;
      }
    }
  }

  return result;
}

uint64_t AXUIElementCopyApplicationAndContextAtPositionWithDisplayID(const __AXUIElement *a1, uint64_t *a2, _DWORD *a3, uint64_t a4, float a5, float a6)
{
  result = 4294942095;
  if (a1 && a2)
  {
    v18 = 0;
    v17 = 0;
    v16 = 0uLL;
    _AXUIElementValidate(a1, &v17, &v16, &v18);
    if (v17)
    {
      v13 = copyApplicationAtPosition(a1, a3, a4, a5, a6);
      *a2 = v13;
      if (v13)
      {
        return 0;
      }

      else
      {
        v14 = AXLogUIA();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&dword_1BF78E000, v14, OS_LOG_TYPE_INFO, "Returning invalid element for copy application:", v15, 2u);
        }

        return 4294942094;
      }
    }

    else
    {
      return 4294942096;
    }
  }

  return result;
}

uint64_t copyApplicationAtPosition(const __AXUIElement *a1, _DWORD *a2, uint64_t a3, float a4, float a5)
{
  v23[2] = *MEMORY[0x1E69E9840];
  valuePtr[0] = a4;
  valuePtr[1] = a5;
  v8 = AXValueCreate(kAXValueTypeCGPoint, valuePtr);
  v22[0] = @"point";
  v22[1] = @"displayId";
  v23[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
  v23[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  cf = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v11 = AXUIElementCopyParameterizedAttributeValue(a1, 0x1656C, v10, &cf);
  v12 = cf;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = cf == 0;
  }

  if (v13)
  {
    Internal = 0;
    if (!cf)
    {
      return Internal;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if (a2)
    {
      v16 = [cf objectForKey:@"contextId"];
      *a2 = [v16 unsignedIntValue];
    }

    v17 = [cf objectForKey:{@"pid", cf}];
    v18 = [v17 intValue];

    Internal = _AXUIElementCreateInternal(v18, 0, kAXApplicationUID);
  }

  else
  {
    Internal = 0;
  }

  v12 = cf;
  if (cf)
  {
LABEL_16:
    CFRelease(v12);
  }

  return Internal;
}

double AXConvertRectToHostedCoordinates(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v15[3] = *MEMORY[0x1E69E9840];
  *valuePtr = a3;
  *&valuePtr[1] = a4;
  *&valuePtr[2] = a5;
  *&valuePtr[3] = a6;
  result = 0;
  v8 = AXValueCreate(kAXValueTypeCGRect, valuePtr);
  if (AXUIElementSharedSystemWide_onceToken != -1)
  {
    AXConvertRectToHostedCoordinates_cold_1();
  }

  v9 = AXUIElementSharedSystemWide_SystemWide;
  v15[0] = v8;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v15[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v15[2] = v11;
  AXUIElementCopyParameterizedAttributeValue(v9, 0x16577, [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3], &result);

  if (result)
  {
    AXValueGetValue(result, kAXValueTypeCGRect, valuePtr);
    if (result)
    {
      CFRelease(result);
      result = 0;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return *valuePtr;
}

uint64_t AXUIElementSharedSystemWide()
{
  if (AXUIElementSharedSystemWide_onceToken != -1)
  {
    AXUIElementSharedSystemApp_cold_1();
  }

  return AXUIElementSharedSystemWide_SystemWide;
}

double AXConvertRectFromHostedCoordinates(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v15[3] = *MEMORY[0x1E69E9840];
  *valuePtr = a3;
  *&valuePtr[1] = a4;
  *&valuePtr[2] = a5;
  *&valuePtr[3] = a6;
  result = 0;
  v8 = AXValueCreate(kAXValueTypeCGRect, valuePtr);
  if (AXUIElementSharedSystemWide_onceToken != -1)
  {
    AXConvertRectToHostedCoordinates_cold_1();
  }

  v9 = AXUIElementSharedSystemWide_SystemWide;
  v15[0] = v8;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v15[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v15[2] = v11;
  AXUIElementCopyParameterizedAttributeValue(v9, 0x16571, [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3], &result);

  if (result)
  {
    AXValueGetValue(result, kAXValueTypeCGRect, valuePtr);
    if (result)
    {
      CFRelease(result);
      result = 0;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return *valuePtr;
}

double AXConvertPointFromHostedCoordinates(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v13[3] = *MEMORY[0x1E69E9840];
  *valuePtr = a3;
  *&valuePtr[1] = a4;
  result = 0;
  v6 = AXValueCreate(kAXValueTypeCGPoint, valuePtr);
  if (AXUIElementSharedSystemWide_onceToken != -1)
  {
    AXConvertRectToHostedCoordinates_cold_1();
  }

  v7 = AXUIElementSharedSystemWide_SystemWide;
  v13[0] = v6;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v13[1] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v13[2] = v9;
  AXUIElementCopyParameterizedAttributeValue(v7, 0x1656F, [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3], &result);

  if (result)
  {
    AXValueGetValue(result, kAXValueTypeCGPoint, valuePtr);
    if (result)
    {
      CFRelease(result);
      result = 0;
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return *valuePtr;
}

double AXConvertPointToHostedCoordinates(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v13[3] = *MEMORY[0x1E69E9840];
  *valuePtr = a3;
  *&valuePtr[1] = a4;
  result = 0;
  v6 = AXValueCreate(kAXValueTypeCGPoint, valuePtr);
  if (AXUIElementSharedSystemWide_onceToken != -1)
  {
    AXConvertRectToHostedCoordinates_cold_1();
  }

  v7 = AXUIElementSharedSystemWide_SystemWide;
  v13[0] = v6;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v13[1] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v13[2] = v9;
  AXUIElementCopyParameterizedAttributeValue(v7, 0x16570, [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3], &result);

  if (result)
  {
    AXValueGetValue(result, kAXValueTypeCGPoint, valuePtr);
    if (result)
    {
      CFRelease(result);
      result = 0;
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return *valuePtr;
}

id _AXUIElementElementBeingHitTested()
{
  WeakRetained = objc_loadWeakRetained(&_AXElementBeingHitTested);

  return WeakRetained;
}

uint64_t _AXUISetConvertToCAScreenBlock(void *a1)
{
  AXUIConvertTOCAScreenConversionBlock = [a1 copy];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t AXUIElementCopyElementWithParameters(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"application"];

  v5 = [v3 objectForKeyedSubscript:@"point"];
  [v5 pointValue];
  v7 = v6;
  v9 = v8;

  v10 = [v3 objectForKeyedSubscript:@"displayId"];
  v11 = [v10 unsignedIntValue];

  v12 = [v3 objectForKeyedSubscript:@"contextId"];
  v13 = [v12 unsignedIntValue];

  v14 = [v3 objectForKeyedSubscript:@"hitTestType"];

  v15 = [v14 unsignedIntValue];

  v16 = v7;
  v17 = v9;
  return _AXUIElementCopyElementAtPositionWithParams(v4, a1, v15, 0, v13, v11, 0, v16, v17);
}

uint64_t _AXUIElementCopyElementAtPositionWithParams(const __AXUIElement *a1, uint64_t *a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, int a7, float a8, float a9)
{
  v140 = *MEMORY[0x1E69E9840];
  v133 = a5;
  v130 = 0;
  v129 = 0;
  v128 = 0uLL;
  v10 = 4294942095;
  if (!a1)
  {
    return v10;
  }

  v11 = a2;
  if (!a2)
  {
    return v10;
  }

  v132 = 0;
  v131 = 0;
  memset(v139, 0, 512);
  v127 = 0;
  v126 = 0uLL;
  v18 = AXRequestingClient();
  *v11 = 0;
  v19 = _AXUIElementValidate(a1, &v131, &v126, &v127);
  if (!a4 && v131)
  {
    v20 = copyApplicationAtPosition(a1, &v133, a6, a8, a9);
    if (!v20)
    {
      _AXSetRequestingClient(v18);
      return 4294942096;
    }

    v21 = v20;
    v19 = _AXUIElementValidate(v20, &v131, &v126, &v127);
    CFRelease(v21);
    goto LABEL_70;
  }

  v22 = v133;
  if (v133)
  {
    goto LABEL_71;
  }

  if (!AXProcessCanContactSystemWideServer())
  {
LABEL_70:
    v22 = v133;
    if (!v133)
    {
      v62 = a8;
      v64 = a9;
LABEL_73:
      v65 = v126;
      v66 = v131;
      v67 = getpid();
      if (v67 == v19)
      {
        v68 = 1;
      }

      else
      {
        v68 = 0;
        if (!v19 && v66)
        {
          v68 = v67 == sSystemWideServerPID;
        }
      }

      if (v68 | a7)
      {
        v69 = AXLogHitTest();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          v141.x = v62;
          v141.y = v64;
          v97 = NSStringFromPoint(v141);
          [MEMORY[0x1E696AD98] numberWithUnsignedInt:v133];
          v99 = v98 = v19;
          *buf = 138412546;
          *&buf[4] = v97;
          *&buf[12] = 2112;
          *&buf[14] = v99;
          _os_log_debug_impl(&dword_1BF78E000, v69, OS_LOG_TYPE_DEBUG, "Calling from same app for point: %@ and contextId: %@", buf, 0x16u);

          v19 = v98;
        }

        Current = CFRunLoopGetCurrent();
        if (Current == CFRunLoopGetMain())
        {
          v71 = v62;
          v72 = v64;
          v73 = v133;
          if (_OverrideClientType)
          {
            v74 = _OverrideClientType;
          }

          else
          {
            v74 = 7;
          }

          if (getSelfAuditToken_onceToken != -1)
          {
            AXUIElementCopyAttributeValueRecursive_cold_2();
          }

          *buf = getSelfAuditToken_auditToken;
          *&buf[16] = unk_1ED65513C;
          if (!_AXXMIGCopyElementAtPosition(v71, v72, 0, v19, v65, *(&v65 + 1), a3, v73, v74, &v130, &v128, v139, &v129, &v132, buf))
          {
            goto LABEL_88;
          }
        }
      }

      else
      {
        v84 = AXUIElementMachPortForNextMessage;
        if (AXUIElementMachPortForNextMessage)
        {
          v85 = v19;
          AXUIElementMachPortForNextMessage = 0;
        }

        else
        {
          if (v131)
          {
            if (_SystemWideServerPortName_onceToken != -1)
            {
              AXUIElementCopyAttributeValueRecursive_cold_1();
            }

            v86 = _SystemWideServerPortName___portName;
          }

          else
          {
            v86 = 0;
          }

          v85 = v19;
          v84 = _AXGetPortFromCache(v19, v86);
          if (!v84)
          {
            v95 = AXRuntimeLogPID();
            if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
            {
              v96 = [MEMORY[0x1E696AD98] numberWithInt:v19];
              *buf = 138412290;
              *&buf[4] = v96;
              _os_log_impl(&dword_1BF78E000, v95, OS_LOG_TYPE_INFO, "Unable to CopyElement, no port for %@", buf, 0xCu);
            }

            v94 = -25215;
            goto LABEL_109;
          }
        }

        v87 = v127;
        v90 = v133;
        v91 = _AXDetermineRequestingClient();
        v88 = v62;
        v89 = v64;
        v92 = v90;
        LODWORD(v19) = v85;
        v93 = _AXMIGCopyElementAtPosition(v84, v87, v85, v65, *(&v65 + 1), a3, v92, v91, v88, v89, &v130, &v128, v139, &v129, &v132);
        _AXUIElementSetLastGlobalError(v132);
        _AXReleasePortFromCache(v84);
        if (!v93)
        {
LABEL_88:
          if (v132)
          {
            goto LABEL_110;
          }

          Internal = _AXUIElementCreateInternal(v130, v128, *(&v128 + 1));
          *v11 = Internal;
          if (Internal)
          {
            LODWORD(valuePtr.x) = 0;
            AXUIElementGetPid(Internal, &valuePtr);
            x_low = LODWORD(valuePtr.x);
            if ((LODWORD(valuePtr.x) & 0x80000000) != 0)
            {
              v77 = getpid();
              x_low = LODWORD(valuePtr.x);
              if (v77 + LODWORD(valuePtr.x))
              {
                v100 = -LODWORD(valuePtr.x);
                v101 = _AXUIElementIDForElement(*v11);
                v79 = _AXUIElementCreateWithPIDAndID(v100, v101, v102);
                v103 = [AXUIMLElement cachedElementForParent:v79];
                v104 = v103;
                if (v103)
                {
                  v105 = v103;
                }

                else
                {
                  v105 = [[AXUIMLElement alloc] initWithParentElement:v79];
                }

                v81 = v105;
                if (*v11)
                {
                  CFRelease(*v11);
                  *v11 = 0;
                }

                *v11 = [v81 copyElementAtPosition:{a8, a9}];
                goto LABEL_132;
              }
            }

            if (x_low != v19 && x_low)
            {
              CanContactSystemWideServer = AXProcessCanContactSystemWideServer();
              if (!a7 && CanContactSystemWideServer)
              {
                v79 = AXUICreateApplicationElementForElement(*v11);
                v80 = _UIAXElementForAXUIElementRef(*v11);
                v81 = AXRemoteElementFromObject(v80);

                if (v81)
                {
                  _AXUIElementSetMachPortForNextMessage([v81 machPort]);
                  v82 = a3;
                  v83 = ([v81 deniesDirectAppConnection] & 1) == 0 && objc_msgSend(v81, "remotePid") != 0;
                }

                else
                {
                  v82 = a3;
                  v83 = 1;
                }

                *buf = 0;
                v104 = [AXUIElement uiElementWithAXElement:*v11];
                v106 = [v104 numberWithAXAttribute:2021];
                v107 = [v106 unsignedIntValue];

                if (v83)
                {
                  v132 = _AXUIElementCopyElementAtPositionWithParams(*v11, buf, v82, 0, v107, 0, 0, a8, a9);
                  if (!v132)
                  {
                    CFRelease(*v11);
                    *v11 = *buf;
                  }
                }

LABEL_132:
                if (v79)
                {
                  CFRelease(v79);
                }

LABEL_135:
                if (*v11)
                {
                  if (!v132)
                  {
LABEL_112:
                    _AXSetRequestingClient(v18);
                    return v132;
                  }

LABEL_110:
                  if (*v11)
                  {
                    CFRelease(*v11);
                    *v11 = 0;
                  }

                  goto LABEL_112;
                }

                goto LABEL_138;
              }

              x_low = LODWORD(valuePtr.x);
            }

            if (x_low)
            {
              goto LABEL_135;
            }

            if (*v11)
            {
              CFRelease(*v11);
              *v11 = 0;
            }
          }

LABEL_138:
          v94 = -25200;
          goto LABEL_109;
        }
      }

      v94 = -25204;
LABEL_109:
      v132 = v94;
      goto LABEL_110;
    }

LABEL_71:
    v62 = AXConvertPointToHostedCoordinates(v22, a6, a8, a9);
    v64 = v63;
    goto LABEL_73;
  }

  v116 = v19;
  valuePtr.x = a8;
  valuePtr.y = a9;
  v23 = AXValueCreate(kAXValueTypeCGPoint, &valuePtr);
  v138[0] = v23;
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a6];
  v138[1] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:2];

  result = 0;
  v26 = _AXUIElementCreateInternal(0, 0, kAXApplicationUID);
  v27 = AXUIElementCopyParameterizedAttributeValue(v26, 0x16573, v25, &result);
  if (v23)
  {
    CFRelease(v23);
  }

  v28 = result;
  if (v27 == kAXErrorSuccess && result)
  {
    v29 = CFGetTypeID(result);
    if (v29 == CFNumberGetTypeID())
    {
      v133 = [result unsignedIntValue];
    }

    v28 = result;
  }

  if (v28)
  {
    CFRelease(v28);
    result = 0;
  }

  if (!a7)
  {
LABEL_67:
    if (v26)
    {
      CFRelease(v26);
    }

    v19 = v116;
    goto LABEL_70;
  }

  v115 = a7;
  v136 = @"contextId";
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v133];
  v137 = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];

  v32 = AXUIElementCopyParameterizedAttributeValue(v26, 0x16574, v31, &result);
  v33 = 0;
  v34 = result;
  if (v32 == kAXErrorSuccess && result)
  {
    v35 = CFGetTypeID(result);
    if (v35 == CFNumberGetTypeID() && (v36 = [result unsignedIntValue], v36 != getpid()))
    {
      v113 = v11;
      v114 = v31;
      v110 = a6;
      v37 = AXRuntimeLogCommon();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = result;
        v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v133];
        v40 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
        *buf = 138412802;
        *&buf[4] = v38;
        *&buf[12] = 2112;
        *&buf[14] = v39;
        *&buf[22] = 2112;
        *&buf[24] = v40;
        _os_log_impl(&dword_1BF78E000, v37, OS_LOG_TYPE_INFO, "the pid{%@} for this context id{%@} is not the same for the hit testing app{%@}, so we shouldn't use it here. this hit test needs to forward through to the remote view", buf, 0x20u);
      }

      v108 = v26;
      v109 = v25;
      v111 = a3;
      v112 = v18;

      v41 = +[AXRemoteElement registeredRemoteElements];
      [v41 enumerateObjectsUsingBlock:&__block_literal_global_0];

      v122[0] = MEMORY[0x1E69E9820];
      v122[1] = 3221225472;
      v122[2] = ___AXUIElementCopyElementAtPositionWithParams_block_invoke_22;
      v122[3] = &__block_descriptor_44_e25_B16__0__AXRemoteElement_8l;
      v123 = v133;
      v122[4] = result;
      [AXRemoteElement remoteElementsForBlock:v122];
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      obj = v121 = 0u;
      v42 = [obj countByEnumeratingWithState:&v118 objects:v134 count:16];
      if (v42)
      {
        v43 = v42;
        v33 = 0;
        v44 = *v119;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v119 != v44)
            {
              objc_enumerationMutation(obj);
            }

            v46 = *(*(&v118 + 1) + 8 * i);
            v47 = [v46 accessibilityContainer];
            v48 = [v47 valueForKey:@"_accessibilityWindow"];

            v49 = AXRuntimeLogCommon();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              *&buf[4] = v46;
              *&buf[12] = 2112;
              *&buf[14] = v48;
              _os_log_impl(&dword_1BF78E000, v49, OS_LOG_TYPE_INFO, "matched on %@ with window: %@", buf, 0x16u);
            }

            if (!v33 && v48)
            {
              v33 = v46;
            }
          }

          v43 = [obj countByEnumeratingWithState:&v118 objects:v134 count:16];
        }

        while (v43);
      }

      else
      {
        v33 = 0;
      }

      WeakRetained = objc_loadWeakRetained(&_AXElementBeingHitTested);

      v51 = AXRemoteElementFromObject(WeakRetained);
      if ([obj count])
      {
        v11 = v113;
        v31 = v114;
        a3 = v111;
        v18 = v112;
        a6 = v110;
      }

      else
      {
        v11 = v113;
        v31 = v114;
        a3 = v111;
        v18 = v112;
        a6 = v110;
        if (v51)
        {
          v52 = [v51 accessibilityContainer];
          v53 = [v52 valueForKey:@"_accessibilityWindow"];

          [v51 containerAccessibilityFrame];
          v54 = 0;
          if (CGRectContainsPoint(v142, valuePtr) && v53)
          {
            v55 = [v53 valueForKey:@"isHidden"];
            v54 = [v55 BOOLValue] ^ 1;
          }

          v56 = v51;
          v57 = AXRuntimeLogCommon();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            v58 = [MEMORY[0x1E696AD98] numberWithBool:v54];
            *buf = 138412546;
            *&buf[4] = v58;
            *&buf[12] = 2112;
            *&buf[14] = v56;
            _os_log_impl(&dword_1BF78E000, v57, OS_LOG_TYPE_INFO, "Did not find matching remote element (multi-level remote hosting in play) - checking starting element: %@ %@", buf, 0x16u);
          }

          if (v54)
          {
            v51 = v56;
            v59 = v56;

            v33 = v59;
            v31 = v114;
          }

          else
          {
            v31 = v114;
            v51 = v56;
          }
        }
      }

      v26 = v108;
      v25 = v109;
      if (v33)
      {
        v60 = v33;
        v61 = AXRuntimeLogCommon();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v60;
          *&buf[12] = 1024;
          *&buf[14] = v133;
          _os_log_impl(&dword_1BF78E000, v61, OS_LOG_TYPE_INFO, "The mismatched pid was found to be a remote element: %@, so leaving contextId unchanged so let's reset to use contextId of the hosting window: %u", buf, 0x12u);
        }

        v31 = v114;
      }

      else
      {
        v133 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = result;
  }

  if (v34)
  {
    CFRelease(v34);
    result = 0;
  }

  if (!v33)
  {

    a7 = v115;
    goto LABEL_67;
  }

  *v11 = _AXCreateAXUIElementWithElement(v33);
  if (v26)
  {
    CFRelease(v26);
  }

  _AXSetRequestingClient(v18);

  return 0;
}

AXError AXUIElementGetPid(AXUIElementRef element, pid_t *pid)
{
  v2 = kAXErrorIllegalArgument;
  if (element && pid)
  {
    *pid = -1;
    v4 = _AXUIElementValidate();
    v2 = kAXErrorSuccess;
    *pid = v4;
  }

  return v2;
}

uint64_t AXUICreateApplicationElementForElement(const __AXUIElement *a1)
{
  pid = -1;
  AXUIElementGetPid(a1, &pid);
  return _AXUIElementCreateAppElementWithPid(pid);
}

uint64_t AXUIElementCopyElementUsingDisplayIdAtPosition(const __AXUIElement *a1, uint64_t a2, uint64_t *a3, int a4, float a5, float a6)
{
  v21[2] = *MEMORY[0x1E69E9840];
  result = 0;
  v19[0] = a5;
  v19[1] = a6;
  v12 = AXValueCreate(kAXValueTypeCGPoint, v19);
  Internal = _AXUIElementCreateInternal(0, 0, kAXApplicationUID);
  v21[0] = v12;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v21[1] = v14;
  v15 = AXUIElementCopyParameterizedAttributeValue(Internal, 0x16573, [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2], &result);

  if (Internal)
  {
    CFRelease(Internal);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v16 = result;
  if (!v15 && result)
  {
    v17 = CFGetTypeID(result);
    if (v17 == CFNumberGetTypeID())
    {
      v15 = _AXUIElementCopyElementAtPositionWithParams(a1, a3, 2 * (a4 != 0), 0, [result unsignedIntValue], a2, 0, a5, a6);
    }

    else
    {
      v15 = 0;
    }

    v16 = result;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v15;
}

uint64_t __AXUIElementSharedSystemWide_block_invoke()
{
  result = _AXUIElementCreateInternal(0, 0, kAXApplicationUID);
  AXUIElementSharedSystemWide_SystemWide = result;
  return result;
}

void AXUIElementRegisterForApplicationDeath(const __AXUIElement *a1, void *a2)
{
  v3 = a2;
  if (AXUIElementRegisterForApplicationDeath_onceToken != -1)
  {
    AXUIElementRegisterForApplicationDeath_cold_1();
  }

  v4 = [v3 copy];
  pid = 0;
  AXUIElementGetPid(a1, &pid);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:pid];
  v6 = [ApplicationDeathHandlers objectForKey:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v6 addObject:v4];
  [ApplicationDeathHandlers setObject:v6 forKey:v5];
}

uint64_t AXUIElementSharedKeyboardApp()
{
  result = AXUIElementSharedKeyboardApp_KeyboardApp;
  if (!AXUIElementSharedKeyboardApp_KeyboardApp)
  {
    v1 = AXUIElementSharedSystemApp();
    AXUIElementCopyAttributeValue(v1, 0x453, &AXUIElementSharedKeyboardApp_KeyboardApp);
    AXUIElementRegisterForApplicationDeath(AXUIElementSharedKeyboardApp_KeyboardApp, &__block_literal_global_39);
    return AXUIElementSharedKeyboardApp_KeyboardApp;
  }

  return result;
}

void __AXUIElementSharedKeyboardApp_block_invoke()
{
  if (AXUIElementSharedKeyboardApp_KeyboardApp)
  {
    CFRelease(AXUIElementSharedKeyboardApp_KeyboardApp);
    AXUIElementSharedKeyboardApp_KeyboardApp = 0;
  }
}

AXError AXUIElementSetMessagingTimeout(AXUIElementRef element, float timeoutInSeconds)
{
  v8 = 0;
  result = kAXErrorIllegalArgument;
  if (element && timeoutInSeconds >= 0.0)
  {
    v7 = 0;
    v6 = 0uLL;
    v4 = (timeoutInSeconds * 1000.0);
    v5 = _AXUIElementValidate(element, &v8, &v6, &v7);
    if (v8)
    {
      _AXUIElementSetGlobalTimeout(v4);
      return 0;
    }

    else if (v5 < 1)
    {
      return -25202;
    }

    else
    {
      result = kAXErrorSuccess;
      *(element + 9) = v4;
    }
  }

  return result;
}

void *AXUIElementRegisterSystemWideServerDeathCallback(void *result, uint64_t a2)
{
  gSystemWideServerCallback = result;
  gSystemWideServerCallbackInfo = a2;
  return result;
}

uint64_t AXObserverCreateWithPidObserver(int a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v14 = 1024;
  result = 4294942095;
  if (a1 < 0 || !a2 || !a3)
  {
    return result;
  }

  Internal = _AXObserverCreateInternal(a1, a2);
  if (!Internal)
  {
    return 4294942096;
  }

  v9 = Internal;
  v10 = MSHCreateMIGServerSource(0, 0, _AXXMIGAccessibilityDefs_subsystem, 0, 0, 0);
  if (!v10)
  {
    CFRelease(v9);
    return 4294942096;
  }

  *(v9 + 24) = v10;
  v11 = MSHGetMachPortFromSource(v10);
  *(v9 + 32) = v11;
  MEMORY[0x1BFB5CC00](*MEMORY[0x1E69E9A60], v11, 1, &v14, 4);
  _AXSetObserverForPort(v9, *(v9 + 32));
  v12 = _AXUIElementCreateInternal(0, 0, kAXApplicationUID);
  v13 = AXObserverAddNotification(v9, v12, 0x3FD, a4);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    NSLog(@"AXError: Could not auto-register for pid status change");
  }

  result = 0;
  *a3 = v9;
  return result;
}

AXError AXObserverAddNotification(AXObserverRef observer, AXUIElementRef element, CFStringRef notification, void *refcon)
{
  v33 = kAXErrorSuccess;
  result = kAXErrorIllegalArgument;
  if (element && observer && notification)
  {
    TypeID = AXObserverGetTypeID();
    if (TypeID != CFGetTypeID(observer))
    {
      return -25203;
    }

    v32 = 0;
    v31 = 0;
    v30 = 0uLL;
    v10 = _AXUIElementValidate(element, &v32, &v30, &v31);
    if (v10 == *(observer + 4))
    {
      v11 = v10;
      v12 = v30;
      v13 = v32;
      v14 = getpid();
      if (v14 == v11 || !v11 && v13 && v14 == sSystemWideServerPID)
      {
        v15 = *(observer + 8);
        v16 = MEMORY[0x1E69E9A60];
        v17 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], v15, 0, 1);
        if (v17 == 17)
        {
          v17 = mach_port_mod_refs(*v16, v15, 4u, 1);
        }

        if (v17)
        {
          return -25204;
        }

        v18 = *(observer + 48) == 0;
        if (getSelfAuditToken_onceToken != -1)
        {
          AXUIElementCopyAttributeValueRecursive_cold_2();
        }

        v29[0] = getSelfAuditToken_auditToken;
        v29[1] = unk_1ED65513C;
        if (_AXXMIGAddNotification(0, v11, v12, *(&v12 + 1), notification, v15, v18, refcon, &v33, v29))
        {
          return -25204;
        }
      }

      else
      {
        v19 = *(observer + 4);
        if (v32)
        {
          if (_SystemWideServerPortName_onceToken != -1)
          {
            AXUIElementCopyAttributeValueRecursive_cold_1();
          }

          v20 = _SystemWideServerPortName___portName;
        }

        else
        {
          v20 = 0;
        }

        v21 = _AXGetPortFromCache(v19, v20);
        if (!v21)
        {
          return -25215;
        }

        v22 = v21;
        Current = CFAbsoluteTimeGetCurrent();
        if (v31 <= 999)
        {
          CFLog();
          v31 = 2000;
        }

        v24 = CFAbsoluteTimeGetCurrent();
        v25 = v31;
        if (v24 - Current >= (v31 / 1000))
        {
          v27 = 1;
        }

        else
        {
          v26 = *MEMORY[0x1E695E8E0];
          do
          {
            v27 = _AXMIGAddNotification(v22, v25, v11, v12, *(&v12 + 1), notification, *(observer + 8), *(observer + 48) == 0, refcon, &v33);
            _AXUIElementSetLastGlobalError(v33);
            if (!v27)
            {
              break;
            }

            CFRunLoopRunInMode(v26, 0.5, 1u);
            v28 = CFAbsoluteTimeGetCurrent();
            v25 = v31;
          }

          while (v28 - Current < (v31 / 1000));
        }

        _AXReleasePortFromCache(v22);
        if (v27)
        {
          return -25204;
        }
      }

      result = v33;
      if (v33 == kAXErrorSuccess)
      {
        *(observer + 48) = 1;
      }
    }

    else
    {
      return -25201;
    }
  }

  return result;
}

void _AXObserverRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRunLoopSourceInvalidate(v2);
      CFRelease(*(a1 + 24));
      v3 = *(a1 + 32);

      _AXRemoveObserverForPort(v3);
    }
  }
}

CFRunLoopSourceRef AXObserverGetRunLoopSource(CFRunLoopSourceRef observer)
{
  if (observer)
  {
    return *(observer + 3);
  }

  return observer;
}

AXError AXObserverRemoveNotification(AXObserverRef observer, AXUIElementRef element, CFStringRef notification)
{
  v27 = *MEMORY[0x1E69E9840];
  result = kAXErrorIllegalArgument;
  if (observer && element && notification)
  {
    TypeID = AXObserverGetTypeID();
    if (TypeID != CFGetTypeID(observer))
    {
      return -25203;
    }

    if (!*(observer + 48))
    {
      return -25210;
    }

    v24 = kAXErrorSuccess;
    v23 = 0;
    v22 = 0;
    v21 = 0uLL;
    v8 = _AXUIElementValidate(element, &v23, &v21, &v22);
    if (v8 != *(observer + 4))
    {
      return -25201;
    }

    v9 = v8;
    v10 = v21;
    v11 = v23;
    v12 = getpid();
    if (v12 == v9 || !v9 && v11 && v12 == sSystemWideServerPID)
    {
      v13 = *(observer + 8);
      v14 = MEMORY[0x1E69E9A60];
      v15 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], v13, 0, 1);
      if (v15 == 17)
      {
        v15 = mach_port_mod_refs(*v14, v13, 4u, 1);
      }

      if (!v15)
      {
        if (getSelfAuditToken_onceToken != -1)
        {
          AXUIElementCopyAttributeValueRecursive_cold_2();
        }

        *buf = getSelfAuditToken_auditToken;
        v26 = unk_1ED65513C;
        v15 = _AXXMIGRemoveNotification(0, v9, v10, *(&v10 + 1), notification, v13, &v24, buf);
      }

      goto LABEL_27;
    }

    v16 = *(observer + 4);
    if (v23)
    {
      if (_SystemWideServerPortName_onceToken != -1)
      {
        AXUIElementCopyAttributeValueRecursive_cold_1();
      }

      v17 = _SystemWideServerPortName___portName;
    }

    else
    {
      v17 = 0;
    }

    v18 = _AXGetPortFromCache(v16, v17);
    if (v18)
    {
      v19 = v18;
      v15 = _AXMIGRemoveNotification(v18, v22, v9, v10, *(&v10 + 1), notification, *(observer + 8), &v24);
      _AXUIElementSetLastGlobalError(v24);
      _AXReleasePortFromCache(v19);
LABEL_27:
      if (v15)
      {
        return -25204;
      }

      else
      {
        return v24;
      }
    }

    v20 = AXRuntimeLogPID();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = observer;
      _os_log_impl(&dword_1BF78E000, v20, OS_LOG_TYPE_INFO, "Unable to AddObserver, no port for %@", buf, 0xCu);
    }

    return -25215;
  }

  return result;
}

uint64_t _AXKeyboardAppPid()
{
  pid = 0;
  v0 = AXUIElementSharedKeyboardApp();
  AXUIElementGetPid(v0, &pid);
  return pid;
}

void portInvalidationCallback(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = AXRuntimeLogPID();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v25 = a2;
    _os_log_impl(&dword_1BF78E000, v3, OS_LOG_TYPE_INFO, "Port invalidated: %d", buf, 8u);
  }

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __portInvalidationCallback_block_invoke;
  v21 = &__block_descriptor_36_e5_v8__0l;
  v22 = a2;
  AX_PERFORM_WITH_LOCK();
  if (!a2 && gSystemWideServerCallback)
  {
    gSystemWideServerCallback(gSystemWideServerCallbackInfo);
  }

  v4 = ApplicationDeathHandlers;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v6 = [v4 objectForKey:v5];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v14 + 1) + 8 * i) + 16))(*(*(&v14 + 1) + 8 * i));
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v23 count:16];
    }

    while (v9);
  }

  v12 = ApplicationDeathHandlers;
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{a2, v14}];
  [v12 removeObjectForKey:v13];
}

uint64_t __AXUIElementRegisterForApplicationDeath_block_invoke()
{
  ApplicationDeathHandlers = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

unint64_t AXGetCurrentSerializationStyle()
{
  if (AXInitSerializationStyle_onceToken != -1)
  {
    AXUnserializeWrapper_cold_1();
  }

  return atomic_load(&AXCurrentSerializationStyle);
}

void AXSetCurrentSerializationStyle(unint64_t a1)
{
  if (AXInitSerializationStyle_onceToken != -1)
  {
    AXUnserializeWrapper_cold_1();
  }

  atomic_store(a1, &AXCurrentSerializationStyle);
}

void _AXUIScreenConvertToCAScreen(int a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (_AXUIScreenConvertToCAScreen_onceToken == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    _AXUIScreenConvertToCAScreen_cold_1();
    if (!a1)
    {
      return;
    }
  }

  v2 = [_AXUIScreenConvertToCAScreen_mainScreen valueForKey:@"_integerDisplayID"];
  v3 = [v2 unsignedIntValue];

  if (v3 != a1)
  {
    [NSClassFromString(@"UIScreen") valueForKey:@"screens"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v18 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 valueForKey:{@"_integerDisplayID", v15}];
          v11 = [v10 unsignedIntValue];

          if (v11 == a1)
          {
            v12 = [v9 valueForKey:@"scale"];
            [v12 doubleValue];

            v13 = [v9 valueForKey:@"_rotation"];
            [v13 doubleValue];

            v14 = [_AXUIScreenConvertToCAScreen_mainScreen valueForKey:@"_unjailedReferenceBoundsInPixels"];
            [v14 rectValue];

            goto LABEL_15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }
}

uint64_t __getSelfAuditToken_block_invoke()
{
  getSelfAuditToken_auditToken = 0u;
  unk_1ED65513C = 0u;
  LODWORD(getSelfAuditToken_auditToken) = geteuid();
  result = getegid();
  DWORD1(getSelfAuditToken_auditToken) = result;
  return result;
}

void *_AXHandleRemoteElementCallthroughForArray(void *a1, const __AXUIElement *a2, unint64_t a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a1;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v28 = *v30;
    v14 = a3 >> 1 == 47626 || a3 == 95254 || a3 - 92501 < 2;
    v27 = v14;
    while (1)
    {
      v15 = 0;
      v25 = v10;
      do
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * v15);
        v17 = v27;
        if (!v16)
        {
          v17 = 0;
        }

        if (v17)
        {
          v18 = CFGetTypeID(*(*(&v29 + 1) + 8 * v15));
          if (v18 == AXUIElementGetTypeID() && _AXIsRemoteElement(v16, a2) && v10 == [obj count] - 1)
          {
            v19 = [obj count];
            v20 = [a4 unsignedIntegerValue];
            [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20 - v19 + 1];
          }
        }

        v21 = _AXHandleRemoteElementCallthrough(v16);
        if (v21)
        {
          v22 = v21;
          if (!v11)
          {
            v11 = [obj mutableCopy];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v11 replaceObjectsInRange:v9 withObjectsFromArray:{1, v22}];
            v9 = v9 + [v22 count] - 1;
          }

          else
          {
            [v11 replaceObjectAtIndex:v9 withObject:v22];
          }

          CFRelease(v22);
LABEL_35:
          ++v9;
          goto LABEL_36;
        }

        if (!v16)
        {
          goto LABEL_35;
        }

        v23 = CFGetTypeID(v16);
        if (v23 != AXUIElementGetTypeID() || !_AXIsRemoteElement(v16, a2))
        {
          goto LABEL_35;
        }

        if (!v11)
        {
          v11 = [obj mutableCopy];
        }

        [v11 removeObject:v16];
LABEL_36:
        ++v10;
        ++v15;
      }

      while (v8 != v15);
      v10 = v25 + v8;
      v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v8)
      {
        goto LABEL_40;
      }
    }
  }

  v11 = 0;
LABEL_40:

  return v11;
}

BOOL _AXIsRemoteElement(const __AXUIElement *a1, const __AXUIElement *a2)
{
  _AXUIElementIDForElement(a1);
  if (v4 == kAXApplicationUID)
  {
    return 0;
  }

  pid = 0;
  AXUIElementGetPid(a2, &pid);
  v6 = 0;
  AXUIElementGetPid(a1, &v6);
  return v6 != pid;
}

void __portInvalidationCallback_block_invoke(uint64_t a1)
{
  if (gPortCache)
  {
    Value = CFDictionaryGetValue(gPortCache, *(a1 + 32));
    if (Value)
    {
      v3 = Value;
      CFRetain(Value);
      CFDictionaryRemoveValue(gPortCache, *(a1 + 32));
      Port = CFMachPortGetPort(v3);
      if (Port)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], Port);
      }

      CFRelease(v3);
    }

    else
    {
      v5 = gPortCache;
      v6 = *(a1 + 32);

      CFDictionaryRemoveValue(v5, v6);
    }
  }
}

void __AXInitSerializationStyle_block_invoke()
{
  atomic_store(1uLL, &AXCurrentSerializationStyle);
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Accessibility"];
  v2 = [v0 objectForKey:@"SerializationStyle"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = [v2 integerValue];
    if (v1 <= 1)
    {
      atomic_store(v1, &AXCurrentSerializationStyle);
    }
  }
}

uint64_t AXDoesRequestingClientDeserveAutomation()
{
  if (_CurrentRequestClient > 0x13)
  {
    return 0;
  }

  result = 1;
  if (((1 << _CurrentRequestClient) & 0x99C38) != 0)
  {
    return 0;
  }

  if (((1 << _CurrentRequestClient) & 0x106) == 0)
  {
    if (_CurrentRequestClient != 7)
    {
      return 0;
    }

    return _AXSAutomationEnabled();
  }

  return result;
}

__n128 _AXRuntimeGetCallbacksForUnitTesting@<Q0>(uint64_t a1@<X8>)
{
  v1 = *&off_1ED655358;
  *(a1 + 32) = xmmword_1ED655348;
  *(a1 + 48) = v1;
  *(a1 + 64) = qword_1ED655368;
  result = xmmword_1ED655338;
  *a1 = gCallbacks;
  *(a1 + 16) = result;
  return result;
}

uint64_t AXDisableAccessibilityOnTermination()
{
  if (!AXDisableAccessibilityOnTermination_terminationObserver)
  {
    v2 = AXObserverCreate(sSystemWideServerPID, _terminationEmptyHandler, &AXDisableAccessibilityOnTermination_terminationObserver);
    if (v2)
    {
      return v2;
    }

    RunLoopSource = AXObserverGetRunLoopSource(AXDisableAccessibilityOnTermination_terminationObserver);
    if (!RunLoopSource)
    {
      CFRelease(AXDisableAccessibilityOnTermination_terminationObserver);
      AXDisableAccessibilityOnTermination_terminationObserver = 0;
      return 4294942096;
    }

    v5 = RunLoopSource;
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, v5, *MEMORY[0x1E695E8E0]);
  }

  SystemWide = AXUIElementCreateSystemWide();
  v1 = AXRuntimeLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BF78E000, v1, OS_LOG_TYPE_INFO, "Requesting disable AX on termination", v7, 2u);
  }

  v2 = AXObserverAddNotification(AXDisableAccessibilityOnTermination_terminationObserver, SystemWide, 0x270F, 0);
  CFRelease(SystemWide);
  return v2;
}

uint64_t _AXUIElementRegisterSystemWideServerWithRunLoop(uint64_t a1, uint64_t a2, __CFRunLoop *a3, int a4)
{
  v7 = 1;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v7 = 0;
    v8 = &sSystemWideAppServerPID;
  }

  else
  {
    v8 = &sSystemWideServerPID;
  }

  *v8 = getpid();
LABEL_6:

  return _AXUIElementRegisterServerWithRunLoopInternal(a1, a2, a3, v7);
}

uint64_t _AXUIElementRegisterServerWithRunLoopInternal(uint64_t a1, uint64_t a2, __CFRunLoop *a3, int a4)
{
  if ((gRegistered & 1) == 0)
  {
    if (!a1)
    {
      return 4294942095;
    }

    Current = a3;
    if (!a3)
    {
      Current = CFRunLoopGetCurrent();
      if (!Current)
      {
        return 4294942096;
      }
    }

    special_port = 0;
    v9 = MEMORY[0x1E69E9A60];
    if (task_get_special_port(*MEMORY[0x1E69E9A60], 4, &special_port))
    {
      return 4294942096;
    }

    v25 = 0;
    if ((AXRuntimeCheck_SupportsMacAXV2() & 1) != 0 || !_CFMZEnabled())
    {
      if (a4)
      {
        v10 = "com.apple.iphone.axserver-systemwide";
      }

      else
      {
        v10 = "com.apple.iphone.axserver";
      }

      MachPort = _AXUIElementCreateMachPort(&v25, special_port, v10);
      if (MachPort)
      {
        v12 = MachPort;
        v13 = AXRuntimeLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          _AXUIElementRegisterServerWithRunLoopInternal_cold_1(v12, v13);
        }

        v4 = 4294942096;
        goto LABEL_35;
      }
    }

    else
    {
      v25 = 0;
    }

    v14 = _AXUIElementCreateMachPort(&gAXServerPortForRemoteBridge, special_port, 0);
    if (v14)
    {
      v15 = v14;
      v16 = AXRuntimeLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        _AXUIElementRegisterServerWithRunLoopInternal_cold_2(v15, v16);
      }

      gAXServerPortForRemoteBridge = 0;
    }

    gRunLoopSource = MSHCreateMIGServerSource(0, 0, _AXXMIGAccessibilityDefs_subsystem, 0, v25, 0);
    if (!gRunLoopSource)
    {
      return 4294942096;
    }

    if (gAXServerPortForRemoteBridge)
    {
      gRunLoopSourceForRemoteBridge = MSHCreateMIGServerSource(0, 0, _AXXMIGAccessibilityDefs_subsystem, 0, gAXServerPortForRemoteBridge, 0);
      if (!gRunLoopSourceForRemoteBridge)
      {
        v17 = AXRuntimeLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          _AXUIElementRegisterServerWithRunLoopInternal_cold_3(v17);
        }
      }
    }

    mach_port_deallocate(*v9, special_port);
    v18 = *MEMORY[0x1E695E8D0];
    CFRunLoopAddSource(Current, gRunLoopSource, *MEMORY[0x1E695E8D0]);
    if (gRunLoopSourceForRemoteBridge)
    {
      CFRunLoopAddSource(Current, gRunLoopSourceForRemoteBridge, v18);
    }

    v19 = MSHCreateMachServerSource(0, 0, axObserverDeadNameHandler, 0, 0, 0);
    sDeadNameSource = v19;
    if (!v19)
    {
      return 4294942096;
    }

    sDeadNamePort = MSHGetMachPortFromSource(v19);
    CFRunLoopAddSource(Current, sDeadNameSource, v18);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 1, apiNotifyCallback, @"com.apple.accessibility.api", 0, CFNotificationSuspensionBehaviorCoalesce);
    gUserData = a2;
    *&gCallbacks = *a1;
    v22 = *(a1 + 32);
    v21 = *(a1 + 48);
    v23 = *(a1 + 16);
    qword_1ED655368 = *(a1 + 64);
    *&xmmword_1ED655348 = v22;
    off_1ED655358 = v21;
    *&xmmword_1ED655338 = v23;
    gRegistered = 1;
    gAXAccessibilityTurnedOnOnce = 1;
    gIsAPIOn = AXAPIEnabled();
    v13 = AXRuntimeLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      _AXUIElementRegisterServerWithRunLoopInternal_cold_4(v13);
    }

    v4 = 0;
LABEL_35:

    return v4;
  }

  return 4294942092;
}

void AXUncaughtException(void *a1)
{
  v1 = a1;
  NSLog(@"AX Crash: %@", v1);
  v2 = [v1 callStackSymbols];

  NSLog(@"Backtrace: %@", v2);
}

uint64_t _AXUIElementRegisterSystemWideServerBroadcastRelayerCallback(void *a1, uint64_t a2)
{
  if (gBroadcasterRegistered)
  {
    return 4294942092;
  }

  result = 0;
  gSystemWideServerBroadcastRelayerCallback = a1;
  gSystemWideServerBroadcastRelayerCallbackInfo = a2;
  gBroadcasterRegistered = 1;
  return result;
}

uint64_t _AXUIElementRegisterAppAXReadyCallback(const void *a1)
{
  v1 = _Block_copy(a1);
  v2 = gAppAXReadyCallback;
  gAppAXReadyCallback = v1;

  return 0;
}

id _AXUIElementGetAppAXReadyCallback()
{
  v0 = _Block_copy(gAppAXReadyCallback);

  return v0;
}

uint64_t _AXUIElementUnregisterServer()
{
  if (gRegistered != 1)
  {
    return 4294942092;
  }

  if (gRunLoopSource)
  {
    CFRunLoopSourceInvalidate(gRunLoopSource);
    CFRelease(gRunLoopSource);
    gRunLoopSource = 0;
  }

  if (gRunLoopSourceForRemoteBridge)
  {
    CFRunLoopSourceInvalidate(gRunLoopSourceForRemoteBridge);
    CFRelease(gRunLoopSourceForRemoteBridge);
    gRunLoopSourceForRemoteBridge = 0;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 1, @"com.apple.accessibility.api", 0);
  gUserData = 0;
  *&gCallbacks = 0u;
  *&xmmword_1ED655338 = 0u;
  *&xmmword_1ED655348 = 0u;
  off_1ED655358 = 0u;
  qword_1ED655368 = 0;
  gRegistered = 0;
  gBroadcasterRegistered = 0;
  gAXServerPortForRemoteBridge = 0;
  if (sDeadNameSource)
  {
    CFRunLoopSourceInvalidate(sDeadNameSource);
    CFRelease(sDeadNameSource);
    sDeadNameSource = 0;
    sDeadNamePort = 0;
  }

  result = 0;
  gSystemWideServerBroadcastRelayerCallback = 0;
  gSystemWideServerBroadcastRelayerCallbackInfo = 0;
  return result;
}

uint64_t _AXUIElementIDForElement(uint64_t result)
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t _AXUIElementCreateWithID(uint64_t a1, uint64_t a2)
{
  v4 = getpid();

  return _AXUIElementCreateInternal(v4, a1, a2);
}

const __CFData *_AXUIElementCreateWithData(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    *buffer = 0;
    *v2 = 0;
    v3 = 0;
    v5.location = 0;
    v5.length = 4;
    CFDataGetBytes(result, v5, buffer);
    v6.location = 4;
    v6.length = 8;
    CFDataGetBytes(v1, v6, v2);
    v7.location = 12;
    v7.length = 8;
    CFDataGetBytes(v1, v7, &v3);
    return _AXUIElementCreateInternal(*buffer, *v2, v3);
  }

  return result;
}

__CFData *_AXUIElementCreateData(const UInt8 *a1)
{
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  CFDataAppendBytes(Mutable, a1 + 16, 4);
  CFDataAppendBytes(Mutable, a1 + 20, 8);
  CFDataAppendBytes(Mutable, a1 + 28, 8);
  return Mutable;
}

void __AXPushNotificationToSystemForBroadcast_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("broadcast-ax-notify", v2);
  v1 = AXPushNotificationToSystemForBroadcast_broadcast_queue;
  AXPushNotificationToSystemForBroadcast_broadcast_queue = v0;
}

uint64_t _AXXMIGCopyAttributeValue(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, void *a7, _DWORD *a8, void **a9, _DWORD *a10, int *a11, _OWORD *a12)
{
  v18 = AXLogUIA();
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF78E000, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Automation", "CopyAttribute", buf, 2u);
  }

  *buf = 0;
  v39 = buf;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  _CurrentRequestClient = a6;
  v19 = a12[1];
  *v32 = *a12;
  v33 = v19;
  if (!_isAXAllowed(v32))
  {
    v20 = v35;
    v21 = -25211;
LABEL_22:
    *(v20 + 6) = v21;
    goto LABEL_23;
  }

  if (gAXServerPortForRemoteBridge == a1)
  {
    if (a5 <= 2999)
    {
      if (a5 != 2021 && a5 != 2076)
      {
LABEL_21:
        v20 = v35;
        v21 = -25217;
        goto LABEL_22;
      }
    }

    else if (((a5 - 3000) > 0x10 || ((1 << (a5 + 72)) & 0x10005) == 0) && a5 != 5002)
    {
      goto LABEL_21;
    }
  }

  if (!gCallbacks)
  {
    v20 = v35;
    v21 = -25208;
    goto LABEL_22;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = ___AXXMIGCopyAttributeValue_block_invoke;
  v28[3] = &unk_1E80D37C0;
  v30 = a3;
  v31 = a4;
  v29 = a5;
  v28[4] = &v34;
  v28[5] = buf;
  _handleNonMainThreadCallback(v28);
  v20 = v35;
  v21 = *(v35 + 6);
  if (!v21 || (v22 = *(v39 + 3)) != 0 && (CFRelease(v22), *(v39 + 3) = 0, v20 = v35, (v21 = *(v35 + 6)) == 0))
  {
    v23 = *(v39 + 3);
    if (v23)
    {
      v24 = AXSerializeWrapper(v23, 0, a7, a8, a9, a10);
      *(v35 + 6) = v24;
      CFRelease(*(v39 + 3));
      v21 = *(v35 + 6);
      goto LABEL_23;
    }

    v21 = -25212;
    goto LABEL_22;
  }

LABEL_23:
  *a11 = v21;
  _CurrentRequestClient = 0;
  v25 = AXLogUIA();
  if (os_signpost_enabled(v25))
  {
    *v32 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF78E000, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Automation", "CopyAttribute", v32, 2u);
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(buf, 8);
  return 0;
}

void sub_1BF79A3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t _isAXAllowed(__int128 *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!gIsAPIOn)
  {
    return 0;
  }

  v1 = a1[1];
  v6 = *a1;
  v7 = v1;
  v2 = a1[1];
  v4 = *a1;
  v5 = v2;
  if (__hasEntitlementForAuditToken(@"com.apple.accessibility.api", &v4))
  {
    return 1;
  }

  v4 = v6;
  v5 = v7;
  return __hasEntitlementForAuditToken(@"com.apple.accessibility.SpringBoard", &v4);
}

void _handleNonMainThreadCallback(void *a1)
{
  v1 = a1;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v1[2](v1);
  }

  else
  {
    if (__AXShouldDispatchNonMainThreadCallbacksOnMainThreadStack <= 0 && !_AXSInUnitTestMode())
    {
      v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"AXRuntime Thread Error" reason:@"We're calling into AX runtime off the main thread!" userInfo:0];
      [v2 raise];
    }

    v3 = dispatch_semaphore_create(0);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___handleNonMainThreadCallback_block_invoke;
    v5[3] = &unk_1E80D3888;
    v6 = v3;
    v7 = v1;
    v4 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t _AXXMIGCopyMultipleAttributeValues(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7, unsigned int a8, int a9, int a10, void *a11, _DWORD *a12, void **a13, _DWORD *a14, _DWORD *a15, _OWORD *a16)
{
  v21 = AXLogUIA();
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF78E000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Automation", "CopyMultipleAttribute", buf, 2u);
  }

  *buf = 0;
  v44 = buf;
  v45 = 0x2020000000;
  v46 = 0;
  _CurrentRequestClient = a10;
  *a12 = 0;
  *a13 = 0;
  *a14 = 0;
  v22 = a16[1];
  *v41 = *a16;
  v42 = v22;
  if (!_isAXAllowed(v41))
  {
    v23 = v44;
    v24 = -25211;
    goto LABEL_11;
  }

  if (gAXServerPortForRemoteBridge == a1)
  {
    v23 = v44;
    v24 = -25217;
    goto LABEL_11;
  }

  if (!off_1ED655358)
  {
    v23 = v44;
    v24 = -25208;
LABEL_11:
    *(v23 + 6) = v24;
    if (!a7)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  cf = 0;
  *v41 = 0;
  *&v41[8] = v41;
  v42 = 0x2020000000uLL;
  v25 = AXUnserializeWrapper(a5, a6, a7, a8, &cf);
  *(v44 + 6) = v25;
  if (v25)
  {
    v26 = *&v41[8];
  }

  else
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = ___AXXMIGCopyMultipleAttributeValues_block_invoke;
    v36[3] = &unk_1E80D37E8;
    v38 = a3;
    v39 = a4;
    v37 = a9;
    v36[4] = buf;
    v36[5] = v41;
    v36[6] = cf;
    _handleNonMainThreadCallback(v36);
    CFRelease(cf);
    v29 = v44;
    v26 = *&v41[8];
    if (!*(v44 + 6))
    {
LABEL_20:
      v31 = *(v26 + 24);
      if (v31)
      {
        v32 = AXSerializeWrapper(v31, 0, a11, a12, a13, a14);
        *(v44 + 6) = v32;
        v26 = *&v41[8];
      }

      else
      {
        *(v29 + 6) = -25200;
      }

      goto LABEL_23;
    }
  }

  v30 = *(v26 + 24);
  if (v30)
  {
    CFRelease(v30);
    v26 = *&v41[8];
    *(*&v41[8] + 24) = 0;
    v29 = v44;
    if (!*(v44 + 6))
    {
      goto LABEL_20;
    }
  }

LABEL_23:
  v33 = *(v26 + 24);
  if (v33)
  {
    CFRelease(v33);
  }

  _Block_object_dispose(v41, 8);
  if (a7)
  {
LABEL_12:
    if (a8)
    {
      munmap(a7, a8);
    }
  }

LABEL_14:
  *a15 = *(v44 + 6);
  _CurrentRequestClient = 0;
  v27 = AXLogUIA();
  if (os_signpost_enabled(v27))
  {
    *v41 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF78E000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Automation", "CopyMultipleAttribute", v41, 2u);
  }

  _Block_object_dispose(buf, 8);
  return 0;
}

void sub_1BF79A944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t _AXXMIGCopyParameterizedAttributeValue(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7, void *a8, unsigned int a9, int a10, void *a11, _DWORD *a12, void **a13, _DWORD *a14, int *a15, _OWORD *a16)
{
  v21 = AXLogUIA();
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF78E000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Automation", "ParamAttribute", buf, 2u);
  }

  *buf = 0;
  v41 = buf;
  v42 = 0x2020000000;
  v43 = 0;
  _CurrentRequestClient = a10;
  *a12 = 0;
  *a13 = 0;
  *a14 = 0;
  if ((a5 - 91503) > 5 || a5 == 91505 || !gIsAPIOn)
  {
    v22 = a16[1];
    *v38 = *a16;
    v39 = v22;
    if (!_isAXAllowed(v38))
    {
      v23 = v41;
      v24 = -25211;
      goto LABEL_18;
    }
  }

  if (gAXServerPortForRemoteBridge == a1)
  {
    v23 = v41;
    v24 = -25217;
LABEL_18:
    *(v23 + 6) = v24;
    goto LABEL_19;
  }

  if (!*(&xmmword_1ED655348 + 1))
  {
    v23 = v41;
    v24 = -25208;
    goto LABEL_18;
  }

  cf = 0;
  v24 = AXUnserializeWrapper(a6, a7, a8, a9, &cf);
  *(v41 + 6) = v24;
  if (!v24)
  {
    *v38 = 0;
    *&v38[8] = v38;
    v39 = 0x2020000000uLL;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = ___AXXMIGCopyParameterizedAttributeValue_block_invoke;
    v33[3] = &unk_1E80D37E8;
    v35 = a3;
    v36 = a4;
    v34 = a5;
    v33[5] = v38;
    v33[6] = cf;
    v33[4] = buf;
    _handleNonMainThreadCallback(v33);
    v25 = v41;
    if (!*(v41 + 6) || (v26 = *(*&v38[8] + 24)) != 0 && (CFRelease(v26), *(*&v38[8] + 24) = 0, v25 = v41, !*(v41 + 6)))
    {
      v27 = *(*&v38[8] + 24);
      if (v27)
      {
        v28 = AXSerializeWrapper(v27, 0, a11, a12, a13, a14);
        *(v41 + 6) = v28;
        CFRelease(*(*&v38[8] + 24));
      }

      else
      {
        *(v25 + 6) = -25212;
      }
    }

    CFRelease(cf);
    _Block_object_dispose(v38, 8);
    v24 = *(v41 + 6);
  }

LABEL_19:
  *a15 = v24;
  if (a8 && a9)
  {
    munmap(a8, a9);
  }

  _CurrentRequestClient = 0;
  v29 = AXLogUIA();
  if (os_signpost_enabled(v29))
  {
    *v38 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF78E000, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Automation", "ParamAttribute", v38, 2u);
  }

  _Block_object_dispose(buf, 8);
  return 0;
}

uint64_t _AXXMIGSetAttributeValue(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7, void *a8, unsigned int a9, int a10, int *a11, __int128 *a12)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  _CurrentRequestClient = a10;
  v19 = a12[1];
  v28 = *a12;
  v29 = v19;
  if (!_isAXAllowed(&v28))
  {
    v20 = v31;
    v21 = -25211;
    goto LABEL_10;
  }

  if (gAXServerPortForRemoteBridge == a1)
  {
    v20 = v31;
    v21 = -25217;
LABEL_10:
    *(v20 + 6) = v21;
    goto LABEL_11;
  }

  if (!*(&gCallbacks + 1))
  {
    v20 = v31;
    v21 = -25208;
    goto LABEL_10;
  }

  *&v28 = 0;
  *(&v28 + 1) = &v28;
  v29 = 0x2020000000uLL;
  v22 = AXUnserializeWrapper(a6, a7, a8, a9, &v29 + 8);
  *(v31 + 6) = v22;
  if (!v22)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = ___AXXMIGSetAttributeValue_block_invoke;
    v24[3] = &unk_1E80D37C0;
    v26 = a3;
    v27 = a4;
    v25 = a5;
    v24[4] = &v30;
    v24[5] = &v28;
    _handleNonMainThreadCallback(v24);
    CFRelease(*(*(&v28 + 1) + 24));
  }

  _Block_object_dispose(&v28, 8);
  v21 = *(v31 + 6);
LABEL_11:
  *a11 = v21;
  if (a8 && a9)
  {
    munmap(a8, a9);
  }

  _CurrentRequestClient = 0;
  _Block_object_dispose(&v30, 8);
  return 0;
}

void sub_1BF79AF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t _AXXMIGPerformAction(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int *a7, __int128 *a8)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  _CurrentRequestClient = a6;
  v13 = a8[1];
  v21[0] = *a8;
  v21[1] = v13;
  if (!_isAXAllowed(v21))
  {
    v14 = v23;
    v15 = -25211;
    goto LABEL_9;
  }

  if (a5 != 2024 && gAXServerPortForRemoteBridge == a1)
  {
    v14 = v23;
    v15 = -25217;
LABEL_9:
    *(v14 + 6) = v15;
    goto LABEL_10;
  }

  if (!xmmword_1ED655338)
  {
    v14 = v23;
    v15 = -25208;
    goto LABEL_9;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___AXXMIGPerformAction_block_invoke;
  v17[3] = &unk_1E80D3810;
  v17[4] = &v22;
  v19 = a3;
  v20 = a4;
  v18 = a5;
  _handleNonMainThreadCallback(v17);
  v15 = *(v23 + 6);
LABEL_10:
  *a7 = v15;
  _CurrentRequestClient = 0;
  _Block_object_dispose(&v22, 8);
  return 0;
}

uint64_t _AXXMIGPerformActionWithValue(int a1, mach_port_name_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8, void *a9, unsigned int a10, int a11, int *a12, __int128 *a13)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  _CurrentRequestClient = a11;
  v20 = a13[1];
  v33 = *a13;
  v34 = v20;
  if (!_isAXAllowed(&v33))
  {
    v21 = v36;
    v22 = -25211;
    goto LABEL_15;
  }

  if (a6 != 2024 && gAXServerPortForRemoteBridge == a1)
  {
    v21 = v36;
    v22 = -25217;
LABEL_15:
    *(v21 + 6) = v22;
    goto LABEL_16;
  }

  if (!xmmword_1ED655338)
  {
    v21 = v36;
    v22 = -25208;
    goto LABEL_15;
  }

  *&v33 = 0;
  *(&v33 + 1) = &v33;
  v34 = 0x2020000000uLL;
  v23 = AXUnserializeWrapper(a7, a8, a9, a10, &v34 + 8);
  *(v36 + 6) = v23;
  v24 = *(*(&v33 + 1) + 24);
  if (v24 && CFEqual(*MEMORY[0x1E695E738], v24))
  {
    CFRelease(*(*(&v33 + 1) + 24));
    *(*(&v33 + 1) + 24) = 0;
  }

  if (!*(v36 + 6))
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = ___AXXMIGPerformActionWithValue_block_invoke;
    v28[3] = &unk_1E80D3838;
    v31 = a4;
    v32 = a5;
    v28[4] = &v35;
    v28[5] = &v33;
    v29 = a6;
    v30 = a2;
    _handleNonMainThreadCallback(v28);
    v25 = *(*(&v33 + 1) + 24);
    if (v25)
    {
      CFRelease(v25);
    }
  }

  _Block_object_dispose(&v33, 8);
  v22 = *(v36 + 6);
LABEL_16:
  *a12 = v22;
  if (a9 && a10)
  {
    munmap(a9, a10);
  }

  if (a2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], a2);
  }

  _CurrentRequestClient = 0;
  v26 = *(v36 + 6);
  _Block_object_dispose(&v35, 8);
  return v26;
}

void sub_1BF79B3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t _AXXMIGCopyElementAtPosition(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, int a8, int a9, _DWORD *a10, _OWORD *a11, _BYTE *a12, _DWORD *a13, int *a14, __int128 *a15)
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  _CurrentRequestClient = a9;
  *a12 = 0;
  *a13 = 0;
  v22 = a15[1];
  v38 = *a15;
  v39 = v22;
  if (!_isAXAllowed(&v38))
  {
    v24 = AXLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      _AXXMIGCopyElementAtPosition_cold_1(v24);
    }

    v25 = v41;
    v26 = -25211;
    goto LABEL_10;
  }

  if (!xmmword_1ED655348)
  {
    v25 = v41;
    v26 = -25208;
LABEL_10:
    *(v25 + 6) = v26;
    goto LABEL_13;
  }

  *&v38 = 0;
  *(&v38 + 1) = &v38;
  v39 = 0x2020000000uLL;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = ___AXXMIGCopyElementAtPosition_block_invoke;
  v31[3] = &unk_1E80D3860;
  v36 = a5;
  v37 = a6;
  v32 = a1;
  v33 = a2;
  v35 = a7;
  v34 = a8;
  v31[4] = &v40;
  v31[5] = &v38;
  _handleNonMainThreadCallback(v31);
  if (!*(v41 + 6))
  {
    v23 = *(*(&v38 + 1) + 24);
    if (v23)
    {
      v30 = 0;
      v29 = 0;
      v28 = 0uLL;
      *a10 = _AXUIElementValidate(v23, &v30, &v28, &v29);
      *a11 = v28;
      CFRelease(*(*(&v38 + 1) + 24));
    }

    else
    {
      *(v41 + 6) = -25212;
    }
  }

  _Block_object_dispose(&v38, 8);
  v26 = *(v41 + 6);
LABEL_13:
  *a14 = v26;
  _CurrentRequestClient = 0;
  _Block_object_dispose(&v40, 8);
  return 0;
}

void sub_1BF79B65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t _AXXMIGAddNotification(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, mach_port_name_t a6, int a7, uint64_t a8, int *a9, _OWORD *a10)
{
  v14 = a10[1];
  *name = *a10;
  v23 = v14;
  isAXAllowed = _isAXAllowed(name);
  v16 = MEMORY[0x1E69E9A60];
  if (!isAXAllowed)
  {
    v17 = -25211;
    goto LABEL_10;
  }

  if (gAXServerPortForRemoteBridge == a1)
  {
    v17 = -25217;
LABEL_10:
    *a9 = v17;
LABEL_11:
    mach_port_mod_refs(*v16, a6, 0, -1);
    return 0;
  }

  if (a7)
  {
    name[0] = 0;
    v18 = mach_port_request_notification(*MEMORY[0x1E69E9A60], a6, 72, 0, sDeadNamePort, 0x15u, name);
    if (name[0])
    {
      mach_port_deallocate(*v16, name[0]);
    }

    if (v18)
    {
      v17 = -25200;
      goto LABEL_10;
    }
  }

  v20 = _AXPidFromAuditToken(a10);
  v21 = _AXObserverCookieCreate(a6, a8, v20, 0);
  _AXAddNotificationObserver();
  if (v21)
  {
    CFRelease(v21);
  }

  *a9 = 0;
  if (!a7)
  {
    goto LABEL_11;
  }

  return 0;
}

uint64_t _AXObserverCookieCreate(mach_port_name_t a1, uint64_t a2, int a3, int a4)
{
  if (!__kAXObserverCookieTypeID)
  {
    __kAXObserverCookieTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a1)
    {
      v9 = MEMORY[0x1E69E9A60];
      v10 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], a1, 0, 1);
      if (!v10)
      {
        *(Instance + 16) = a1;
        if (!a4)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (v10 == 17)
      {
        mach_port_mod_refs(*v9, a1, 4u, 1);
      }
    }

    if (!a4)
    {
LABEL_10:
      *(Instance + 24) = a2;
      *(Instance + 32) = a3;
      return Instance;
    }

LABEL_9:
    *(Instance + 20) = a1;
    goto LABEL_10;
  }

  return Instance;
}

uint64_t _AXXMIGRemoveNotification(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, mach_port_name_t a6, int *a7, __int128 *a8)
{
  v12 = a8[1];
  v17[0] = *a8;
  v17[1] = v12;
  if (_isAXAllowed(v17))
  {
    if (gAXServerPortForRemoteBridge == a1)
    {
      v13 = -25217;
    }

    else
    {
      v14 = _AXPidFromAuditToken(a8);
      v15 = _AXObserverCookieCreate(a6, 0, v14, 0);
      _AXRemoveNotificationObserver();
      if (v15)
      {
        CFRelease(v15);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = -25211;
  }

  *a7 = v13;
  mach_port_mod_refs(*MEMORY[0x1E69E9A60], a6, 0, -1);
  return 0;
}

uint64_t _AXTraitsRemoveTrait(uint64_t a1, uint64_t a2)
{
  if ((a2 & ~a1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  return v2 ^ a1;
}

__CFString *_AXTraitsAsStringInternal(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = Mutable;
  if (a1)
  {
    CFArrayAppendValue(Mutable, @"button");
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 0x100000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_66;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  CFArrayAppendValue(v4, @"link");
  if ((a1 & 0x100000000) == 0)
  {
LABEL_4:
    if ((a1 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_67;
  }

LABEL_66:
  CFArrayAppendValue(v4, @"visited");
  if ((a1 & 4) == 0)
  {
LABEL_5:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_68;
  }

LABEL_67:
  CFArrayAppendValue(v4, @"image");
  if ((a1 & 8) == 0)
  {
LABEL_6:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_69;
  }

LABEL_68:
  CFArrayAppendValue(v4, @"selected");
  if ((a1 & 0x10) == 0)
  {
LABEL_7:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_70;
  }

LABEL_69:
  CFArrayAppendValue(v4, @"plays-sound");
  if ((a1 & 0x20) == 0)
  {
LABEL_8:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_71;
  }

LABEL_70:
  CFArrayAppendValue(v4, @"kb-key");
  if ((a1 & 0x40) == 0)
  {
LABEL_9:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_72;
  }

LABEL_71:
  CFArrayAppendValue(v4, @"static-text");
  if ((a1 & 0x80) == 0)
  {
LABEL_10:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_73;
  }

LABEL_72:
  CFArrayAppendValue(v4, @"summary-elem");
  if ((a1 & 0x100) == 0)
  {
LABEL_11:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_74;
  }

LABEL_73:
  CFArrayAppendValue(v4, @"not-enabled");
  if ((a1 & 0x200) == 0)
  {
LABEL_12:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_75;
  }

LABEL_74:
  CFArrayAppendValue(v4, @"updates-frequently");
  if ((a1 & 0x400) == 0)
  {
LABEL_13:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_76;
  }

LABEL_75:
  CFArrayAppendValue(v4, @"search-field");
  if ((a1 & 0x2000) == 0)
  {
LABEL_14:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_77;
  }

LABEL_76:
  CFArrayAppendValue(v4, @"direct-touch");
  if ((a1 & 0x4000) == 0)
  {
LABEL_15:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_78;
  }

LABEL_77:
  CFArrayAppendValue(v4, @"cause-page-turn");
  if ((a1 & 0x10000) == 0)
  {
LABEL_16:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_79;
  }

LABEL_78:
  CFArrayAppendValue(v4, @"header");
  if ((a1 & 0x4000000) == 0)
  {
LABEL_17:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_80;
  }

LABEL_79:
  CFArrayAppendValue(v4, @"footer");
  if ((a1 & 0x20000) == 0)
  {
LABEL_18:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_81;
  }

LABEL_80:
  CFArrayAppendValue(v4, @"web-content");
  if ((a1 & 0x40000) == 0)
  {
LABEL_19:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_82;
  }

LABEL_81:
  CFArrayAppendValue(v4, @"text-entry");
  if ((a1 & 0x80000) == 0)
  {
LABEL_20:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_83;
  }

LABEL_82:
  CFArrayAppendValue(v4, @"picker-elem");
  if ((a1 & 0x200000) == 0)
  {
LABEL_21:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_84;
  }

LABEL_83:
  CFArrayAppendValue(v4, @"is-editing");
  if ((a1 & 0x400000) == 0)
  {
LABEL_22:
    if ((a1 & 0x4000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_85;
  }

LABEL_84:
  CFArrayAppendValue(v4, @"launch-icon");
  if ((a1 & 0x4000000000000) == 0)
  {
LABEL_23:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_86;
  }

LABEL_85:
  CFArrayAppendValue(v4, @"folder-icon");
  if ((a1 & 0x800000) == 0)
  {
LABEL_24:
    if ((a1 & 0x400000000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_87;
  }

LABEL_86:
  CFArrayAppendValue(v4, @"status-bar-elem");
  if ((a1 & 0x400000000000000) == 0)
  {
LABEL_25:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_88;
  }

LABEL_87:
  CFArrayAppendValue(v4, @"allow-layout-change-in-status-bar");
  if ((a1 & 0x1000000) == 0)
  {
LABEL_26:
    if ((a1 & 0x8000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_89;
  }

LABEL_88:
  CFArrayAppendValue(v4, @"text-field");
  if ((a1 & 0x8000000) == 0)
  {
LABEL_27:
    if ((a1 & 0x20000000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_90;
  }

LABEL_89:
  CFArrayAppendValue(v4, @"back-button");
  if ((a1 & 0x20000000000000) == 0)
  {
LABEL_28:
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_91;
  }

LABEL_90:
  CFArrayAppendValue(v4, @"toggle");
  if ((a1 & 0x80000000) == 0)
  {
LABEL_29:
    if ((a1 & 0x200000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_92;
  }

LABEL_91:
  CFArrayAppendValue(v4, @"select-dismisses-item");
  if ((a1 & 0x200000000) == 0)
  {
LABEL_30:
    if ((a1 & 0x400000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_93;
  }

LABEL_92:
  CFArrayAppendValue(v4, @"scrollable");
  if ((a1 & 0x400000000) == 0)
  {
LABEL_31:
    if ((a1 & 0x800000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_94;
  }

LABEL_93:
  CFArrayAppendValue(v4, @"spacer");
  if ((a1 & 0x800000000) == 0)
  {
LABEL_32:
    if ((a1 & 0x1000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_95;
  }

LABEL_94:
  CFArrayAppendValue(v4, @"table-index");
  if ((a1 & 0x1000000000) == 0)
  {
LABEL_33:
    if ((a1 & 0x2000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_96;
  }

LABEL_95:
  CFArrayAppendValue(v4, @"map");
  if ((a1 & 0x2000000000) == 0)
  {
LABEL_34:
    if ((a1 & 0x4000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_97;
  }

LABEL_96:
  CFArrayAppendValue(v4, @"text-ops-available");
  if ((a1 & 0x4000000000) == 0)
  {
LABEL_35:
    if ((a1 & 0x8000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_98;
  }

LABEL_97:
  CFArrayAppendValue(v4, @"draggable");
  if ((a1 & 0x8000000000) == 0)
  {
LABEL_36:
    if ((a1 & 0x2000000000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_99;
  }

LABEL_98:
  CFArrayAppendValue(v4, @"gesture-practice");
  if ((a1 & 0x2000000000000000) == 0)
  {
LABEL_37:
    if ((a1 & 0x10000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_100;
  }

LABEL_99:
  CFArrayAppendValue(v4, @"gesture-handler");
  if ((a1 & 0x10000000000) == 0)
  {
LABEL_38:
    if ((a1 & 0x20000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_101;
  }

LABEL_100:
  CFArrayAppendValue(v4, @"popup-button");
  if ((a1 & 0x20000000000) == 0)
  {
LABEL_39:
    if ((a1 & 0x200000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_102;
  }

LABEL_101:
  CFArrayAppendValue(v4, @"allows-native-sliding");
  if ((a1 & 0x200000000000) == 0)
  {
LABEL_40:
    if ((a1 & 0x400000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_103;
  }

LABEL_102:
  CFArrayAppendValue(v4, @"touch-container");
  if ((a1 & 0x400000000000) == 0)
  {
LABEL_41:
    if ((a1 & 0x800000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_104;
  }

LABEL_103:
  CFArrayAppendValue(v4, @"supports-zoom");
  if ((a1 & 0x800000000000) == 0)
  {
LABEL_42:
    if ((a1 & 0x1000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_105;
  }

LABEL_104:
  CFArrayAppendValue(v4, @"text-area");
  if ((a1 & 0x1000000000000) == 0)
  {
LABEL_43:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_106;
  }

LABEL_105:
  CFArrayAppendValue(v4, @"book-content");
  if ((a1 & 0x800) == 0)
  {
LABEL_44:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_107;
  }

LABEL_106:
  CFArrayAppendValue(v4, @"starts-media");
  if ((a1 & 0x1000) == 0)
  {
LABEL_45:
    if ((a1 & 0x10000000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_108;
  }

LABEL_107:
  CFArrayAppendValue(v4, @"adjustable");
  if ((a1 & 0x10000000000000) == 0)
  {
LABEL_46:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_109;
  }

LABEL_108:
  CFArrayAppendValue(v4, @"menu-item");
  if ((a1 & 0x20000000) == 0)
  {
LABEL_47:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_110;
  }

LABEL_109:
  CFArrayAppendValue(v4, @"aut-correct-candidate");
  if ((a1 & 0x40000000) == 0)
  {
LABEL_48:
    if ((a1 & 0x10000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_111;
  }

LABEL_110:
  CFArrayAppendValue(v4, @"delete-key");
  if ((a1 & 0x10000000) == 0)
  {
LABEL_49:
    if ((a1 & 0x40000000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_112;
  }

LABEL_111:
  CFArrayAppendValue(v4, @"tab-button");
  if ((a1 & 0x40000000000000) == 0)
  {
LABEL_50:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_113;
  }

LABEL_112:
  CFArrayAppendValue(v4, @"ignore-item-chooser");
  if ((a1 & 0x100000) == 0)
  {
LABEL_51:
    if ((a1 & 0x40000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_114;
  }

LABEL_113:
  CFArrayAppendValue(v4, @"radio-button");
  if ((a1 & 0x40000000000) == 0)
  {
LABEL_52:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_115;
  }

LABEL_114:
  CFArrayAppendValue(v4, @"math-equation");
  if ((a1 & 0x2000000) == 0)
  {
LABEL_53:
    if ((a1 & 0x80000000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_116;
  }

LABEL_115:
  CFArrayAppendValue(v4, @"inactive");
  if ((a1 & 0x80000000000000) == 0)
  {
LABEL_54:
    if ((a1 & 0x100000000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_117;
  }

LABEL_116:
  CFArrayAppendValue(v4, @"supports-tracking-detail");
  if ((a1 & 0x100000000000000) == 0)
  {
LABEL_55:
    if ((a1 & 0x8000000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_118;
  }

LABEL_117:
  CFArrayAppendValue(v4, @"alert");
  if ((a1 & 0x8000000000000) == 0)
  {
LABEL_56:
    if ((a1 & 0x800000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_118:
  CFArrayAppendValue(v4, @"read-only");
  if ((a1 & 0x800000000000000) != 0)
  {
LABEL_57:
    CFArrayAppendValue(v4, @"web-interactive-video");
  }

LABEL_58:
  v5 = CFStringCreateMutable(v2, 0);
  Count = CFArrayGetCount(v4);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v8);
      CFStringAppend(v5, ValueAtIndex);
      if (v7 != 1)
      {
        CFStringAppend(v5, @", ");
      }

      ++v8;
      --v7;
    }

    while (v7);
  }

  CFRelease(v4);
  return v5;
}

void _AXRemoveObserverForPort(unsigned int a1)
{
  os_unfair_lock_lock(&gAXObserverLock);
  if (gObserverCache)
  {
    CFDictionaryRemoveValue(gObserverCache, a1);
    if (!CFDictionaryGetCount(gObserverCache))
    {
      CFRelease(gObserverCache);
      gObserverCache = 0;
    }
  }

  os_unfair_lock_unlock(&gAXObserverLock);
}

void _AXSetObserverForPort(const void *a1, unsigned int a2)
{
  os_unfair_lock_lock(&gAXObserverLock);
  Mutable = gObserverCache;
  if (!gObserverCache)
  {
    Mutable = CFDictionaryCreateMutable(0, 1, 0, 0);
    gObserverCache = Mutable;
  }

  CFDictionarySetValue(Mutable, a2, a1);

  os_unfair_lock_unlock(&gAXObserverLock);
}

BOOL AXProcessCanContactSystemWideServer()
{
  if (AXProcessCanContactSystemWideServer_onceToken != -1)
  {
    AXProcessCanContactSystemWideServer_cold_1();
  }

  return (AXProcessCanContactSystemWideServer_CanContact & 1) == 0;
}

void __AXProcessCanContactSystemWideServer_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 hasPrefix:@"com.apple.WebKit.WebContent"];

  if (v2)
  {
    AXProcessCanContactSystemWideServer_CanContact = 1;
  }
}

uint64_t _AXUIElementCreateMachPort(mach_port_name_t *a1, uint64_t a2, uint64_t a3)
{
  name = 0;
  if (!a3 || (result = bootstrap_check_in2(), result))
  {
    v6 = MEMORY[0x1E69E9A60];
    result = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
    if (!result)
    {
      result = mach_port_insert_right(*v6, name, name, 0x14u);
      if (a3)
      {
        if (!result)
        {
          result = bootstrap_register2();
        }
      }
    }
  }

  *a1 = name;
  return result;
}

uint64_t axObserverDeadNameHandler(uint64_t result)
{
  if (result && *(result + 20) == 72)
  {
    v2 = *(result + 32);
    v3 = _AXObserverCookieCreate(v2, 0, 0, 1);
    _AXNotificationObserverClientDied(v3);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *MEMORY[0x1E69E9A60];

    return mach_port_mod_refs(v4, v2, 4u, -2);
  }

  return result;
}

uint64_t apiNotifyCallback()
{
  result = AXAPIEnabled();
  gIsAPIOn = result;
  return result;
}

uint64_t __hasEntitlementForAuditToken(const __CFString *a1, const UInt8 *a2)
{
  v4 = getpid();
  if (v4 != sSystemWideAppServerPID && v4 != sSystemWideServerPID)
  {
    return 1;
  }

  v6 = *MEMORY[0x1E695E480];
  if (!_ValidAuditTokens)
  {
    _ValidAuditTokens = CFSetCreateMutable(v6, 0, MEMORY[0x1E695E9F8]);
  }

  v7 = CFDataCreate(v6, a2, 32);
  if (!CFSetContainsValue(_ValidAuditTokens, v7))
  {
    v10 = *a2;
    if (v10 != geteuid() || (v11 = *(a2 + 1), v11 != getegid()))
    {
      v12 = *(a2 + 1);
      *cf.val = *a2;
      *&cf.val[4] = v12;
      v13 = SecTaskCreateWithAuditToken(0, &cf);
      if (!v13)
      {
        v8 = 0;
LABEL_29:
        CFRelease(v7);
        return v8;
      }

      v14 = v13;
      *cf.val = 0;
      v15 = SecTaskCopyValueForEntitlement(v13, a1, &cf);
      if (v15)
      {
        v16 = v15;
        v17 = CFGetTypeID(v15);
        if (v17 == CFBooleanGetTypeID() && CFBooleanGetValue(v16))
        {
          if (CFSetGetCount(_ValidAuditTokens) >= 11)
          {
            CFSetRemoveAllValues(_ValidAuditTokens);
          }

          CFSetAddValue(_ValidAuditTokens, v7);
          CFRelease(v16);
          v18 = *cf.val;
          v8 = 1;
          if (!*cf.val)
          {
            goto LABEL_28;
          }

          goto LABEL_26;
        }

        CFRelease(v16);
      }

      if (!*cf.val)
      {
        v8 = 0;
        goto LABEL_28;
      }

      CFLog();
      v8 = 0;
      v18 = *cf.val;
LABEL_26:
      CFRelease(v18);
LABEL_28:
      CFRelease(v14);
      goto LABEL_29;
    }
  }

  CFRelease(v7);
  return 1;
}

intptr_t ___handleNonMainThreadCallback_block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

uint64_t __AXObserverCookieDeallocate(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return mach_port_deallocate(*MEMORY[0x1E69E9A60], v1);
  }

  return result;
}

BOOL __AXObserverCookieEqual(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      v3 = *(a1 + 20);
    }

    v4 = *(a2 + 16);
    if (!v4)
    {
      v4 = *(a2 + 20);
    }

    return v3 == v4;
  }

  return v2;
}

CFTypeID AXValueGetTypeID(void)
{
  if ((__AXValueInitialized & 1) == 0)
  {
    __AXValueInitialize();
  }

  return __kAXValueTypeID;
}

uint64_t __AXValueInitialize()
{
  pthread_mutex_lock(&sInitLock);
  if ((__AXValueInitialized & 1) == 0)
  {
    __kAXValueTypeID = _CFRuntimeRegisterClass();
    __AXValueInitialized = 1;
  }

  return pthread_mutex_unlock(&sInitLock);
}

_DWORD *_AXValueCreateFromInternalData(int a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((__AXValueInitialized & 1) == 0)
  {
    __AXValueInitialize();
  }

  if ((a1 - 1) > 4)
  {
    return 0;
  }

  v4 = dword_1BF7DE680[a1 - 1];
  Instance = _CFRuntimeCreateInstance();
  Instance[4] = a1;
  Instance[5] = v4;
  memcpy(Instance + 6, a2, v4);
  return Instance;
}

AXValueRef AXValueCreate(AXValueType theType, const void *valuePtr)
{
  if (!valuePtr || theType - 1 > 4)
  {
    return 0;
  }

  v4 = qword_1BF7DE698[theType - 1];
  if ((__AXValueInitialized & 1) == 0)
  {
    __AXValueInitialize();
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  Instance[4] = theType;
  Instance[5] = v4;
  if (theType <= kAXValueTypeCGSize)
  {
    goto LABEL_10;
  }

  if (theType == kAXValueTypeCGRect)
  {
    v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
    *v7 = *valuePtr;
    v7[1] = *(valuePtr + 1);
    goto LABEL_12;
  }

  if (theType == kAXValueTypeCFRange)
  {
LABEL_10:
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    *v7 = *valuePtr;
LABEL_12:
    memmove(v6 + 6, v7, v4);
    free(v7);
    return v6;
  }

  memmove(Instance + 6, valuePtr, v4);
  return v6;
}

AXValueType AXValueGetType(AXValueRef value)
{
  if (value)
  {
    v1 = value;
    if ((__AXValueInitialized & 1) == 0)
    {
      __AXValueInitialize();
    }

    v2 = __kAXValueTypeID;
    if (v2 == CFGetTypeID(v1))
    {
      LODWORD(value) = *(v1 + 4);
    }

    else
    {
      LODWORD(value) = 0;
    }
  }

  return value;
}

Boolean AXValueGetValue(AXValueRef value, AXValueType theType, void *valuePtr)
{
  if (AXValueGetType(value) != theType)
  {
    return 0;
  }

  result = 0;
  if (theType > kAXValueTypeCGSize)
  {
    if (theType == kAXValueTypeCGRect)
    {
      *valuePtr = *(value + 24);
      *(valuePtr + 1) = *(value + 40);
      return 1;
    }

    if (theType != kAXValueTypeCFRange)
    {
      if (theType != kAXValueTypeAXError)
      {
        return result;
      }

      *valuePtr = *(value + 6);
      return 1;
    }

LABEL_10:
    *valuePtr = *(value + 24);
    return 1;
  }

  if (theType == kAXValueTypeCGPoint || theType == kAXValueTypeCGSize)
  {
    goto LABEL_10;
  }

  return result;
}

BOOL __AXValueEqual(_DWORD *a1, _DWORD *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (a1[4] == a2[4] && (v3 = a1[5], v3 == a2[5]))
    {
      return memcmp(a1 + 6, a2 + 6, v3) == 0;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef __AXValueCopyDescription(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = CFGetAllocator(a1);
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      return CFStringCreateWithFormat(v3, 0, @"<AXValue %p> {value = x:%f y:%f type = kAXValueCGPointType}", a1, *(a1 + 24), *(a1 + 32));
    }

    if (v2 == 2)
    {
      return CFStringCreateWithFormat(v3, 0, @"<AXValue %p> {value = w:%f h:%f type = kAXValueCGSizeType}", a1, *(a1 + 24), *(a1 + 32));
    }
  }

  else
  {
    switch(v2)
    {
      case 3:
        return CFStringCreateWithFormat(v3, 0, @"<AXValue %p> {value = x:%f y:%f w:%f h:%f type = kAXValueCGRectType}", a1, *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
      case 4:
        return CFStringCreateWithFormat(v3, 0, @"<AXValue %p> {value = location:%d length:%d type = kAXValueCFRangeType}", a1, *(a1 + 24), *(a1 + 32));
      case 5:
        return CFStringCreateWithFormat(v3, 0, @"<AXValue %p> {value = error:%ld type = kAXValueAXErrorType}", a1, *(a1 + 24));
    }
  }

  return CFStringCreateWithFormat(v3, 0, @"<AXValue %p> {type = kAXValueIllegalType}", a1);
}

id AXXCAttributeForAttribute(void *a1)
{
  v1 = a1;
  if (_AXCAInitializeLookup_onceToken != -1)
  {
    AXXCAttributeForAttribute_cold_1();
  }

  v2 = [XCAttributesToAXAttributes allKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __AXXCAttributeForAttribute_block_invoke;
  v7[3] = &unk_1E80D38E0;
  v8 = v1;
  v3 = v1;
  v4 = [v2 ax_filteredArrayUsingBlock:v7];
  v5 = [v4 lastObject];

  return v5;
}

uint64_t __AXXCAttributeForAttribute_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [XCAttributesToAXAttributes objectForKeyedSubscript:a2];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id AXAttributeForXCAttribute(void *a1)
{
  v1 = _AXCAInitializeLookup_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AXXCAttributeForAttribute_cold_1();
  }

  v3 = [XCAttributesToAXAttributes objectForKeyedSubscript:v2];

  return v3;
}

__CFString *AXExpandedStatusAttributeForValue(void *a1)
{
  v1 = [a1 intValue];
  v2 = @"kAXXCAttributeExpandedStatusUnsupported";
  if (v1 == 1)
  {
    v2 = @"kAXXCAttributeExpandedStatusExpanded";
  }

  if (v1 == 2)
  {
    return @"kAXXCAttributeExpandedStatusCollapsed";
  }

  else
  {
    return v2;
  }
}

uint64_t __AXUIElementInitialize()
{
  pthread_mutex_lock(&sInitLock_0);
  if ((__AXUIElementInitialized & 1) == 0)
  {
    __kAXUIElementTypeID = _CFRuntimeRegisterClass();
    __AXUIElementInitialized = 1;
  }

  if (!gSerializeBufferKey)
  {
    v0 = pthread_key_create(&gSerializeBufferKey, serializeBufferDestructor);
    if (v0)
    {
      v1 = v0;
      __AXUIElementInitialized = 0;
      gSerializeBufferKey = 0;
      v2 = AXRuntimeLogCommon();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        __AXUIElementInitialize_cold_1(v1, v2);
      }
    }
  }

  return pthread_mutex_unlock(&sInitLock_0);
}

uint64_t _AXUIElementSetGlobalTimeout(uint64_t result)
{
  if (result <= 0)
  {
    v1 = 3000;
  }

  else
  {
    v1 = result;
  }

  sGlobalTimeout = v1;
  return result;
}

CFTypeID AXObserverGetTypeID(void)
{
  if ((__AXObserverInitialized & 1) == 0)
  {
    __AXObserverInitialize();
  }

  return __kAXObserverTypeID;
}

uint64_t __AXObserverInitialize()
{
  pthread_mutex_lock(&sInitLock_0);
  if ((__AXObserverInitialized & 1) == 0)
  {
    __kAXObserverTypeID = _CFRuntimeRegisterClass();
    __AXObserverInitialized = 1;
  }

  return pthread_mutex_unlock(&sInitLock_0);
}

uint64_t _AXObserverCreateInternal(int a1, uint64_t a2)
{
  if ((__AXObserverInitialized & 1) == 0)
  {
    __AXObserverInitialize();
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = a1;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = a2;
    *(result + 48) = 0;
  }

  return result;
}

BOOL __AXUIElementEqual(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    return *(a1 + 20) == *(a2 + 20) && *(a1 + 28) == *(a2 + 28) && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

void _AXInitializeElementCache()
{
  if (_AXInitializeElementCache_onceToken != -1)
  {
    _AXInitializeElementCache_cold_1();
  }
}

uint64_t _AXAddToElementCache(void *a1)
{
  v1 = a1;
  if (_AXInitializeElementCache_onceToken != -1)
  {
    _AXInitializeElementCache_cold_1();
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (v1)
  {
    v4 = v1;
    AX_PERFORM_WITH_LOCK();

    v2 = v6[3];
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1BF7A21A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _AXIsInElementCache(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  AX_PERFORM_WITH_LOCK();
  v1 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1BF7A2318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _doesElementFrame(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  switch(a1)
  {
    case 2:
      v41.origin.x = a6;
      v41.origin.y = a7;
      v41.size.width = a8;
      v41.size.height = a9;
      MaxY = CGRectGetMaxY(v41);
      v42.origin.x = a2;
      v42.origin.y = a3;
      v42.size.width = a4;
      v42.size.height = a5;
      if (MaxY - CGRectGetMaxY(v42) < 0.0)
      {
        return 0;
      }

      v43.origin.x = a6;
      v43.origin.y = a7;
      v43.size.width = a8;
      v43.size.height = a9;
      MinY = CGRectGetMinY(v43);
      v26 = a2;
      v27 = a3;
      v28 = a4;
      v29 = a5;
      break;
    case 3:
      v38.origin.x = a6;
      v38.origin.y = a7;
      v38.size.width = a8;
      v38.size.height = a9;
      MaxX = CGRectGetMaxX(v38);
      v39.origin.x = a2;
      v39.origin.y = a3;
      v39.size.width = a4;
      v39.size.height = a5;
      if (MaxX - CGRectGetMaxX(v39) < 0.0)
      {
        return 0;
      }

      v40.origin.x = a6;
      v40.origin.y = a7;
      v40.size.width = a8;
      v40.size.height = a9;
      MinY = CGRectGetMinX(v40);
      v20 = a2;
      v21 = a3;
      v22 = a4;
      v18 = a5;
LABEL_8:
      v24 = CGRectGetMaxX(*&v20);
      return MinY - v24 < 6.0;
    case 4:
      rectb = CGRectGetMinX(*&a2);
      v36.origin.x = a6;
      v36.origin.y = a7;
      v36.size.width = a8;
      v36.size.height = a9;
      if (rectb - CGRectGetMinX(v36) < 0.0)
      {
        return 0;
      }

      v37.origin.x = a2;
      v37.origin.y = a3;
      v37.size.width = a4;
      v37.size.height = a5;
      MinX = CGRectGetMinX(v37);
      v18 = a9;
      MinY = MinX;
      v20 = a6;
      v21 = a7;
      v22 = a8;
      goto LABEL_8;
    default:
      rectc = CGRectGetMinY(*&a2);
      v44.origin.x = a6;
      v44.origin.y = a7;
      v44.size.width = a8;
      v44.size.height = a9;
      if (rectc - CGRectGetMinY(v44) < 0.0)
      {
        return 0;
      }

      v45.origin.x = a2;
      v45.origin.y = a3;
      v45.size.width = a4;
      v45.size.height = a5;
      v30 = CGRectGetMinY(v45);
      v29 = a9;
      MinY = v30;
      v26 = a6;
      v27 = a7;
      v28 = a8;
      break;
  }

  v24 = CGRectGetMaxY(*&v26);
  return MinY - v24 < 6.0;
}

id AXReadAllUtilitiesElementsToCombineForReadAll(void *a1, uint64_t a2)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v2;
  v5 = [MEMORY[0x1E695DFA8] set];
  if (v4)
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
    v10 = 0.0;
    v11 = v4;
    v12 = v4;
    v57 = y;
    v58 = *MEMORY[0x1E695F058];
    v55 = height;
    v56 = width;
    v54 = 0.0;
    while (1)
    {
      v13 = v12;
      if ([v5 containsObject:v11])
      {
        break;
      }

      [v5 addObject:v11];
      v14 = [v11 stringWithAXAttribute:2008];
      if (v14)
      {
        v15 = v14;
        v16 = [v13 stringWithAXAttribute:2008];
        if (v16)
        {
          v17 = v16;
          v18 = [v11 stringWithAXAttribute:2008];
          v19 = [v13 stringWithAXAttribute:2008];
          v20 = [v18 isEqualToString:v19];

          if (!v20)
          {
            break;
          }
        }

        else
        {
        }
      }

      v21 = [v11 arrayWithAXAttribute:2145];
      if ([v21 containsObject:&unk_1F3E6B790])
      {
        goto LABEL_35;
      }

      v22 = [v11 numberWithAXAttribute:2004];
      v23 = [v22 unsignedLongLongValue];

      if ((v23 & 0x42) == 0)
      {
        goto LABEL_35;
      }

      v24 = [v13 numberWithAXAttribute:2004];
      v25 = [v24 unsignedLongLongValue];

      v26 = *&v25 & 0x10000;
      if ((v23 & 0x10000) == 0x10000 && !v26)
      {
        goto LABEL_35;
      }

      if ((v23 & 0x10000) == 0 && v26 == 0x10000)
      {
        goto LABEL_35;
      }

      v59 = x;
      v60 = width;
      v27 = [v13 arrayWithAXAttribute:2145];
      v28 = v27;
      if (v21 && v27 && ![v21 isEqualToArray:v27] || (v29 = objc_msgSend(v11, "BOOLWithAXAttribute:", 2213), v29 != objc_msgSend(v13, "BOOLWithAXAttribute:", 2213)) || (v30 = objc_msgSend(v11, "BOOLWithAXAttribute:", 2212), v30 != objc_msgSend(v13, "BOOLWithAXAttribute:", 2212)))
      {
LABEL_34:

LABEL_35:
        break;
      }

      [v11 rectWithAXAttribute:2003];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v39 = +[AXElement systemWideElement];
      v40 = [v11 numberWithAXAttribute:2021];
      [v39 convertRect:objc_msgSend(v40 fromContextId:{"unsignedIntValue"), v32, v34, v36, v38}];
      x = v41;
      v43 = v42;
      width = v44;
      v46 = v45;

      v63.origin.y = v57;
      v63.origin.x = v58;
      v63.size.height = v55;
      v63.size.width = v56;
      v66.origin.x = v59;
      v66.origin.y = y;
      v66.size.width = v60;
      v66.size.height = height;
      if (CGRectEqualToRect(v63, v66))
      {
        height = v46;
        y = v43;
      }

      else
      {
        if (!_doesElementFrame(a2, x, v43, width, v46, v59, y, v60, height))
        {
          goto LABEL_34;
        }

        v64.origin.x = v59;
        v64.size.width = v60;
        v64.origin.y = y;
        v64.size.height = height;
        v67.origin.x = x;
        v67.origin.y = v43;
        v67.size.width = width;
        v67.size.height = v46;
        v65 = CGRectUnion(v64, v67);
        x = v65.origin.x;
        y = v65.origin.y;
        width = v65.size.width;
        height = v65.size.height;
      }

      if ((~v23 & 2) == 0)
      {
        v10 = v10 + 1.0;
      }

      v47 = [v11 stringWithAXAttribute:2001];
      if (([v47 isEqualToString:@"•"] & 1) != 0 || objc_msgSend(v47, "isEqualToString:", @"-"))
      {
        [v47 length];
      }

      else
      {
        v54 = v54 + 1.0;
        if ([v47 length])
        {
          [v3 addObject:v11];
        }
      }

      v12 = v11;

      v48 = [v12 nextElementsWithCount:1];
      v11 = [v48 firstObject];

      if (!v11)
      {
        v13 = v12;
        break;
      }
    }

    v49 = v54;
  }

  else
  {
    v13 = 0;
    v11 = 0;
    v49 = 0.0;
    v10 = 0.0;
  }

  if (v10 / v49 < 0.75 && [v3 count])
  {
    v50 = v3;
  }

  else
  {
    v61[0] = v4;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  }

  v51 = v50;

  return v51;
}

void AXSetProcessWantsMLElementForBundle(uint64_t a1, void *a2)
{
  v3 = AXSetProcessWantsMLElementForBundle_onceToken;
  v4 = a2;
  if (v3 != -1)
  {
    AXSetProcessWantsMLElementForBundle_cold_1();
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  [MLElementRequests setObject:v5 forKeyedSubscript:v4];
}

uint64_t __AXSetProcessWantsMLElementForBundle_block_invoke()
{
  MLElementRequests = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t AXProcessWantsMLElementsForBundle(uint64_t a1)
{
  v1 = [MLElementRequests objectForKeyedSubscript:a1];
  v2 = [v1 BOOLValue];

  return v2;
}

uint64_t _AXPidFromAuditToken(uint64_t a1)
{
  if (a1)
  {
    return (a1 + 20);
  }

  else
  {
    return 0;
  }
}

id AXConvertIncomingValue(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_9;
  }

  v2 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  v3 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
LABEL_7:

LABEL_8:
LABEL_9:
    v5 = v1;
LABEL_10:
    v6 = v5;
    goto LABEL_11;
  }

  v4 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {

    goto LABEL_7;
  }

  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_9;
  }

  v10 = objc_opt_self();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v12 = v1;
    v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v36 + 1) + 8 * i);
          v18 = [v12 objectForKey:v17];
          v19 = AXConvertIncomingValue(v18);
          if (v19)
          {
            [v6 setObject:v19 forKey:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v14);
    }

LABEL_36:

    goto LABEL_11;
  }

  v20 = objc_opt_self();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v1;
    v22 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v12);
          }

          v26 = AXConvertIncomingValue(*(*(&v32 + 1) + 8 * j));
          if (v26)
          {
            [v6 addObject:v26];
          }
        }

        v23 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v23);
    }

    goto LABEL_36;
  }

  v27 = CFGetTypeID(v1);
  if (v27 != AXValueGetTypeID())
  {
    v29 = CFGetTypeID(v1);
    if (v29 == AXUIElementGetTypeID())
    {
      v5 = _UIAXElementForAXUIElementRef(v1);
      goto LABEL_10;
    }

    goto LABEL_55;
  }

  Type = AXValueGetType(v1);
  v6 = 0;
  if (Type <= kAXValueTypeCGSize)
  {
    if (Type == kAXValueTypeCGPoint)
    {
      v30 = 0uLL;
      if (AXValueGetValue(v1, kAXValueTypeCGPoint, &v30))
      {
        v5 = [MEMORY[0x1E696B098] valueWithPoint:v30];
        goto LABEL_10;
      }
    }

    else
    {
      if (Type != kAXValueTypeCGSize)
      {
        goto LABEL_11;
      }

      v30 = 0uLL;
      if (AXValueGetValue(v1, kAXValueTypeCGSize, &v30))
      {
        v5 = [MEMORY[0x1E696B098] valueWithSize:v30];
        goto LABEL_10;
      }
    }

    goto LABEL_55;
  }

  if (Type == kAXValueTypeCGRect)
  {
    v30 = 0u;
    v31 = 0u;
    if (AXValueGetValue(v1, kAXValueTypeCGRect, &v30))
    {
      v5 = [MEMORY[0x1E696B098] valueWithRect:{v30, v31}];
      goto LABEL_10;
    }

LABEL_55:
    v6 = 0;
    goto LABEL_11;
  }

  if (Type == kAXValueTypeCFRange)
  {
    v30 = 0uLL;
    v6 = 0;
    if (AXValueGetValue(v1, kAXValueTypeCFRange, &v30))
    {
      if ((v30 & 0x8000000000000000) == 0 && (*(&v30 + 1) & 0x8000000000000000) == 0)
      {
        v5 = [MEMORY[0x1E696B098] valueWithRange:?];
        goto LABEL_10;
      }
    }
  }

LABEL_11:

  return v6;
}

id AXConvertPidToAXElement(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 intValue];
    if (v2)
    {
      AppElementWithPid = _AXUIElementCreateAppElementWithPid(v2);
    }

    else
    {
      AppElementWithPid = AXUIElementCreateSystemWide();
    }

    v4 = AppElementWithPid;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id AXConvertOutgoingValue(uint64_t a1, void *a2)
{
  v149 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v12 = 0;
    goto LABEL_343;
  }

  v4 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[AXAttributedString alloc] initWithCFAttributedString:v4];

    v4 = v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 convertAttachmentsWithBlock:&__block_literal_global_13];
  }

  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v6 = getBKSHIDEventAuthenticationMessageClass_softClass;
  v140 = getBKSHIDEventAuthenticationMessageClass_softClass;
  if (!getBKSHIDEventAuthenticationMessageClass_softClass)
  {
    *&valuePtr = MEMORY[0x1E69E9820];
    *(&valuePtr + 1) = 3221225472;
    *&v135 = __getBKSHIDEventAuthenticationMessageClass_block_invoke;
    *(&v135 + 1) = &unk_1E80D3D68;
    v136 = &v137;
    __getBKSHIDEventAuthenticationMessageClass_block_invoke(&valuePtr);
    v6 = v138[3];
  }

  v7 = v6;
  _Block_object_dispose(&v137, 8);
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];

    v4 = v8;
  }

  NSClassFromString(@"BEAccessibilityTextMarker");
  if (objc_opt_isKindOfClass())
  {
    v133 = 0;
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v133];
    v10 = v133;

    if (v10)
    {
      v11 = AXLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        AXConvertOutgoingValue_cold_1(v10, v11);
      }
    }

    v4 = v9;
  }

  if (a1 <= 3001)
  {
    if (a1 > 2091)
    {
      if (a1 > 2166)
      {
        if (a1 > 2235)
        {
          if (a1 <= 2599)
          {
            if (a1 > 2309)
            {
              if ((a1 - 2310) <= 3 && a1 != 2311)
              {
                goto LABEL_264;
              }

              if (a1 != 2502)
              {
                goto LABEL_340;
              }

              goto LABEL_208;
            }

            if (a1 == 2236)
            {
              goto LABEL_322;
            }

            if (a1 != 2244)
            {
              goto LABEL_340;
            }

            goto LABEL_291;
          }

          if (a1 > 2709)
          {
            if ((a1 - 2710) >= 2 && a1 != 2714)
            {
              goto LABEL_340;
            }

            goto LABEL_264;
          }

          if (a1 == 2600)
          {
            goto LABEL_264;
          }

          if (a1 == 2709)
          {
            goto LABEL_322;
          }
        }

        else
        {
          if (a1 > 2195)
          {
            if (a1 > 2201)
            {
              if (a1 == 2202 || a1 == 2208)
              {
                goto LABEL_264;
              }

              if (a1 != 2216)
              {
                goto LABEL_340;
              }

              goto LABEL_248;
            }

            if (a1 != 2196)
            {
              if (a1 != 2197)
              {
                goto LABEL_340;
              }

              goto LABEL_264;
            }

            goto LABEL_291;
          }

          if (a1 > 2181)
          {
            if ((a1 - 2183) < 2)
            {
              goto LABEL_264;
            }

            if (a1 == 2182)
            {
              goto LABEL_208;
            }
          }

          else
          {
            switch(a1)
            {
              case 2167:
                goto LABEL_264;
              case 2171:
                goto LABEL_322;
              case 2181:
                goto LABEL_57;
            }
          }
        }

        goto LABEL_340;
      }

      if (a1 <= 2123)
      {
        if (a1 > 2103)
        {
          if ((a1 - 2106) >= 4 && a1 != 2104 && a1 != 2113)
          {
            goto LABEL_340;
          }

          goto LABEL_264;
        }

        if (a1 > 2095)
        {
          if (a1 != 2096 && a1 != 2099)
          {
            goto LABEL_340;
          }

          goto LABEL_264;
        }

        if (a1 == 2092)
        {
          goto LABEL_264;
        }

        if (a1 != 2095)
        {
          goto LABEL_340;
        }

        goto LABEL_253;
      }

      if (a1 > 2141)
      {
        if ((a1 - 2154) < 3 || (a1 - 2142) < 2)
        {
          goto LABEL_264;
        }

        if (a1 != 2149)
        {
          goto LABEL_340;
        }

        goto LABEL_322;
      }

      if (a1 <= 2125)
      {
        if (a1 != 2124)
        {
          goto LABEL_264;
        }

        goto LABEL_248;
      }

      if (a1 == 2126)
      {
        goto LABEL_291;
      }

      if (a1 == 2130)
      {
        goto LABEL_322;
      }

      if (a1 != 2132)
      {
        goto LABEL_340;
      }
    }

    else
    {
      if (a1 <= 2006)
      {
        if (a1 <= 1099)
        {
          if ((a1 - 1000) > 0xB || ((1 << (a1 + 24)) & 0xEE3) == 0)
          {
            goto LABEL_340;
          }

          goto LABEL_223;
        }

        if (a1 > 1512)
        {
          if (a1 <= 1989)
          {
            if ((a1 - 1520) >= 2 && a1 != 1513)
            {
              goto LABEL_340;
            }

            goto LABEL_264;
          }

          if (a1 == 1990)
          {
            goto LABEL_264;
          }

          if (a1 == 2003)
          {
            goto LABEL_322;
          }

          if (a1 != 2005)
          {
            goto LABEL_340;
          }

          goto LABEL_248;
        }

        v13 = a1 - 76;
        if ((a1 - 1100) <= 7)
        {
          if (((1 << v13) & 0x2D) != 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [MEMORY[0x1E695DF70] array];
              v127 = 0u;
              v128 = 0u;
              v125 = 0u;
              v126 = 0u;
              v14 = v4;
              v15 = [v14 countByEnumeratingWithState:&v125 objects:v147 count:16];
              if (v15)
              {
                v16 = *v126;
                do
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v126 != v16)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v18 = AXConvertPidToAXElement(*(*(&v125 + 1) + 8 * i));
                    [v12 addObject:v18];
                  }

                  v15 = [v14 countByEnumeratingWithState:&v125 objects:v147 count:16];
                }

                while (v15);
              }

              goto LABEL_342;
            }

            goto LABEL_304;
          }

          if (((1 << v13) & 0x92) != 0)
          {
            goto LABEL_223;
          }
        }

        if (a1 == 1512)
        {
          goto LABEL_208;
        }

        goto LABEL_340;
      }

      if (a1 > 2035)
      {
        if (a1 <= 2065)
        {
          if (a1 > 2049)
          {
            if (a1 == 2050 || a1 == 2057)
            {
              goto LABEL_322;
            }

            if (a1 != 2062)
            {
              goto LABEL_340;
            }

            goto LABEL_208;
          }

          if (a1 == 2036)
          {
            goto LABEL_264;
          }

          if (a1 == 2042)
          {
            NSClassFromString(@"UIBezierPath");
            if (objc_opt_isKindOfClass())
            {
              v22 = [v4 CGPath];
              goto LABEL_341;
            }

            goto LABEL_304;
          }

LABEL_340:
          v22 = v4;
          goto LABEL_341;
        }

        if (a1 > 2077)
        {
          if (a1 == 2078)
          {
            goto LABEL_248;
          }

          if (a1 == 2080)
          {
            goto LABEL_264;
          }

          if (a1 != 2084)
          {
            goto LABEL_340;
          }

          goto LABEL_291;
        }

        if (a1 == 2066)
        {
          goto LABEL_264;
        }

        if (a1 == 2070)
        {
          goto LABEL_208;
        }

        if (a1 != 2076)
        {
          goto LABEL_340;
        }
      }

      else
      {
        if (a1 <= 2023)
        {
          if (a1 > 2013)
          {
            if ((a1 - 2014) >= 2 && a1 != 2017)
            {
              goto LABEL_340;
            }

            goto LABEL_264;
          }

          if ((a1 - 2011) < 2)
          {
            goto LABEL_264;
          }

          if (a1 != 2007)
          {
            goto LABEL_340;
          }

          goto LABEL_208;
        }

        if (a1 <= 2026)
        {
          if (a1 != 2024 && a1 != 2026)
          {
            goto LABEL_340;
          }

          goto LABEL_264;
        }

        if ((a1 - 2027) < 2)
        {
          goto LABEL_248;
        }

        if (a1 != 2033)
        {
          goto LABEL_340;
        }
      }
    }

LABEL_264:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = [MEMORY[0x1E695DF70] array];
      v114[0] = MEMORY[0x1E69E9820];
      v114[1] = 3221225472;
      v114[2] = __AXConvertOutgoingValue_block_invoke_19;
      v114[3] = &unk_1E80D3D40;
      v116 = a1;
      v53 = v52;
      v115 = v53;
      [v4 enumerateObjectsUsingBlock:v114];
      if ([v53 count])
      {
        v12 = v53;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_342;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v54 = v4;
      v55 = [v54 countByEnumeratingWithState:&v110 objects:v144 count:16];
      if (v55)
      {
        v56 = *v111;
        do
        {
          for (j = 0; j != v55; ++j)
          {
            if (*v111 != v56)
            {
              objc_enumerationMutation(v54);
            }

            v58 = *(*(&v110 + 1) + 8 * j);
            v59 = [v54 objectForKey:v58];
            v60 = AXConvertOutgoingValue(a1);

            if (v60)
            {
              [v12 setObject:v60 forKey:v58];
            }
          }

          v55 = [v54 countByEnumeratingWithState:&v110 objects:v144 count:16];
        }

        while (v55);
      }

      goto LABEL_342;
    }

    if (v4)
    {
      v61 = CFGetTypeID(v4);
      if (v61 == AXUIElementGetTypeID())
      {
        goto LABEL_340;
      }

      v62 = CFGetTypeID(v4);
      if (v62 == AXValueGetTypeID())
      {
        goto LABEL_340;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_340;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_340;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_340;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = _AXCreateAXUIElementWithElement(v4);
      goto LABEL_341;
    }

    goto LABEL_285;
  }

  if (a1 > 91500)
  {
    if (a1 <= 95000)
    {
      if (a1 <= 92515)
      {
        if (a1 > 91511)
        {
          if (a1 <= 92503)
          {
            if ((a1 - 91512) >= 2 && (a1 - 92501) >= 2)
            {
              if (a1 != 91700)
              {
                goto LABEL_340;
              }

              goto LABEL_223;
            }

            goto LABEL_264;
          }

          if (a1 != 92504)
          {
            if (a1 != 92506)
            {
              v23 = 26976;
              goto LABEL_212;
            }

            goto LABEL_322;
          }

LABEL_248:
          valuePtr = 0uLL;
          *&valuePtr = [v4 rangeValue];
          *(&valuePtr + 1) = v46;
          v22 = AXValueCreate(kAXValueTypeCFRange, &valuePtr);
          goto LABEL_341;
        }

        if (a1 <= 91504)
        {
          if ((a1 - 91503) >= 2)
          {
            v25 = 25965;
            goto LABEL_195;
          }

LABEL_208:
          valuePtr = 0uLL;
          [v4 pointValue];
          *&valuePtr = v43;
          *(&valuePtr + 1) = v44;
          v22 = AXValueCreate(kAXValueTypeCGPoint, &valuePtr);
          goto LABEL_341;
        }

        if (a1 == 91505)
        {
          goto LABEL_322;
        }

        if (a1 != 91510)
        {
          v26 = 25975;
          goto LABEL_200;
        }

LABEL_223:
        v22 = AXConvertPidToAXElement(v4);
        goto LABEL_341;
      }

      if (a1 > 93999)
      {
        if ((a1 - 94000) <= 0x11)
        {
          if (((1 << (a1 - 48)) & 0x31200) != 0)
          {
            goto LABEL_248;
          }

          if (a1 == 94000)
          {
            goto LABEL_322;
          }
        }

        if (a1 != 94100)
        {
          v23 = 28964;
LABEL_212:
          v37 = v23 | 0x10000u;
LABEL_213:
          if (a1 != v37)
          {
            goto LABEL_340;
          }

          goto LABEL_264;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [MEMORY[0x1E695DF90] dictionary];
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v69 = v4;
          v70 = [v69 countByEnumeratingWithState:&v95 objects:v141 count:16];
          if (v70)
          {
            v71 = *v96;
            do
            {
              for (k = 0; k != v70; ++k)
              {
                if (*v96 != v71)
                {
                  objc_enumerationMutation(v69);
                }

                v73 = *(*(&v95 + 1) + 8 * k);
                v74 = [v69 objectForKey:{v73, v95}];
                v75 = AXConvertOutgoingValue(94100);

                if (v75)
                {
                  [v12 setObject:v75 forKey:v73];
                }
              }

              v70 = [v69 countByEnumeratingWithState:&v95 objects:v141 count:16];
            }

            while (v70);
          }

          goto LABEL_342;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_340;
        }

LABEL_322:
        valuePtr = 0u;
        v135 = 0u;
        [v4 rectValue];
        *&valuePtr = v78;
        *(&valuePtr + 1) = v79;
        *&v135 = v80;
        *(&v135 + 1) = v81;
        v22 = AXValueCreate(kAXValueTypeCGRect, &valuePtr);
        goto LABEL_341;
      }

      if (a1 > 92700)
      {
        if (a1 == 92701 || a1 == 92703)
        {
          goto LABEL_322;
        }

        if (a1 != 92704)
        {
          goto LABEL_340;
        }

        goto LABEL_248;
      }

      if (a1 != 92516)
      {
        if (a1 == 92517)
        {
          goto LABEL_264;
        }

        v26 = 27065;
LABEL_200:
        if (a1 == (v26 | 0x10000))
        {
          goto LABEL_322;
        }

        goto LABEL_340;
      }

      goto LABEL_291;
    }

    if (a1 <= 95232)
    {
      if (a1 > 95223)
      {
        if ((a1 - 95225) >= 3 && (a1 - 95230) >= 2)
        {
          if (a1 == 95224)
          {
            v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v27 = v4;
            v28 = [v27 countByEnumeratingWithState:&v129 objects:v148 count:16];
            if (v28)
            {
              v29 = *v130;
              do
              {
                for (m = 0; m != v28; ++m)
                {
                  if (*v130 != v29)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v31 = *(*(&v129 + 1) + 8 * m);
                  valuePtr = 0u;
                  v135 = 0u;
                  [v31 rectValue];
                  *&valuePtr = v32;
                  *(&valuePtr + 1) = v33;
                  *&v135 = v34;
                  *(&v135 + 1) = v35;
                  v36 = AXValueCreate(kAXValueTypeCGRect, &valuePtr);
                  [v12 addObject:v36];
                  if (v36)
                  {
                    CFRelease(v36);
                  }
                }

                v28 = [v27 countByEnumeratingWithState:&v129 objects:v148 count:16];
              }

              while (v28);
            }

            goto LABEL_342;
          }

          goto LABEL_340;
        }

        goto LABEL_264;
      }

      if (a1 > 95004)
      {
        if (a1 > 95221)
        {
          if (a1 == 95222)
          {
            goto LABEL_264;
          }

          v24 = 29687;
        }

        else
        {
          if (a1 == 95005)
          {
            goto LABEL_264;
          }

          v24 = 29681;
        }

        goto LABEL_251;
      }

      if (a1 == 95001)
      {
        goto LABEL_264;
      }

      if (a1 != 95003)
      {
        v25 = 29468;
LABEL_195:
        if (a1 != (v25 | 0x10000))
        {
          goto LABEL_340;
        }

        goto LABEL_208;
      }
    }

    else
    {
      if (a1 > 95248)
      {
        if ((a1 - 95249) < 8)
        {
          goto LABEL_264;
        }

        if (a1 == 95257)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v76 = [MEMORY[0x1E695DF70] array];
            v107[0] = MEMORY[0x1E69E9820];
            v107[1] = 3221225472;
            v107[2] = __AXConvertOutgoingValue_block_invoke_2;
            v107[3] = &unk_1E80D3D40;
            v109 = 95257;
            v77 = v76;
            v108 = v77;
            [v4 enumerateObjectsUsingBlock:v107];
            if ([v77 count])
            {
              v12 = v77;
            }

            else
            {
              v12 = 0;
            }

            goto LABEL_342;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [MEMORY[0x1E695DF90] dictionary];
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v82 = v4;
            v83 = [v82 countByEnumeratingWithState:&v103 objects:v143 count:16];
            if (v83)
            {
              v84 = *v104;
              do
              {
                for (n = 0; n != v83; ++n)
                {
                  if (*v104 != v84)
                  {
                    objc_enumerationMutation(v82);
                  }

                  v86 = *(*(&v103 + 1) + 8 * n);
                  v87 = [v82 objectForKey:v86];
                  v88 = AXConvertOutgoingValue(95257);

                  if (v88)
                  {
                    [v12 setObject:v88 forKey:v86];
                  }
                }

                v83 = [v82 countByEnumeratingWithState:&v103 objects:v143 count:16];
              }

              while (v83);
            }

            goto LABEL_342;
          }

          if (v4)
          {
            v89 = CFGetTypeID(v4);
            if (v89 == AXUIElementGetTypeID())
            {
              goto LABEL_340;
            }

            v90 = CFGetTypeID(v4);
            if (v90 == AXValueGetTypeID())
            {
              goto LABEL_340;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_340;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_340;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_340;
            }
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v92 = AXRemoteElementFromObject(v4);
            v93 = v92;
            if (v92 && ([v92 onClientSide] & 1) == 0)
            {
              v94 = _AXCreateAXUIElementWithElementUsingLocalRemoteElement(v93);
            }

            else
            {
              v94 = _AXCreateAXUIElementWithElement(v4);
            }

            v12 = v94;

            goto LABEL_342;
          }

LABEL_285:
          v22 = AXUIElementConvertOutgoingType(v4);
          goto LABEL_341;
        }

        v23 = 29722;
        goto LABEL_212;
      }

      if ((a1 - 95233) < 2)
      {
        goto LABEL_264;
      }

      if (a1 != 95236)
      {
        v24 = 29710;
LABEL_251:
        v45 = v24 | 0x10000u;
        goto LABEL_252;
      }
    }

LABEL_291:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [MEMORY[0x1E695DF70] array];
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v63 = v4;
      v64 = [v63 countByEnumeratingWithState:&v121 objects:v146 count:16];
      if (v64)
      {
        v65 = *v122;
        do
        {
          for (ii = 0; ii != v64; ++ii)
          {
            if (*v122 != v65)
            {
              objc_enumerationMutation(v63);
            }

            v67 = *(*(&v121 + 1) + 8 * ii);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v12 addObject:v67];
            }

            else
            {
              v68 = _AXCreateAXUIElementWithElement(v67);
              if (v68)
              {
                [v12 addObject:v68];
                CFRelease(v68);
              }
            }
          }

          v64 = [v63 countByEnumeratingWithState:&v121 objects:v146 count:16];
        }

        while (v64);
      }

      goto LABEL_342;
    }

    goto LABEL_304;
  }

  if (a1 <= 3073)
  {
    switch(a1)
    {
      case 3002:
      case 3004:
      case 3011:
      case 3012:
      case 3023:
      case 3024:
      case 3027:
      case 3037:
      case 3043:
      case 3049:
      case 3054:
      case 3055:
      case 3056:
      case 3057:
      case 3060:
      case 3061:
        goto LABEL_264;
      case 3003:
      case 3005:
      case 3006:
      case 3007:
      case 3008:
      case 3009:
      case 3010:
      case 3013:
      case 3014:
      case 3016:
      case 3017:
      case 3018:
      case 3019:
      case 3020:
      case 3021:
      case 3026:
      case 3028:
      case 3030:
      case 3033:
      case 3034:
      case 3035:
      case 3036:
      case 3038:
      case 3039:
      case 3040:
      case 3041:
      case 3042:
      case 3044:
      case 3045:
      case 3047:
      case 3048:
      case 3050:
      case 3052:
      case 3053:
      case 3059:
        goto LABEL_340;
      case 3015:
      case 3022:
      case 3025:
      case 3029:
      case 3031:
      case 3032:
        goto LABEL_253;
      case 3046:
      case 3051:
        goto LABEL_291;
      case 3058:
        goto LABEL_322;
      case 3062:
        v22 = _AXCreateAXUIElementWithElementUsingLocalRemoteElement(v4);
        goto LABEL_341;
      default:
        if (a1 == 3070)
        {
          goto LABEL_253;
        }

        if (a1 == 3073)
        {
          goto LABEL_291;
        }

        goto LABEL_340;
    }
  }

  if (a1 <= 5025)
  {
    if (a1 <= 5009)
    {
      if (a1 > 5001)
      {
        if ((a1 - 5007) >= 2)
        {
          v37 = 5002;
          goto LABEL_213;
        }

        goto LABEL_208;
      }

      if (a1 == 3074)
      {
        goto LABEL_253;
      }

      if (a1 == 4005)
      {
        goto LABEL_248;
      }

      if (a1 != 5001)
      {
        goto LABEL_340;
      }

      goto LABEL_291;
    }

    if (a1 <= 5023)
    {
      if ((a1 - 5016) >= 2)
      {
        v37 = 5010;
        goto LABEL_213;
      }

      goto LABEL_291;
    }

    if (a1 == 5024)
    {
      goto LABEL_264;
    }

    v45 = 5025;
LABEL_252:
    if (a1 != v45)
    {
      goto LABEL_340;
    }

LABEL_253:
    v12 = [MEMORY[0x1E695DF70] array];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v47 = v4;
      v48 = [v47 countByEnumeratingWithState:&v117 objects:v145 count:16];
      if (v48)
      {
        v49 = *v118;
        do
        {
          for (jj = 0; jj != v48; ++jj)
          {
            if (*v118 != v49)
            {
              objc_enumerationMutation(v47);
            }

            v51 = _AXCreateAXUIElementWithElement(*(*(&v117 + 1) + 8 * jj));
            if (v51)
            {
              [v12 addObject:v51];
            }
          }

          v48 = [v47 countByEnumeratingWithState:&v117 objects:v145 count:16];
        }

        while (v48);
      }
    }

    goto LABEL_342;
  }

  if (a1 <= 8999)
  {
    v19 = a1 + 94;
    if ((a1 - 5026) > 0x2E)
    {
      goto LABEL_340;
    }

    if (((1 << v19) & 0x8830044000) != 0)
    {
      goto LABEL_264;
    }

    if (((1 << v19) & 0x4000000003) != 0)
    {
      goto LABEL_208;
    }

    if (a1 != 5072)
    {
      goto LABEL_340;
    }

LABEL_57:
    valuePtr = 0uLL;
    [v4 sizeValue];
    *&valuePtr = v20;
    *(&valuePtr + 1) = v21;
    v22 = AXValueCreate(kAXValueTypeCGSize, &valuePtr);
LABEL_341:
    v12 = v22;
    goto LABEL_342;
  }

  if (a1 > 12016)
  {
    if (a1 == 12017)
    {
      goto LABEL_264;
    }

    v45 = 14000;
    goto LABEL_252;
  }

  if (a1 == 9000)
  {
    goto LABEL_322;
  }

  if (a1 != 12002)
  {
    goto LABEL_340;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
  {
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v38 = v4;
    v39 = [v38 countByEnumeratingWithState:&v99 objects:v142 count:16];
    if (v39)
    {
      v40 = *v100;
      do
      {
        for (kk = 0; kk != v39; ++kk)
        {
          if (*v100 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = _AXCreateAXUIElementWithElement(*(*(&v99 + 1) + 8 * kk));
          [v12 addObject:v42];
          if (v42)
          {
            CFRelease(v42);
          }
        }

        v39 = [v38 countByEnumeratingWithState:&v99 objects:v142 count:16];
      }

      while (v39);
    }

    goto LABEL_342;
  }

LABEL_304:
  v12 = 0;
LABEL_342:

LABEL_343:

  return v12;
}