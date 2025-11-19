uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_151);
  return get_aks_client_connection_connection;
}

uint64_t _get_device_state(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v26[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  v26[0] = v5;
  bzero(v25, 0x1000uLL);
  v22 = 4096;
  v24 = 0;
  memset(__src, 0, sizeof(__src));
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v2 && !OUTLINED_FUNCTION_18_3(aks_client_connection, v4, v26, v7, v8, v9, v10, v11, v25, &v22) && !decode_extended_state(v25))
    {
      memcpy(v2, __src, 0x42uLL);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v15, v16, v17, v18, v19, v20, v21, v22, 2u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return OUTLINED_FUNCTION_67();
}

void __get_aks_client_connection_block_invoke()
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t OUTLINED_FUNCTION_18_3(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, 0, 0, 0, 0, a9, a10);
}

uint64_t decode_extended_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31(*MEMORY[0x1E69E9840]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        memset_s(v3, 0x54uLL, 0, 0x54uLL);
        bzero(v8, 0x228uLL);
        v8[4] = der_key_state_lock_state;
        v8[9] = der_key_state_backoff;
        v8[14] = der_key_state_failed_attempts;
        v8[19] = der_key_state_generation_state;
        v8[24] = der_key_state_assertion_set;
        v8[29] = der_key_state_grace_period_enabled;
        v8[34] = der_key_state_recovery_countdown;
        v8[39] = der_key_state_more_state;
        v8[44] = der_key_keybag_handle;
        v8[49] = der_key_config_max_unlock_attempts;
        v8[54] = der_key_config_user_uuid;
        v9[2] = der_key_lock_time;
        v9[7] = der_key_cx_window;
        OUTLINED_FUNCTION_0_3();
        OUTLINED_FUNCTION_35();
        *v5 = der_get_number();
        *(v5 + 1) = der_get_number();
        *(v5 + 1) = der_get_number();
        *(v5 + 4) = der_get_number();
        *(v5 + 5) = der_get_number();
        *(v5 + 26) = der_get_number();
        *(v5 + 34) = der_get_number();
        *(v5 + 42) = der_get_number();
        *(v5 + 46) = der_get_number();
        der_utils_decode_implicit_raw_octet_string_copy(v9, 4, v5 + 50, 16);
        v5[66] = der_get_number();
        v5[67] = der_get_number();
        *(v5 + 68) = der_get_number();
        der_get_number();
        result = OUTLINED_FUNCTION_18();
        *(v5 + 76) = v6;
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OUTLINED_FUNCTION_35()
{

  return der_dict_iterate();
}

uint64_t der_dict_iterate()
{
  OUTLINED_FUNCTION_26();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        OUTLINED_FUNCTION_32(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6F748](a1, 32, a3, 0, 0, v4, v3, 32);
}

uint64_t OUTLINED_FUNCTION_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __s)
{

  return memset_s(&__s, 0x20uLL, 0, 0x20uLL);
}

uint64_t OUTLINED_FUNCTION_0_2(void *a1)
{

  return memset_s(a1, 0x40uLL, 0, 0x40uLL);
}

uint64_t dict_find_params_cb(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) >= *a5)
  {
    v13 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = der_equal(*(*(a5 + 24) + v9), *(*(a5 + 24) + v9) + *(*(*(a5 + 24) + v9) + 1) + 2, a1);
      if (v11)
      {
        break;
      }

      ++v10;
      v9 += 40;
      if (v10 >= *a5)
      {
        goto LABEL_10;
      }
    }

    v14 = (*(a5 + 24) + v9);
    if (v14[1])
    {
      v12 = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      ++*(a5 + 8);
      v14[1] = a3;
      v14[2] = a3 + a4;
      v14[3] = a3;
      v14[4] = a3 + a4;
      v12 = 1;
    }

LABEL_10:
    v13 = v12 | !v11;
  }

  return v13 & 1;
}

dispatch_queue_t __get_aks_client_dispatch_queue_block_invoke()
{
  result = dispatch_queue_create("aks-client-queue", 0);
  get_aks_client_dispatch_queue_connection_queue = result;
  return result;
}

uint64_t _copy_aks_client_connection(char *path, const char *a2)
{
  connect = 0;
  v3 = *MEMORY[0x1E696CD68];
  v4 = IORegistryEntryFromPath(*MEMORY[0x1E696CD68], path);
  v5 = MEMORY[0x1E69E9A60];
  if (!v4 || (v6 = v4, v7 = IOServiceOpen(v4, *MEMORY[0x1E69E9A60], 0, &connect), IOObjectRelease(v6), v7))
  {
    v8 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(v3, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      IOServiceOpen(MatchingService, *v5, 0, &connect);
      IOObjectRelease(v10);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t der_get_sizeof(uint64_t a1)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t der_get_number()
{
  OUTLINED_FUNCTION_30();
  if (!ccder_blob_decode_tl())
  {
    return 0;
  }

  v0 = v5;
  if ((v5 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v1 = v4;
  result = *v4 >> 7;
  do
  {
    v3 = *v1++;
    result = v3 | (result << 8);
    --v0;
  }

  while (v0);
  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  OUTLINED_FUNCTION_19(a1);
  OUTLINED_FUNCTION_4_1();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    OUTLINED_FUNCTION_22(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return OUTLINED_FUNCTION_6_1(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return OUTLINED_FUNCTION_6_1(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_4_3()
{
  v3 = *v1;
  v4 = *v0;
  v5 = v0[2];

  return encode_list_add_der();
}

uint64_t OUTLINED_FUNCTION_22_1(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t OUTLINED_FUNCTION_19_0(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

void OUTLINED_FUNCTION_19_1(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 40) = v3;
  *(v2 + 16) = a1 + a2;
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return generate_unwrap_shared_key_curve25519(v0, v1 + 8, (v1 + 40));
}

uint64_t OUTLINED_FUNCTION_6_3(void *a1)
{

  return memset_s(a1, 8uLL, 0, 8uLL);
}

uint64_t aks_get_lock_state()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_91();
      OUTLINED_FUNCTION_25_3();
      OUTLINED_FUNCTION_19_2();
      v10 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v25, v27);
      v0 = v10;
      if (!v10)
      {
        OUTLINED_FUNCTION_94(v10, v11, v12, v13, v14, v15, v16, v17, v26, v28, v29, v30, v31);
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v21, v22, v23, v24, v25, v27, v29, v30, v31, v32, 2u);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v0;
}

void aksNotificationCB(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v5 = 0;
LABEL_14:
      v16[0] = 67109376;
      v16[1] = v11;
      v17 = 1024;
      v18 = v5;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "invalid context %d %d";
      v14 = 14;
LABEL_15:
      _os_log_impl(&dword_1E0B50000, v12, OS_LOG_TYPE_DEFAULT, v13, v16, v14);
    }

LABEL_16:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = *(a1 + 20);
  if (v5 != 1902207865)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 1;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    LOWORD(v16[0]) = 0;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "OOM";
    v14 = 2;
    goto LABEL_15;
  }

  v9 = Mutable;
  if (a3 == -469774317)
  {
    cf_set_dict_value(Mutable, @"h", *a4, 1);
    cf_set_dict_value(v9, @"cfc", *(a4 + 4), 1);
LABEL_6:
    (*(*(a1 + 8) + 16))();
    goto LABEL_7;
  }

  cf_set_dict_value(Mutable, @"h", a4, 1);
  if (a3 > -469774321)
  {
    if (a3 == -469774320 || a3 == -469774319 || a3 == -469774318)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (a3 == -469774324)
    {
      goto LABEL_6;
    }

    if (a3 == -469774323 || a3 == -469774321)
    {
      cf_set_lock_state(a4, v9);
      goto LABEL_6;
    }
  }

LABEL_7:
  v10 = *MEMORY[0x1E69E9840];

  CFRelease(v9);
}

uint64_t cf_set_dict_value(CFMutableDictionaryRef theDict, void *key, uint64_t a3, int a4)
{
  v4 = 3758097084;
  if (!theDict || !key)
  {
    return v4;
  }

  switch(a4)
  {
    case 2:
      *byte7 = *(a3 + 7);
      v8 = CFUUIDCreateWithBytes(*MEMORY[0x1E695E480], *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), byte7[0], byte7[1], byte7[2], byte7[3], byte7[4], byte7[5], byte7[6], byte7[7], *(a3 + 15));
      if (!v8)
      {
        return v4;
      }

LABEL_12:
      v9 = v8;
      CFDictionarySetValue(theDict, key, v8);
      CFRelease(v9);
      return 0;
    case 1:
      valuePtr = a3;
      v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongLongType, &valuePtr);
      if (!v8)
      {
        return v4;
      }

      goto LABEL_12;
    case 0:
      v7 = MEMORY[0x1E695E4D0];
      if (!a3)
      {
        v7 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(theDict, key, *v7);
      return 0;
  }

  return v4;
}

void *AKSEventsRegister(NSObject *a1, const void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  notification = 0;
  if (!a1 || !a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "bad arguments";
LABEL_12:
      v18 = 2;
LABEL_15:
      _os_log_impl(&dword_1E0B50000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, v18);
    }

LABEL_16:
    v11 = 0;
    v9 = 0;
    goto LABEL_17;
  }

  v4 = *MEMORY[0x1E696CD60];
  v5 = IOServiceMatching("AppleKeyStore");
  MatchingService = IOServiceGetMatchingService(v4, v5);
  if (!MatchingService)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "AppleKeyStore";
      v16 = MEMORY[0x1E69E9C10];
      v17 = "failed to find %s service";
      v18 = 12;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v7 = MatchingService;
  v8 = IONotificationPortCreate(v4);
  if (!v8)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "failed to create notification port for AKS";
    goto LABEL_12;
  }

  v9 = v8;
  v10 = calloc(1uLL, 0x20uLL);
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to allocate memory for event callback", buf, 2u);
    }

    v11 = 0;
    goto LABEL_17;
  }

  v11 = v10;
  *v10 = v9;
  v12 = _Block_copy(a2);
  v11[1] = v12;
  if (v12)
  {
    v13 = dispatch_queue_create_with_target_V2("aks events", 0, a1);
    v11[3] = v13;
    IONotificationPortSetDispatchQueue(v9, v13);
    if (!IOServiceAddInterestNotification(v9, v7, "IOGeneralInterest", aksNotificationCB, v11, &notification))
    {
      *(v11 + 4) = notification;
      *(v11 + 5) = 1902207865;
      goto LABEL_27;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "failed to add interest notification";
LABEL_35:
      _os_log_impl(&dword_1E0B50000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "failed to copy block";
    goto LABEL_35;
  }

LABEL_17:
  if (notification)
  {
    IOObjectRelease(notification);
  }

  if (v9)
  {
    IONotificationPortDestroy(v9);
  }

  if (v11)
  {
    v19 = v11[3];
    if (v19)
    {
      dispatch_release(v19);
    }

    v20 = v11[1];
    if (v20)
    {
      _Block_release(v20);
    }

    free(v11);
    v11 = 0;
  }

LABEL_27:
  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t aks_unwrap_key(const void *a1, uint64_t a2, int a3, int a4, uint64_t a5, int *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  if (get_aks_client_connection())
  {
    v6 = (v6 + 6);
    if (a1)
    {
      if (a5)
      {
        if (a6)
        {
          v28 = a4;
          v29 = a3;
          v27 = *a6;
          OUTLINED_FUNCTION_106();
          v6 = OUTLINED_FUNCTION_19_0(v12, 0xBu, &v28, 2u, a1, v13, v14, v15, v23, v24);
          if (!v6)
          {
            *a6 = v27;
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, 2u);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

void AKSEventsUnregister(uint64_t a1)
{
  if (a1)
  {
    IOObjectRelease(*(a1 + 16));
    IONotificationPortDestroy(*a1);
    v2 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __AKSEventsUnregister_block_invoke;
    block[3] = &__block_descriptor_tmp_2;
    block[4] = a1;
    dispatch_barrier_async(v2, block);
  }
}

void __AKSEventsUnregister_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 20) = 0;
  _Block_release(*(v2 + 8));
  dispatch_release(*(*(a1 + 32) + 24));
  v3 = *(a1 + 32);

  free(v3);
}

uint64_t _aks_operation(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v44 = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v12 = 3758097090;
    if (v9)
    {
      v13 = aks_client_connection;
      if (der_get_sizeof(v9) == v7)
      {
        bzero(__src, 0x8000uLL);
        __count = 0x8000;
        input = v10;
        v12 = IOConnectCallMethod(v13, 0x2Bu, &input, 1u, v9, v7, 0, 0, __src, &__count);
        if (!v12 && v5 && v3)
        {
          v14 = calloc(__count, 1uLL);
          *v5 = v14;
          if (v14)
          {
            memcpy(v14, __src, __count);
            v12 = 0;
            *v3 = __count;
          }

          else
          {
            v12 = 3758097085;
          }
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      buf = 136317954;
      v21 = "aks.fw";
      v22 = 2080;
      v23 = "";
      v24 = 1024;
      v25 = -1;
      v26 = 2080;
      v27 = "";
      v28 = 2080;
      v29 = "";
      v30 = 2080;
      v31 = "";
      v32 = 2080;
      v33 = "";
      v34 = 2080;
      v35 = "_aks_operation";
      v36 = 2080;
      v37 = ":";
      v38 = 1024;
      v39 = 457;
      v40 = 2080;
      v41 = "";
      v42 = 2080;
      v43 = "";
      _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &buf, 0x72u);
    }

    v12 = 3758097084;
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t encode_list_free(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return memset_s(v0, 8uLL, 0, 8uLL);
}

uint64_t OUTLINED_FUNCTION_1_5@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return v1;
  }
}

uint64_t aks_params_free(void ***a1)
{
  result = 3758097090;
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      *a1 = 0;
      encode_list_free(v3);
      OUTLINED_FUNCTION_6_3(v3);
      free(v3);
      return 0;
    }
  }

  return result;
}

void aks_get_configuration()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v4 = v1;
  v88 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v3)
    {
      v6 = aks_client_connection;
      bzero(v86, 0x8000uLL);
      v83[0] = 0x8000;
      v85 = v4;
      if (!OUTLINED_FUNCTION_18_3(v6, 0x1Fu, &v85, v7, v8, v9, v10, v11, v86, v83))
      {
        if (v83[0] > 0x8000)
        {
          OUTLINED_FUNCTION_45();
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          bzero(v84, 0x250uLL);
          v83[1] = der_key_config_graceperiod;
          v84[4] = der_key_config_backoff_delay;
          v84[9] = der_key_config_max_unlock_attempts;
          v84[14] = der_key_config_escrow_passcode_period;
          v84[19] = der_key_config_escrow_token_period;
          v84[24] = der_key_config_flags;
          v84[29] = der_key_config_user_uuid;
          v84[34] = der_key_config_group_uuid;
          v84[39] = der_key_config_recovery_iterations;
          v84[44] = der_key_config_recovery_params;
          v84[49] = der_key_config_recovery_target_iterations;
          v84[54] = der_key_memento_supported;
          v84[59] = der_key_memento_blob_exists;
          v84[64] = der_key_config_memento_passcode_generation;
          v84[69] = der_key_config_passcode_generation;
          OUTLINED_FUNCTION_13_3();
          der_dict_iterate();
          v13 = v84[0];
          v14 = v84[5];
          v15 = v84[10];
          v16 = v84[15];
          v82 = v3;
          v17 = v84[20];
          v18 = v84[25];
          v19 = v84[30];
          v74 = v84[35];
          v75 = v84[40];
          v76 = v84[45];
          v77 = v84[50];
          v78 = v84[55];
          v79 = v84[60];
          v80 = v84[65];
          v81 = v84[70];
          CFNumberGetTypeID();
          v20 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v20, v21, v22, v13);
          CFNumberGetTypeID();
          v23 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v23, v24, v25, v14);
          CFNumberGetTypeID();
          v26 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v26, v27, v28, v15);
          CFNumberGetTypeID();
          v29 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v29, @"EscrowPasscodePeriod", v30, v16);
          CFNumberGetTypeID();
          v31 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v31, @"EscrowTokenPeriod", v32, v17);
          CFNumberGetTypeID();
          v33 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v33, v34, v35, v18);
          CFDataGetTypeID();
          v36 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v36, v37, v38, v19);
          CFDataGetTypeID();
          v39 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v39, v40, v41, v74);
          CFNumberGetTypeID();
          v42 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v42, v43, v44, v75);
          CFNumberGetTypeID();
          v45 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v45, v46, v47, v76);
          CFNumberGetTypeID();
          v48 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v48, v49, v50, v77);
          CFBooleanGetTypeID();
          v51 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v51, v52, v53, v78);
          CFBooleanGetTypeID();
          v54 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v54, v55, v56, v79);
          CFNumberGetTypeID();
          v57 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v57, v58, v59, v80);
          CFNumberGetTypeID();
          v60 = OUTLINED_FUNCTION_43_0();
          _set_cf_key(v60, v61, v62, v81);
          number = der_get_number();
          v64 = *MEMORY[0x1E695E4C0];
          v65 = *MEMORY[0x1E695E4D0];
          if ((number & 2) != 0)
          {
            v66 = *MEMORY[0x1E695E4D0];
          }

          else
          {
            v66 = *MEMORY[0x1E695E4C0];
          }

          CFDictionarySetValue(Mutable, @"InactivityRebootEnabled", v66);
          if ((number & 8) != 0)
          {
            v67 = v65;
          }

          else
          {
            v67 = v64;
          }

          CFDictionarySetValue(Mutable, @"OnenessAutomaticMode", v67);
          *v82 = Mutable;
        }
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v87[0] = 136317954;
    OUTLINED_FUNCTION_37_0(v87);
    OUTLINED_FUNCTION_5_6(v69);
    OUTLINED_FUNCTION_79(v70);
    OUTLINED_FUNCTION_76(v71);
    OUTLINED_FUNCTION_15_3(v72);
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v73, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v87);
  }

  v68 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

uint64_t OUTLINED_FUNCTION_14()
{

  return ccder_blob_encode_tl();
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  v2 = *v0;
  v3 = v0[2];

  return encode_list_add_der();
}

void OUTLINED_FUNCTION_14_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x72u);
}

uint64_t OUTLINED_FUNCTION_13()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t OUTLINED_FUNCTION_13_1(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void OUTLINED_FUNCTION_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 16);
  *a10 = a11;
  *v13 = a12;
}

uint64_t aks_ref_key_create_with_blob()
{
  OUTLINED_FUNCTION_7_2();
  if (v2)
  {
    v5 = v3;
    if (v3)
    {
      v6 = v4;
      v7 = v2;
      v8 = v1;
      if (der_get_sizeof(v2) == v3)
      {
        OUTLINED_FUNCTION_45();
        v9 = OUTLINED_FUNCTION_59();
        v12 = v9;
        if (v9)
        {
          v10 = v9;
          OUTLINED_FUNCTION_29_0(v9);
          *(v10 + 40) = v8;
          if (_set_blob(v10, v7, v5))
          {
            aks_ref_key_free(&v12);
          }

          else
          {
            v0 = 0;
            *v6 = v10;
          }
        }
      }
    }
  }

  return v0;
}

void OUTLINED_FUNCTION_7()
{
  *v2 = -536870212;
  *v1 = v4;
  *v0 = v3;
  v6 = *(v5 - 56);
}

uint64_t OUTLINED_FUNCTION_7_0()
{
  v3 = v1 + *(v0 + 1) - v0;

  return ccder_blob_encode_body();
}

uint64_t OUTLINED_FUNCTION_7_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char __s)
{

  return memset_s(&__s, 0x1000uLL, 0, 0x1000uLL);
}

void *OUTLINED_FUNCTION_59()
{

  return calloc(0x50uLL, 1uLL);
}

void *OUTLINED_FUNCTION_28()
{

  return calloc(0x18uLL, 1uLL);
}

void *OUTLINED_FUNCTION_28_0()
{

  return calloc(8uLL, 1uLL);
}

void *aks_params_create(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_28_0();
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    if (a1)
    {
      if (encode_list_merge_dict(v2))
      {
        OUTLINED_FUNCTION_6_3(v3);
        free(v3);
        return 0;
      }
    }
  }

  return v3;
}

void *OUTLINED_FUNCTION_29(size_t a1)
{

  return calloc(a1, 1uLL);
}

uint64_t OUTLINED_FUNCTION_29_0(void *a1)
{

  return memset_s(a1, 0x50uLL, 0, 0x50uLL);
}

void OUTLINED_FUNCTION_29_1(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - a2, a2);
}

uint64_t _set_blob(uint64_t a1, const void *a2, size_t a3)
{
  OUTLINED_FUNCTION_16_1();
  if (!der_dict_find_value(v6, v7, v8))
  {
    return 3758097090;
  }

  if (*a1)
  {
    OUTLINED_FUNCTION_22_1(*a1, *(a1 + 8));
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  v9 = calloc(a3, 1uLL);
  *a1 = v9;
  *(a1 + 8) = a3;
  if (!v9)
  {
    return 3758604298;
  }

  memcpy(v9, a2, a3);
  *(a1 + 16) = *a1 + *(a1 + 8);
  OUTLINED_FUNCTION_16_1();
  if (der_dict_find_value(v10, v11, v12))
  {
    *(a1 + 32) = 0;
  }

  v13 = *a1;
  v14 = *(a1 + 16);
  OUTLINED_FUNCTION_16_1();
  if ((der_dict_find_value(v15, v16, v17) & 1) != 0 || (v18 = *a1, v19 = *(a1 + 16), OUTLINED_FUNCTION_16_1(), result = der_dict_find_value(v20, v21, v22), result))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t der_dict_find_value(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    OUTLINED_FUNCTION_11();
    der_dict_iterate();
    if (a2)
    {
      if (a3)
      {
        *a2 = 0;
        *a3 = 0;
      }
    }
  }

  return 0;
}

void aks_params_set_data()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_7_2();
  der_key = _params_get_der_key(v6, 2);
  if (der_key && !encode_list_remove_key(v5, der_key) && v1)
  {
    if (v3 == 1 || v3 == 2)
    {
      ccder_blob_decode_tag();
    }

    else
    {
      OUTLINED_FUNCTION_54();
      encode_list_add_data();
    }
  }

  OUTLINED_FUNCTION_44();
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return ccder_blob_decode_range();
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);

  return encode_list_dict(v2, va, va1);
}

void *_params_get_der_key(int a1, int a2)
{
  switch(a1)
  {
    case 1:
      v2 = &der_key_access_groups;
      goto LABEL_29;
    case 2:
      v2 = &der_key_external_data;
      goto LABEL_29;
    case 3:
      v2 = &der_key_acm_handle;
      goto LABEL_29;
    case 4:
      v2 = &der_key_salt;
      goto LABEL_29;
    case 5:
      v2 = &der_key_data;
      goto LABEL_29;
    case 6:
      v2 = &der_key_ecdh_seed;
      goto LABEL_29;
    case 7:
      v2 = &der_key_ecdh_iv;
      goto LABEL_29;
    case 8:
      v3 = &der_key_raw_output;
      goto LABEL_27;
    case 9:
      v3 = &der_key_options;
      goto LABEL_27;
    case 10:
      v2 = &der_key_shared_info;
      goto LABEL_29;
    case 11:
      v2 = &der_key_shared_info2;
      goto LABEL_29;
    case 12:
      v2 = &der_key_transcode_shared_info;
      goto LABEL_29;
    case 13:
      v2 = &der_key_transcode_shared_info2;
      goto LABEL_29;
    case 14:
      v2 = &der_key_transcode_ecdh_seed;
      goto LABEL_29;
    case 15:
      v2 = &der_key_persona_uuid;
      goto LABEL_29;
    case 16:
      v3 = &der_key_sub_key_type;
      goto LABEL_27;
    case 17:
      v2 = &der_key_system_key_client_seed;
      goto LABEL_29;
    case 18:
      v3 = &der_key_system_key_options;
      goto LABEL_27;
    case 19:
      v4 = der_key_system_key_no_img4;
      v5 = a2 == 3;
      goto LABEL_30;
    case 20:
      v3 = &der_key_remote_session_signing_key_type;
      goto LABEL_27;
    case 21:
      v2 = &der_key_remote_session_signing_key_certificate;
      goto LABEL_29;
    case 22:
      v3 = &der_key_gid_ref_key_options;
      goto LABEL_27;
    case 23:
      v3 = &der_key_pka_flags;
      goto LABEL_27;
    case 24:
      v2 = &der_key_volume_uuid;
      goto LABEL_29;
    case 25:
      v2 = &der_key_seed;
LABEL_29:
      v4 = *v2;
      v5 = a2 == 2;
      goto LABEL_30;
    case 26:
      v3 = &der_key_test_flags;
LABEL_27:
      v4 = *v3;
      v5 = a2 == 1;
LABEL_30:
      if (v5)
      {
        result = v4;
      }

      else
      {
        result = 0;
      }

      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t encode_list_remove_key(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  result = _encode_list_find_key(a1, a2);
  if (result)
  {
    v4 = result;
    for (i = *v2; i != result; i = *i)
    {
      v2 = i;
    }

    *v2 = *i;
    v6 = *(result + 8);
    if (v6)
    {
      memset_s(v6, *(v4 + 16), 0, *(v4 + 16));
      free(*(v4 + 8));
    }

    memset_s(v4, 0x18uLL, 0, 0x18uLL);
    free(v4);
    return 0;
  }

  return result;
}

BOOL _dict_find_value_cb(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = der_equal(*a5, *a5 + *(*a5 + 1) + 2, a1);
  if (v8)
  {
    *(a5 + 24) = 1;
    *(a5 + 8) = a3;
    *(a5 + 16) = a3 + a4;
  }

  return !v8;
}

void _set_cf_key(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (CFNumberGetTypeID() == a3)
    {
      valuePtr = der_get_number();
      v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      if (!v7)
      {
        return;
      }

      v8 = v7;
      CFDictionaryAddValue(a1, a2, v7);
      goto LABEL_5;
    }

    if (CFBooleanGetTypeID() == a3)
    {
      v9 = der_get_BOOL();
      v10 = MEMORY[0x1E695E4D0];
      if (!v9)
      {
        v10 = MEMORY[0x1E695E4C0];
      }

      v11 = *v10;

      CFDictionaryAddValue(a1, a2, v11);
    }

    else if (CFDataGetTypeID() == a3)
    {
      valuePtr = 0;
      v12 = ccder_decode_tl();
      if (v12)
      {
        v8 = CFDataCreate(*MEMORY[0x1E695E480], v12, valuePtr);
        CFDictionaryAddValue(a1, a2, v8);
        if (v8)
        {
LABEL_5:
          CFRelease(v8);
        }
      }
    }
  }
}

void *_encode_list_find_key(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = a2 + 2;
    do
    {
      v6 = v2[1];
      if (ccder_blob_decode_sequence_tl() && der_equal(a2, &v4[a2[1]], v6))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t aks_ref_key_get_external_data(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  *a2 = der_get_sizeof(*(a1 + 24));
  return *(a1 + 24);
}

uint64_t aks_ref_key_get_raw_key_class(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v1 = *(a1 + 16);
  result = der_dict_find_value(der_key_keybag_class, &v3, &v4);
  if (result)
  {
    return der_get_number();
  }

  return result;
}

uint64_t encode_list_add_data()
{
  result = OUTLINED_FUNCTION_33();
  if (v0 && v3 && v4)
  {
    v5 = *(v3 + 1);
    ccder_sizeof();
    v6 = OUTLINED_FUNCTION_27();
    if (OUTLINED_FUNCTION_29(v6))
    {
      OUTLINED_FUNCTION_15();
      v7 = ccder_blob_encode_body();
      if (v7 && (OUTLINED_FUNCTION_24(v7, v8, v9, v10, v11, v12, v13, v14, v17), ccder_blob_encode_tl()) && (OUTLINED_FUNCTION_7_0(), OUTLINED_FUNCTION_5_1(), OUTLINED_FUNCTION_14(), OUTLINED_FUNCTION_5_1(), v15 == v1) && (v16 = OUTLINED_FUNCTION_28()) != 0)
      {
        return OUTLINED_FUNCTION_3_1(v16);
      }

      else
      {
        OUTLINED_FUNCTION_13();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_0()
{
  v2 = *v0;
  v3 = v0[2];

  return encode_list_add_der();
}

uint64_t aks_ref_key_get_type(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v1 = *(a1 + 16);
  result = der_dict_find_value(der_key_type, &v3, &v4);
  if (result)
  {
    return der_get_number();
  }

  return result;
}

uint64_t aks_ref_key_free(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 3758097090;
  }

  *a1 = 0;
  if (*v1)
  {
    OUTLINED_FUNCTION_22_1(*v1, *(v1 + 8));
    free(*v1);
  }

  v2 = *(v1 + 48);
  if (v2)
  {
    OUTLINED_FUNCTION_22_1(v2, *(v1 + 56));
    free(*(v1 + 48));
  }

  v3 = *(v1 + 64);
  if (v3)
  {
    OUTLINED_FUNCTION_22_1(v3, *(v1 + 72));
    free(*(v1 + 64));
  }

  OUTLINED_FUNCTION_29_0(v1);
  free(v1);
  return 0;
}

uint64_t OUTLINED_FUNCTION_54_0(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, a5, a6, 0, 0, a9, a10);
}

uint64_t aks_ref_key_get_public_key(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v21 = 0;
  if (a1[4])
  {
    v19 = 0;
    v20 = 0;
    v4 = a1[2];
    if (der_dict_find_value(der_key_public_key, &v19, &v20))
    {
      v18[0] = v19;
      v18[1] = v19 + v20;
      der_utils_decode_implicit_raw_octet_string(v18, 4, &v22, &v21);
    }

    type = aks_ref_key_get_type(a1);
    if ((type - 7) < 2)
    {
      v6 = MEMORY[0x1E12E84C0]();
    }

    else
    {
      if ((type - 4) > 1)
      {
LABEL_17:
        *a2 = v22;
        result = v21;
        goto LABEL_18;
      }

      v6 = MEMORY[0x1E12E84B0]();
    }

    v8 = v6;
    if (v6)
    {
      v9 = firebloom_cp_prime_bitlen(v6);
      if (v22 == (v9 + 7) >> 3)
      {
        if (v21 && !a1[8])
        {
          v10 = 24 * *v8 + 31;
          MEMORY[0x1EEE9AC00](v9);
          bzero(&v18[-1] - v11, v11);
          ccec_compact_import_pub();
          v12 = (2 * firebloom_cp_prime_size()) | 1;
          v13 = calloc(v12, 1uLL);
          a1[8] = v13;
          a1[9] = v12;
          if (v13)
          {
            ccec_export_pub();
          }

          v14 = *v8;
          cc_clear();
        }

        v15 = a1[9];
        v21 = a1[8];
        v22 = v15;
      }
    }

    goto LABEL_17;
  }

  result = 0;
LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OUTLINED_FUNCTION_27()
{

  return ccder_sizeof();
}

void OUTLINED_FUNCTION_15_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x72u);
}

uint64_t OUTLINED_FUNCTION_15_2()
{
  *(v1 - 64) = 0;
  *(v1 - 56) = 0;
  v4 = *(v0 + 16);

  return ccder_blob_decode_range();
}

void OUTLINED_FUNCTION_15_3(uint64_t a1@<X8>)
{
  *(a1 + 90) = v3;
  *(a1 + 94) = v1;
  *(a1 + 96) = v2;
  *(a1 + 104) = v1;
  *(a1 + 106) = v2;
}

__n128 der_utils_decode_implicit_raw_octet_string(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  OUTLINED_FUNCTION_19(a1);
  if (OUTLINED_FUNCTION_34())
  {
    *a4 = v8;
    *a3 = v9 - v8;
    result = v10;
    *v4 = v10;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34()
{

  return ccder_blob_decode_range();
}

uint64_t OUTLINED_FUNCTION_5_2(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return _get_merged_params();
}

void OUTLINED_FUNCTION_5_6(uint64_t a1@<X8>)
{
  *(a1 + 14) = v2;
  *(a1 + 22) = 1024;
  *(a1 + 24) = -1;
  *(a1 + 28) = v1;
  *(a1 + 30) = v2;
  *(a1 + 38) = v1;
  *(a1 + 40) = v2;
  *(a1 + 48) = v1;
  *(a1 + 50) = v2;
  *(a1 + 58) = v1;
  *(a1 + 60) = v2;
  *(a1 + 68) = v1;
}

uint64_t OUTLINED_FUNCTION_3_1(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

void OUTLINED_FUNCTION_3_4()
{
  *(v1 + 14) = v0;
  *(v1 + 30) = v0;
  *(v1 + 50) = v0;
  *(v1 + 60) = v0;
}

uint64_t encode_list_add_der()
{
  result = OUTLINED_FUNCTION_33();
  if (v0)
  {
    v6 = v3;
    if (v3)
    {
      if (v4 && v5)
      {
        if (der_get_sizeof(v4) <= (v5 - v4))
        {
          v7 = *(v6 + 1);
          v8 = ccder_sizeof();
          if (!OUTLINED_FUNCTION_29(v8))
          {
            return 4294967279;
          }

          OUTLINED_FUNCTION_15();
          if (ccder_blob_encode_body())
          {
            OUTLINED_FUNCTION_7_0();
            OUTLINED_FUNCTION_5_1();
            OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_5_1();
            if (v9 == v1)
            {
              v10 = OUTLINED_FUNCTION_28();
              if (v10)
              {
                return OUTLINED_FUNCTION_3_1(v10);
              }
            }
          }

          OUTLINED_FUNCTION_13();
          free(v1);
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t encode_list_dict(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15 = *(v14 + 1);
                v15 += 16;
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, _qsort_compare);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v27 = v17;
              v28 = &v17[v16];
              v19 = v8 - 1;
              v20 = &v13[-v9 - 8];
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v24 = *(v20 - 1);
                v23 = *v20;
                v25 = ccder_blob_encode_body();
                v20 = v22;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v27 != v28)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t _qsort_compare(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *a1 + *(a1 + 8);
  __s2 = *a2;
  v5 = *a2 + *(a2 + 8);
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v6 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v6, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

uint64_t _get_merged_params()
{
  OUTLINED_FUNCTION_45();
  if (v1)
  {
    v4 = v3;
    v5 = v2;
    if (!*(v1 + 48) || (v6 = *(v1 + 56), !encode_list_merge_dict(v2)))
    {
      if (!v4 || !encode_list_merge_dict(v5))
      {
        encode_list_remove_key(v5, der_key_external_data);
        return 0;
      }
    }
  }

  return v0;
}

uint64_t encode_list_merge_dict(uint64_t a1)
{
  if (a1)
  {
    return der_dict_iterate() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t _merge_dict_cb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((ccder_blob_decode_tl() & 1) == 0)
  {
    _merge_dict_cb_cold_1();
LABEL_7:
    _merge_dict_cb_cold_2(&v8);
    result = v8;
    goto LABEL_5;
  }

  v10 = 0;
  v11 = 0;
  v9[0] = 12;
  v9[1] = 0;
  __memcpy_chk();
  if (encode_list_remove_key(a5, v9) || encode_list_add_der())
  {
    goto LABEL_7;
  }

  result = 1;
LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OUTLINED_FUNCTION_40()
{
  v3 = *v1;

  return encode_list_remove_key(v0, v3);
}

void OUTLINED_FUNCTION_40_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x72u);
}

uint64_t OUTLINED_FUNCTION_10_1()
{
  v2 = *(v0 + 40);

  return _aks_operation(v2);
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return ccder_blob_decode_range();
}

BOOL der_get_BOOL()
{
  OUTLINED_FUNCTION_30();
  v0 = ccder_blob_decode_tl();
  result = 0;
  if (v0)
  {
    if (v3 == 1)
    {
      return *v2 != 0;
    }
  }

  return result;
}

uint64_t aks_unlock_device(int a1, uint64_t a2, int a3)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unlock_device_cold_1();
    result = v6;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_unlock_device_with_opts(int a1, int a2, uint64_t a3, int a4)
{
  if (a1)
  {
    return aks_unlock_device_with_acm(a2, a3, a4);
  }

  else
  {
    return aks_unlock_device(a2, a3, a4);
  }
}

uint64_t aks_assert_hold(int a1, unsigned int a2, uint64_t a3)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  input[2] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x1Au, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_hold_cold_1();
    result = v6;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cf_set_lock_state(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __cf_set_lock_state_block_invoke;
  v3[3] = &__block_descriptor_tmp;
  v3[4] = a2;
  return process_lock_state_for_handle(a1, v3);
}

uint64_t process_lock_state_for_handle(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v53 = 0u;
  v54 = 0u;
  result = aks_get_extended_device_state(a1);
  if (!result)
  {
    v4 = *(a2 + 16);
    v5 = OUTLINED_FUNCTION_1_0();
    result = v6(v5);
    if (!result)
    {
      v7 = *(a2 + 16);
      v8 = OUTLINED_FUNCTION_1_0();
      result = v9(v8);
      if (!result)
      {
        v10 = *(a2 + 16);
        v11 = OUTLINED_FUNCTION_1_0();
        result = v12(v11);
        if (!result)
        {
          v13 = *(a2 + 16);
          v14 = OUTLINED_FUNCTION_1_0();
          result = v15(v14);
          if (!result)
          {
            v16 = BYTE2(v55[0]);
            if (BYTE2(v55[0]))
            {
              v17 = *(a2 + 16);
              v18 = OUTLINED_FUNCTION_0_0();
              result = v19(v18);
              if (result)
              {
                goto LABEL_31;
              }

              v16 = BYTE2(v55[0]);
            }

            if ((v16 & 2) != 0)
            {
              v20 = *(a2 + 16);
              v21 = OUTLINED_FUNCTION_0_0();
              result = v22(v21);
              if (result)
              {
                goto LABEL_31;
              }

              v16 = BYTE2(v55[0]);
            }

            if ((v16 & 0x10) == 0 || (v23 = *(a2 + 16), v24 = OUTLINED_FUNCTION_0_0(), result = v25(v24), !result))
            {
              if ((v53 & 8) == 0 || (v26 = *(a2 + 16), v27 = OUTLINED_FUNCTION_0_0(), result = v28(v27), !result))
              {
                v29 = *(a2 + 16);
                v30 = OUTLINED_FUNCTION_1_0();
                result = v31(v30);
                if (!result)
                {
                  v32 = *(a2 + 16);
                  v33 = OUTLINED_FUNCTION_1_0();
                  result = v34(v33);
                  if (!result)
                  {
                    v35 = *(a2 + 16);
                    v36 = OUTLINED_FUNCTION_1_0();
                    result = v37(v36);
                    if (!result)
                    {
                      v38 = *(a2 + 16);
                      v39 = OUTLINED_FUNCTION_1_0();
                      result = v40(v39);
                      if (!result)
                      {
                        if (v54 < *(v55 + 14))
                        {
                          goto LABEL_29;
                        }

                        v41 = *(a2 + 16);
                        v42 = OUTLINED_FUNCTION_0_0();
                        result = v43(v42);
                        if (!result)
                        {
                          if ((byte_1ECE79822 & 1) == 0)
                          {
                            multiuser_flags = 0;
                            v44 = MEMORY[0x1E12E8810]();
                            if (!host_get_multiuser_config_flags(v44, &multiuser_flags))
                            {
                              if ((multiuser_flags & 0x80000000) != 0)
                              {
                                _MergedGlobals = 1;
                              }

                              byte_1ECE79822 = 1;
                            }
                          }

                          if (_MergedGlobals != 1 || (v45 = *(a2 + 16), v46 = OUTLINED_FUNCTION_0_0(), result = v47(v46), !result))
                          {
LABEL_29:
                            uid_from_handle(*(v55 + 10));
                            v48 = *(a2 + 16);
                            v49 = OUTLINED_FUNCTION_1_0();
                            result = v50(v49);
                            if (!result)
                            {
                              result = (*(a2 + 16))(a2, @"user_uuid", &v55[1] + 2, 2);
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

LABEL_31:
  v51 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t uid_from_handle(int a1)
{
  if (a1 < -9 || a1 == 0)
  {
    return -a1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aks_validate_local_key()
{
  v11 = 0;
  v12 = 0;
  OUTLINED_FUNCTION_25_0();
  __n = 0;
  v10 = 0;
  v3 = (v0 + 6);
  v8 = 0;
  if (v1 && v2)
  {
    *&v13 = v1;
    *(&v13 + 1) = v1 + v2;
    v10 = 0;
    OUTLINED_FUNCTION_17();
    if (ccder_blob_decode_range())
    {
      der_utils_decode_implicit_uint64(&v13, 0x8000000000000001, &v10);
      if (v10)
      {
        OUTLINED_FUNCTION_47_0();
        remote_session_operate();
        v3 = v6;
        if (v6)
        {
          syslog(3, "error: validating v1 local signing key failed: %d");
        }
      }

      else
      {
        signing_key = aks_create_signing_key();
        if (!signing_key)
        {
          v5 = v12;
          goto LABEL_10;
        }

        v3 = signing_key;
        syslog(3, "error: validating (create) v0 local signing key failed: %d", signing_key);
      }
    }

    else
    {
      syslog(3, "error parsing signing key: %d", v0 + 14);
      v3 = 3758097084;
    }
  }

  v5 = v12;
  v0 = v3;
LABEL_10:
  if (v5)
  {
    OUTLINED_FUNCTION_22_1(v5, __n);
    free(v12);
  }

  if (v11)
  {
    OUTLINED_FUNCTION_22_1(v11, v8);
    free(v11);
  }

  return v0;
}

uint64_t der_utils_decode_implicit_uint64(__int128 *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v5 = *a1;
  result = OUTLINED_FUNCTION_34();
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v7;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t aks_create_signing_key()
{
  v25 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_110();
  result = (v0 + 6);
  if (v1)
  {
    v4 = v2;
    if (v2)
    {
      v5 = v1;
      bzero(__src, 0x100uLL);
      if (get_aks_client_connection())
      {
        OUTLINED_FUNCTION_106();
        result = OUTLINED_FUNCTION_5_2(v6, 0x31u, v23, 2u, v7, v8, v9, v10, v19, v20);
        if (!result)
        {
          if (__count > 0x100)
          {
            result = 3758604298;
          }

          else
          {
            v11 = calloc(__count, 1uLL);
            *v5 = v11;
            if (v11)
            {
              memcpy(v11, __src, __count);
              result = OUTLINED_FUNCTION_100();
              *v4 = v12;
            }

            else
            {
              result = (v0 + 1);
            }
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_39_0();
          OUTLINED_FUNCTION_38_0();
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v15, v16, v17, v18, v19, v20, v21, __count, 2u);
        }

        result = OUTLINED_FUNCTION_51_0();
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void aks_sign_signing_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t *a21)
{
  OUTLINED_FUNCTION_14_0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v71 = *MEMORY[0x1E69E9840];
  bzero(__src, 0x100uLL);
  v67 = 0;
  __count = 256;
  HIDWORD(v65) = 0;
  v69[0] = v34;
  v69[1] = v32;
  v69[2] = v28;
  if (v22 && a21)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v43 = aks_client_connection;
      v44 = OUTLINED_FUNCTION_109(aks_client_connection, v36, v37, v38, v39, v40, v41, v42, v60, v61, v26, v24, v64, v65, 0);
      aks_pack_data(v44, v45, 2, v46, v47, v48, v49, v50, v30);
      if (v67)
      {
        if (!OUTLINED_FUNCTION_19_0(v43, 0x32u, v69, 3u, v67, v66, v51, v52, __src, &__count) && __count <= 0x100)
        {
          v53 = calloc(__count, 1uLL);
          *v22 = v53;
          if (v53)
          {
            memcpy(v53, __src, __count);
            *a21 = __count;
          }
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_8_3();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_23_3();
        OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v55, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, 0, __count, 2u);
      }

      OUTLINED_FUNCTION_108();
    }
  }

  free(v67);
  v54 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

char *aks_pack_data(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = aks_copy_packed_data(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

char *aks_copy_packed_data(_DWORD *a1, const void *a2, int a3)
{
  v3 = (a1 + 1);
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 += a3;
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      v3 += v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

void aks_remote_peer_get_state()
{
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v0);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v53 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  v15 = OUTLINED_FUNCTION_90(v7, v8, v9, v10, v11, v12, v13, v14, v28, v30, v32, v34, buf, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52[0]);
  bzero(v15, v16);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v2)
    {
      v18 = aks_client_connection;
      memset_s(v2, 0x68uLL, 0, 0x68uLL);
      OUTLINED_FUNCTION_105();
      if (!OUTLINED_FUNCTION_19_0(v18, 0x39u, v19, 1u, v6, v4, v20, v21, v29, v31))
      {
        decode_peer_state(v52, 4096, v2);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v24, v25, v26, v27, v29, v31, v33, 4096, 2u);
  }

  v22 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_112();
}

uint64_t OUTLINED_FUNCTION_57(int a1, void *__s, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, rsize_t __smax)
{

  return memset_s(__s, __smax, 0, __smax);
}

uint64_t aks_drain_backup_keys_info(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_75();
  v7 = v6;
  OUTLINED_FUNCTION_59_0(*MEMORY[0x1E69E9840]);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v14 = aks_client_connection;
    result = (v3 + 6);
    if (v2)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_119(result, v9, v10, v11, v12, v13);
        __count = v4;
        v29[0] = v7;
        v29[1] = 1;
        result = OUTLINED_FUNCTION_5_2(v14, 0x14u, v29, 2u, v16, v17, v18, v19, v5, &__count);
        if (!result)
        {
          if (__count)
          {
            if (__count % 0x7C)
            {
              result = 3758604298;
            }

            else
            {
              v20 = calloc(__count, 1uLL);
              *v2 = v20;
              if (v20)
              {
                memcpy(v20, __src, __count);
                result = OUTLINED_FUNCTION_100();
                *v1 = v21 / 0x7C;
              }

              else
              {
                result = (v3 + 1);
              }
            }
          }

          else
          {
            result = (v3 + 52);
          }
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v31[0] = 136317954;
      OUTLINED_FUNCTION_37_0(v31);
      OUTLINED_FUNCTION_5_6(v23);
      OUTLINED_FUNCTION_79(v24);
      OUTLINED_FUNCTION_76(v25);
      OUTLINED_FUNCTION_15_3(v26);
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v27, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v31);
    }

    result = OUTLINED_FUNCTION_51_0();
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_119(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  bzero(va, 0x8000uLL);
}

uint64_t sub_1E0B562A4()
{
  if (*v0)
  {
    return v0[1] - *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E0B562D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for der_key();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1E0BA8AE8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E0B563C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for der_key();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1E0BA8AE8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E0B56540(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E0BA8A28();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E0B565AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E0BA8A28();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E0B56624()
{
  *v0;
  sub_1E0BA8CD8();
}

void sub_1E0B566A0(uint64_t *a1@<X8>)
{
  v2 = 0x7470697263736564;
  if (*v1)
  {
    v2 = 0x65756C6156776172;
  }

  v3 = 0xEB000000006E6F69;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1E0B566E8()
{
  if (*v0)
  {
    result = 0x65756C6156776172;
  }

  else
  {
    result = 0x7470697263736564;
  }

  *v0;
  return result;
}

_DWORD *sub_1E0B56780@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_1E0B567E0(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1E0B56810@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1E0B5683C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

BOOL sub_1E0B569AC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1E0B569DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1E0B56A08@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1E0B56AC8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for AKSHandle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AKSHandle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AKSRefKeyOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AKSRefKeyOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t _s13AppleKeyStore7AKSUUIDVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

char *aks_apfs_container_disk_for_path(const char *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  bzero(&v44, 0x878uLL);
  v16 = 0;
  memset(buffer, 0, sizeof(buffer));
  entry = 0;
  if (statfs(a1, &v44))
  {
    aks_apfs_container_disk_for_path_cold_1();
    goto LABEL_26;
  }

  if (*v44.f_fstypename ^ 0x73667061 | v44.f_fstypename[4])
  {
    aks_apfs_container_disk_for_path_cold_2();
    goto LABEL_26;
  }

  v2 = &v44.f_mntfromname[6];
  if (v44.f_mntfromname[5] != 114)
  {
    v2 = &v44.f_mntfromname[5];
  }

  if (*v44.f_mntfromname ^ 0x7665642F | v44.f_mntfromname[4] ^ 0x2F)
  {
    f_mntfromname = v44.f_mntfromname;
  }

  else
  {
    f_mntfromname = v2;
  }

  v4 = *MEMORY[0x1E696CD68];
  v5 = IOBSDNameMatching(*MEMORY[0x1E696CD68], 0, f_mntfromname);
  MatchingService = IOServiceGetMatchingService(v4, v5);
  if (!MatchingService)
  {
    aks_apfs_container_disk_for_path_cold_9();
    goto LABEL_26;
  }

  v7 = MatchingService;
  if (IOObjectConformsTo(MatchingService, "AppleAPFSSnapshot"))
  {
    parent = 0;
    if (IORegistryEntryGetParentEntry(v7, "IOService", &parent))
    {
      aks_apfs_container_disk_for_path_cold_3();
      goto LABEL_25;
    }

    IOObjectRelease(v7);
    v7 = parent;
  }

  if (!IOObjectConformsTo(v7, "AppleAPFSVolume"))
  {
    aks_apfs_container_disk_for_path_cold_8();
    goto LABEL_33;
  }

  if (IORegistryEntryGetParentEntry(v7, "IOService", &entry))
  {
    aks_apfs_container_disk_for_path_cold_4();
    goto LABEL_33;
  }

  IOObjectRelease(v7);
  v8 = entry;
  entry = 0;
  if (IORegistryEntryGetParentEntry(v8, "IOService", &entry))
  {
    aks_apfs_container_disk_for_path_cold_5();
LABEL_33:
    v7 = parent;
    if (!parent)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  IOObjectRelease(v8);
  v7 = entry;
  entry = 0;
  CFProperty = IORegistryEntryCreateCFProperty(v7, @"BSD Name", *MEMORY[0x1E695E480], 0);
  if (CFProperty)
  {
    v10 = CFProperty;
    if (CFStringGetCString(CFProperty, buffer, 32, 0x8000100u))
    {
      v11 = asprintf(&v16, "%s%s", "/dev/", buffer);
      v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v11 <= 0)
      {
        aks_apfs_container_disk_for_path_cold_6(v12);
      }

      else if (v12)
      {
        parent = 136318210;
        v18 = "aks.fw";
        v19 = 2080;
        v20 = "";
        v21 = 1024;
        v22 = -1;
        v23 = 2080;
        v24 = "";
        v25 = 2080;
        v26 = "";
        v27 = 2080;
        v28 = "";
        v29 = 2080;
        v30 = "";
        v31 = 2080;
        v32 = "aks_apfs_container_disk_for_path";
        v33 = 2080;
        v34 = ":";
        v35 = 1024;
        v36 = 119;
        v37 = 2080;
        v38 = "";
        v39 = 2080;
        v40 = buffer;
        v41 = 2080;
        v42 = "";
        _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Container bsd name: %s%s\n", &parent, 0x7Cu);
      }
    }

    else
    {
      aks_apfs_container_disk_for_path_cold_7();
    }

    CFRelease(v10);
    if (!v7)
    {
      goto LABEL_26;
    }

LABEL_25:
    IOObjectRelease(v7);
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    parent = 136317954;
    v18 = "aks.fw";
    v19 = 2080;
    v20 = "";
    v21 = 1024;
    v22 = -1;
    v23 = 2080;
    v24 = "";
    v25 = 2080;
    v26 = "";
    v27 = 2080;
    v28 = "";
    v29 = 2080;
    v30 = "";
    v31 = 2080;
    v32 = "aks_apfs_container_disk_for_path";
    v33 = 2080;
    v34 = ":";
    v35 = 1024;
    v36 = 121;
    v37 = 2080;
    v38 = "";
    v39 = 2080;
    v40 = "";
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Could not get container bsd name%s\n", &parent, 0x72u);
  }

  if (v7)
  {
    goto LABEL_25;
  }

LABEL_26:
  result = v16;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_apfs_get_disk_portability(uint64_t a1, char *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  parent = 0;
  v4 = *MEMORY[0x1E696CD60];
  v5 = strncmp(a1, "/dev/", 5uLL);
  v6 = a1;
  if (!v5)
  {
    if (*(a1 + 5) == 114)
    {
      v6 = (a1 + 6);
    }

    else
    {
      v6 = (a1 + 5);
    }
  }

  v7 = IOBSDNameMatching(v4, 0, v6);
  MatchingService = IOServiceGetMatchingService(v4, v7);
  if (!MatchingService)
  {
    aks_apfs_get_disk_portability_cold_3(a1, &v25, buf);
    v13 = v25;
    v14 = *buf;
    goto LABEL_30;
  }

  v9 = MatchingService;
  if (!IOObjectConformsTo(MatchingService, "AppleAPFSVolume"))
  {
    v13 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136318210;
      *&buf[4] = "aks.fw";
      v27 = 2080;
      v28 = "";
      v29 = 1024;
      v30 = -1;
      v31 = 2080;
      v32 = "";
      v33 = 2080;
      v34 = "";
      v35 = 2080;
      v36 = "";
      v37 = 2080;
      v38 = "";
      v39 = 2080;
      v40 = "aks_apfs_get_disk_portability";
      v41 = 2080;
      v42 = ":";
      v43 = 1024;
      v44 = 145;
      v45 = 2080;
      v46 = "";
      v47 = 2082;
      *v48 = a1;
      *&v48[8] = 2080;
      *&v48[10] = "";
      _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s IOObject %{public}s is not AppleAPFSVolume%s\n", buf, 0x7Cu);
    }

    v14 = 0;
    goto LABEL_29;
  }

  if (IORegistryEntryGetParentEntry(v9, "IOService", &parent))
  {
LABEL_12:
    v13 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136318210;
      *&buf[4] = "aks.fw";
      v27 = 2080;
      v28 = "";
      v29 = 1024;
      v30 = -1;
      v31 = 2080;
      v32 = "";
      v33 = 2080;
      v34 = "";
      v35 = 2080;
      v36 = "";
      v37 = 2080;
      v38 = "";
      v39 = 2080;
      v40 = "aks_apfs_get_disk_portability";
      v41 = 2080;
      v42 = ":";
      v43 = 1024;
      v44 = 149;
      v45 = 2080;
      v46 = "";
      v47 = 1024;
      *v48 = v9;
      *&v48[4] = 2080;
      *&v48[6] = "";
      _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to get parent IO object for %d%s\n", buf, 0x78u);
    }

    v14 = 0;
    if (!v9)
    {
      goto LABEL_30;
    }

LABEL_29:
    IOObjectRelease(v9);
    goto LABEL_30;
  }

  v10 = *MEMORY[0x1E695E480];
  while (1)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v9, @"Controller Characteristics", v10, 0);
    if (CFProperty)
    {
      break;
    }

    v12 = IORegistryEntryCreateCFProperty(v9, @"Protocol Characteristics", v10, 0);
    if (v12)
    {
      v14 = v12;
      v18 = CFGetTypeID(v12);
      if (v18 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v14, @"Physical Interconnect Location");
        if (Value && CFEqual(Value, @"Internal"))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136317954;
            *&buf[4] = "aks.fw";
            v27 = 2080;
            v28 = "";
            v29 = 1024;
            v30 = -1;
            v31 = 2080;
            v32 = "";
            v33 = 2080;
            v34 = "";
            v35 = 2080;
            v36 = "";
            v37 = 2080;
            v38 = "";
            v39 = 2080;
            v40 = "aks_apfs_get_disk_portability";
            v41 = 2080;
            v42 = ":";
            v43 = 1024;
            v44 = 169;
            v45 = 2080;
            v46 = "";
            v47 = 2080;
            *v48 = "";
            v16 = MEMORY[0x1E69E9C10];
            v17 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Device is connected internally: not portable%s\n";
LABEL_25:
            _os_log_impl(&dword_1E0B50000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0x72u);
          }

          goto LABEL_26;
        }

LABEL_27:
        v20 = 1;
        goto LABEL_28;
      }

      aks_apfs_get_disk_portability_cold_2();
      goto LABEL_41;
    }

    IOObjectRelease(v9);
    v9 = parent;
    parent = 0;
    if (IORegistryEntryGetParentEntry(v9, "IOService", &parent))
    {
      goto LABEL_12;
    }
  }

  v14 = CFProperty;
  v15 = CFGetTypeID(CFProperty);
  if (v15 == CFDictionaryGetTypeID())
  {
    if (!CFDictionaryGetValue(v14, @"Encryption Type"))
    {
      goto LABEL_27;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      *&buf[4] = "aks.fw";
      v27 = 2080;
      v28 = "";
      v29 = 1024;
      v30 = -1;
      v31 = 2080;
      v32 = "";
      v33 = 2080;
      v34 = "";
      v35 = 2080;
      v36 = "";
      v37 = 2080;
      v38 = "";
      v39 = 2080;
      v40 = "aks_apfs_get_disk_portability";
      v41 = 2080;
      v42 = ":";
      v43 = 1024;
      v44 = 157;
      v45 = 2080;
      v46 = "";
      v47 = 2080;
      *v48 = "";
      v16 = MEMORY[0x1E69E9C10];
      v17 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Controller supports encryption: not portable%s\n";
      goto LABEL_25;
    }

LABEL_26:
    v20 = 0;
LABEL_28:
    v13 = 0;
    *a2 = v20;
    if (!v9)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  aks_apfs_get_disk_portability_cold_1();
LABEL_41:
  v9 = v24;
  v13 = v25;
  v14 = *buf;
  if (v24)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (parent)
  {
    IOObjectRelease(parent);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

char *aks_apfs_mountpoint_for_disk(const char *a1)
{
  v6 = 0;
  v2 = getmntinfo(&v6, 2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  for (i = v6->f_mntfromname; strcmp(a1, i); i += 2168)
  {
    v6 = (i + 1056);
    if (!--v3)
    {
      return 0;
    }
  }

  return strdup(i - 1024);
}

uint64_t platform_get_measurement(uint64_t a1, int a2, void *a3, size_t *a4)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 36, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  if (!lib_platform_callbacks)
  {
    return 4294967284;
  }

  if (a1 >= 7)
  {
    abort();
  }

  v8 = &pm_id_table + 72 * a1;
  if ((v8[4] & 1) == 0)
  {
    result = (lib_platform_callbacks)(a1, v8 + 5, v8 + 64);
    if (result)
    {
      return result;
    }

    v8[4] = 1;
  }

  if (*a4 < *(v8 + 8))
  {
    return 4294967285;
  }

  memcpy(a3, v8 + 5, *a4);
  v10 = *(v8 + 8);
  *a4 = v10;
  if (a2)
  {
    byte_swap_val(a3, v10);
  }

  return 0;
}

uint64_t platform_rng()
{
  REQUIRE_func(&lib_platform_callbacks != 0, 62, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(off_1F5B857E8[0] != 0, 63, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v0 = off_1F5B857E8[0];

  return v0();
}

uint64_t platform_read_random(uint64_t a1, unsigned int a2)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 70, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(off_1F5B857F0 != 0, 71, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v4 = off_1F5B857F0;

  return v4(a1, a2);
}

uint64_t platform_pka_get_pub_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 78, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B857F8 != 0, 79, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v16 = unk_1F5B857F8;

  return v16(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t platform_pka_ecdh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 86, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B85800 != 0, 87, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_1F5B85800;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t platform_pka_sign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 94, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B85808 != 0, 95, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_1F5B85808;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t platform_pka_sika_attest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 106, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B85810 != 0, 107, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v17 = unk_1F5B85810;

  return v17(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t platform_pka_shared_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 115, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B85818 != 0, 116, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_1F5B85818;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t platform_ref_key_hw_crypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 123, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B85820 != 0, 124, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v10 = unk_1F5B85820;

  return v10(a1, a2, a3, a4, a5);
}

uint64_t platform_ref_key_hw_crypt_clear_cache()
{
  REQUIRE_func(&lib_platform_callbacks != 0, 131, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B85828 != 0, 132, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v0 = unk_1F5B85828;

  return v0();
}

uint64_t platform_get_device_id(uint64_t a1, void *a2)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 139, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B85830 != 0, 140, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v4 = unk_1F5B85830;

  return v4(a1, a2);
}

uint64_t platform_get_aon_security(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 147, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B85838 != 0, 148, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_1F5B85838;

  return v2(a1);
}

uint64_t platform_get_att_sep_chip_rev(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 155, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B85840 != 0, 156, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_1F5B85840;

  return v2(a1);
}

uint64_t platform_get_chip_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 163, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B85848 != 0, 164, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_1F5B85848;

  return v2(a1);
}

uint64_t platform_get_ecid(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B85850 != 0, 172, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_1F5B85850;

  return v2(a1);
}

uint64_t platform_get_board_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 179, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B85858 != 0, 180, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_1F5B85858;

  return v2(a1);
}

uint64_t platform_get_fuse_bits(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 187, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B85860 != 0, 188, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_1F5B85860;

  return v2(a1);
}

uint64_t platform_get_att_board_and_chip_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 195, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F5B85868 != 0, 196, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_1F5B85868;

  return v2(a1);
}

const char *set_akslog_context(const char *__format, ...)
{
  va_start(va, __format);
  if (__format)
  {
    return vsnprintf(&_akslog_context, 0x20uLL, __format, va);
  }

  _akslog_context = 0;
  return __format;
}

uint64_t compress_uuid()
{
  v2 = *MEMORY[0x1E69E9840];
  ccsha256_di();
  ccdigest();
  result = 0;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t time_seconds_to_abs_interval(unsigned int a1)
{
  info = 0;
  mach_timebase_info(&info);
  return 1000000000 * info.denom * a1 / info.numer;
}

unint64_t time_absolute_to_nanoseconds(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return info.numer * a1 / info.denom;
}

uint64_t get_usec_time()
{
  info = 0;
  mach_timebase_info(&info);
  return mach_continuous_time() * info.numer / info.denom / 0x3E8;
}

__darwin_time_t get_clock_time()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec;
}

void *circular_queue_init(unsigned int a1, unsigned int a2)
{
  v2 = a1 + 1;
  if (v2 == v2 << 31 >> 31)
  {
    v4 = calloc(0x20uLL, 1uLL);
    v5 = v4;
    if (v4)
    {
      v4[1] = 0;
      *v4 = a2;
      *(v4 + 1) = v2;
      v6 = calloc(v2 * a2, 1uLL);
      v5[2] = v2 * a2;
      v5[3] = v6;
    }
  }

  else
  {
    circular_queue_init_cold_1(&v8);
    return v8;
  }

  return v5;
}

uint64_t circular_queue_size(_DWORD *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  result = v2 - v3;
  if (v2 < v3)
  {
    return (result + a1[1]);
  }

  return result;
}

uint64_t circular_queue_enqueue(unsigned int *a1, const void *a2)
{
  v3 = a1[3];
  v4 = (v3 + 1) % a1[1];
  memcpy((*(a1 + 3) + *a1 * v3), a2, *a1);
  a1[3] = v4;
  if (v4 == a1[2])
  {
    a1[2] = (v4 + 1) % a1[1];
  }

  return 0;
}

uint64_t circular_queue_dequeue(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  if (__dst)
  {
    memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
    v2 = a1[2];
  }

  memset_s((*(a1 + 3) + *a1 * v2), *a1, 0, *a1);
  result = 0;
  a1[2] = (a1[2] + 1) % a1[1];
  return result;
}

uint64_t circular_queue_peek(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
  return 0;
}

uint64_t circular_queue_dequeue_all(int *a1, void *a2, unsigned int *a3)
{
  v7 = a1[2];
  v6 = a1[3];
  v8 = v6 - v7;
  if (v6 < v7)
  {
    v8 += a1[1];
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *a1 * v8;
  v10 = calloc(v9, 1uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v12 = a1[2];
  v13 = a1[3];
  if (v13 <= v12)
  {
    if (v12 <= v13)
    {
      goto LABEL_13;
    }

    v17 = a1[1] - v12;
    memcpy(v10, (*(a1 + 3) + *a1 * v12), *a1 * v17);
    if (v8 <= v17)
    {
      goto LABEL_13;
    }

    v15 = *(a1 + 3);
    v14 = *a1 * (v8 - v17);
    v10 = &v11[*a1 * v17];
  }

  else
  {
    v14 = *a1 * v8;
    v15 = (*(a1 + 3) + *a1 * v12);
  }

  memcpy(v10, v15, v14);
LABEL_13:
  v18 = a1[1];
  v19 = *a1;
  a1[2] = (a1[2] + v8) % v18;
  memset_s(*(a1 + 3), v19 * v18, 0, v19 * v18);
  result = 0;
  *a2 = v11;
  *a3 = v9;
  return result;
}

uint64_t circular_queue_clear(uint64_t a1)
{
  *(a1 + 8) = 0;
  v1 = (*a1 * *(a1 + 4));
  return memset_s(*(a1 + 24), v1, 0, v1);
}

void circular_queue_free(void *a1)
{
  *(a1 + 1) = 0;
  v2 = (*a1 * *(a1 + 1));
  memset_s(*(a1 + 3), v2, 0, v2);
  memset_s(*(a1 + 3), *(a1 + 2), 0, *(a1 + 2));
  free(*(a1 + 3));
  memset_s(a1, 0x20uLL, 0, 0x20uLL);

  free(a1);
}

BOOL persona_uuid_is_valid(uint8x16_t *a1)
{
  v1 = vmovl_high_u8(*a1);
  v2 = vmovl_u8(*a1->i8);
  v3 = vmovl_u16(vorr_s8(vorr_s8(*v2.i8, *v1.i8), vorr_s8(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v1, v1, 8uLL))));
  return vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) != 0;
}

BOOL is_non_zero(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = *a1++;
    v2 |= v3;
    --a2;
  }

  while (a2);
  return v2 != 0;
}

_DWORD *pfk_params_is_valid(_DWORD *result)
{
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t class_id_get(char a1)
{
  if ((a1 & 0x1Fu) > 0x14)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 & 0x1F;
  }
}

uint64_t dump_bytes_internal(const char *a1, uint64_t a2, unint64_t a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  *__str = 0u;
  v58 = 0u;
  if (a3 >= 0x41)
  {
    v15 = "";
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136318978;
      v18 = "aks.fw";
      v19 = 2080;
      v20 = "";
      v21 = 1024;
      v22 = -1;
      v23 = 2080;
      v24 = "";
      v25 = 2080;
      v26 = "";
      v27 = 2080;
      v28 = "";
      v29 = 2080;
      v30 = "";
      v31 = 2080;
      v32 = "dump_bytes_internal";
      v33 = 2080;
      v34 = ":";
      v35 = 1024;
      v36 = 844;
      v37 = 2080;
      v38 = "";
      v39 = 2080;
      v40 = "";
      v41 = 2080;
      v42 = a1;
      v43 = 2048;
      v44 = a3;
      v45 = 2080;
      v46 = "";
      v47 = 2080;
      v48 = "";
      _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sdump %s (len = %zd)%s%s\n", buf, 0x9Au);
    }
  }

  else
  {
    v15 = a1;
    if (!a3)
    {
      goto LABEL_20;
    }
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E9C10];
  do
  {
    if (a3 - v5 >= 0x40)
    {
      v7 = 64;
    }

    else
    {
      v7 = a3 - v5;
    }

    if (a3 != v5)
    {
      v8 = &v5[a2];
      if (v7 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7;
      }

      v10 = __str;
      do
      {
        v11 = *v8++;
        snprintf(v10, 3uLL, "%02x", v11);
        v10 += 2;
        --v9;
      }

      while (v9);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = &v5[v7];
      *buf = 136320002;
      v18 = "aks.fw";
      v19 = 2080;
      v20 = "";
      v21 = 1024;
      v22 = -1;
      v23 = 2080;
      v24 = "";
      v25 = 2080;
      v26 = "";
      v27 = 2080;
      v28 = "";
      v29 = 2080;
      v30 = "";
      v31 = 2080;
      v32 = "dump_bytes_internal";
      v33 = 2080;
      v34 = ":";
      v35 = 1024;
      v36 = 854;
      v37 = 2080;
      v38 = "";
      v39 = 2080;
      v40 = "";
      v41 = 2080;
      v42 = v15;
      v43 = 2080;
      v44 = "";
      v45 = 2048;
      v46 = v5;
      v47 = 2048;
      v48 = v12;
      v49 = 2080;
      v50 = "";
      v51 = 2080;
      v52 = __str;
      v53 = 2080;
      v54 = "";
      v55 = 2080;
      v56 = "";
      _os_log_impl(&dword_1E0B50000, v6, OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s%s%s[%04zu,%04zu): %s%s%s%s\n", buf, 0xC2u);
      v5 = v12;
    }

    else
    {
      v5 += v7;
    }
  }

  while (v5 < a3);
LABEL_20:
  result = memset_s(__str, 0x81uLL, 0, 0x81uLL);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *bytes_to_str_hint(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    v4 = bytes_to_str_hint_buf;
    v5 = v2;
    do
    {
      v6 = *a1++;
      snprintf(v4, 3uLL, "%02x", v6);
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  bytes_to_str_hint_buf[2 * v2] = 0;
  return bytes_to_str_hint_buf;
}

char *byte_swap_val(char *result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = a2 >> 1;
    v3 = &result[a2 - 1];
    do
    {
      v4 = *result;
      *result++ = *v3;
      *v3-- = v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t err_sks_to_aks(uint64_t result)
{
  if (result == 0 || result >= 0xFFFFFFDA)
  {
    return dword_1E0BAA088[(result + 38)];
  }

  return result;
}

uint64_t REQUIRE_func(uint64_t result, int a2, uint64_t a3)
{
  if ((result & 1) == 0)
  {
    REQUIRE_func_cold_1(a3, a2);
  }

  return result;
}

uint64_t firebloom_ec_export(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = &a2[3 * **a2];
  ccn_write_uint_padded();
  return 1;
}

uint64_t generate_wrapping_key_curve25519(__int128 *a1, __int128 *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, sizeof(v16));
  platform_read_random(v16, 0x20u);
  v4 = cccurve25519_make_pub() == 0;
  REQUIRE_func(v4, 58, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
  v10 = 0u;
  v11 = 0u;
  __s = 0x1000000;
  v5 = a2[1];
  v12 = *a2;
  v13 = v5;
  v6 = a1[1];
  v14 = *a1;
  v15 = v6;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  memset_s(v16, 0x20uLL, 0, 0x20uLL);
  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t generate_unwrap_shared_key_curve25519(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v8 = 0u;
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v4 = a3[1];
  v12 = *a3;
  __s = 0x1000000;
  v13 = v4;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t rfc3394_wrap(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unint64_t a6, void *a7, void *a8)
{
  v48 = a1;
  v49 = a3;
  v52 = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_encrypt_mode();
  v15 = *v14 + 15;
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v41 - v16;
  bzero(&v41 - v16, v16);
  v17 = v14[1] + 15;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  bzero(&v41 - v19, v19);
  v21 = 0xFFFFFFFFLL;
  if (HIDWORD(a6) || (a6 - 40) < 0xFFFFFFE0)
  {
    goto LABEL_31;
  }

  v43 = &v41;
  v44 = a8;
  v45 = a6;
  v42 = a7;
  if (!a4)
  {
    v22 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v22 || !a8 || *a8 < a6 + 8)
    {
      rfc3394_wrap_cold_1(__s);
      goto LABEL_32;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v44 >= v45 + 8)
  {
LABEL_15:
    v23 = v45 >> 3;
    if (v45 >> 3 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v25 = 8;
    v26 = v24;
    do
    {
      v27 = *a5++;
      *(__s + v25) = v27;
      v25 += 16;
      --v26;
    }

    while (v26);
    v28 = 0;
    *&__s[0] = v49;
    v29 = 1;
    v46 = v23;
    v47 = v24;
    do
    {
      v48 = v29;
      v49 = v28;
      v30 = __s;
      v31 = 1;
      do
      {
        if (a4)
        {
          if ((a4(1, &firebloom_null_iv, v30, v30, 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v32 = v14[1];
          cccbc_clear_iv();
          firebloom_cbc_update_f(v14, v50, v20, 0x10uLL);
        }

        v33 = *v30;
        v30 += 2;
        *&__s[v31 % v23] = v33 ^ bswap64(v29++);
        ++v31;
        --v24;
      }

      while (v24);
      v28 = v49 + 1;
      v24 = v47;
      v29 = v48 + v46;
    }

    while (v49 != 5);
    v34 = v42;
    *v42 = *&__s[0];
    v35 = v34 + 1;
    v36 = __s + 1;
    do
    {
      v37 = *v36;
      v36 += 2;
      *v35++ = v37;
      --v24;
    }

    while (v24);
    v21 = 0;
    *v44 = (v45 & 0x38) + 8;
LABEL_31:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      goto LABEL_33;
    }

LABEL_32:
    v38 = *v14;
    cc_clear();
    goto LABEL_33;
  }

LABEL_6:
  rfc3394_wrap_cold_1(__s);
  v21 = 0xFFFFFFFFLL;
LABEL_33:
  v39 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t rfc3394_wrap_legacy(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = rfc3394_wrap(a1, a2, a3, a4, a5, a6, a7, &v11);
  REQUIRE_func(HIDWORD(v11) == 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

uint64_t rfc3394_unwrap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unint64_t a6, void *a7, void *a8)
{
  v45 = a3;
  v51 = a1;
  v54 = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_decrypt_mode();
  v15 = *v14 + 15;
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v43 - v16;
  bzero(&v43 - v16, v16);
  v17 = v14[1] + 15;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  bzero(&v43 - v19, v19);
  v21 = 0xFFFFFFFFLL;
  if (HIDWORD(a6))
  {
    goto LABEL_33;
  }

  v50 = a6;
  v22 = a6 >> 3;
  if (v22 - 6 < 0xFFFFFFFC)
  {
    goto LABEL_33;
  }

  v46 = &v43;
  v47 = a8;
  v44 = a7;
  if (!a4)
  {
    v23 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v23 || !a8 || *a8 < v50 - 8)
    {
      rfc3394_wrap_cold_1(__s);
      goto LABEL_34;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v47 >= v50 - 8)
  {
LABEL_15:
    *&__s[0] = *a5;
    v24 = v22 - 1;
    if (v22 != 1)
    {
      v25 = __s + 1;
      v26 = a5 + 1;
      v27 = v22 - 1;
      do
      {
        v28 = *v26++;
        *v25 = v28;
        v25 += 2;
        --v27;
      }

      while (v27);
    }

    v29 = 6 * v22 - 6;
    v49 = 1 - v22;
    v30 = 5;
    v48 = &__s[v22 - 2];
    do
    {
      LODWORD(v51) = v30;
      if (v50 >= 0x10)
      {
        v31 = v48;
        v32 = v22 - 1;
        v33 = v29;
        do
        {
          *v31 = *&__s[v32 % v24] ^ bswap64(v33);
          if (a4)
          {
            if ((a4(0, &firebloom_null_iv, v31, v31, 16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v34 = v14[1];
            cccbc_clear_iv();
            firebloom_cbc_update_f(v14, v52, v20, 0x10uLL);
          }

          --v33;
          v31 -= 2;
          v35 = __OFSUB__(v32--, 1);
        }

        while (!((v32 < 0) ^ v35 | (v32 == 0)));
      }

      v30 = v51 - 1;
      v29 += v49;
    }

    while (v51);
    if (*&__s[0] == v45)
    {
      v36 = v44;
      if (v22 != 1)
      {
        v37 = __s + 1;
        v38 = v22 - 1;
        do
        {
          v39 = *v37;
          v37 += 2;
          *v36++ = v39;
          --v38;
        }

        while (v38);
      }

      v21 = 0;
      *v47 = 8 * v24;
    }

    else
    {
      v21 = 0xFFFFFFFFLL;
    }

LABEL_33:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      goto LABEL_35;
    }

LABEL_34:
    v40 = *v14;
    cc_clear();
    goto LABEL_35;
  }

LABEL_6:
  rfc3394_wrap_cold_1(__s);
  v21 = 0xFFFFFFFFLL;
LABEL_35:
  v41 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t rfc3394_unwrap_legacy(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = rfc3394_unwrap(a1, a2, a3, a4, a5, a6, a7, &v11);
  REQUIRE_func(HIDWORD(v11) == 0, 261, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

BOOL rfc3394_unwrapped_size_legacy(unsigned int a1, unsigned int *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

BOOL rfc3394_unwrapped_size(unint64_t a1, unint64_t *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

uint64_t lib_platform_rng()
{
  v0 = ccrng();
  REQUIRE_func(v0 != 0, 22, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  REQUIRE_func(0, 23, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  return v0;
}

uint64_t lib_platform_read_random(uint64_t a1, unsigned int a2)
{
  v4 = platform_rng();
  v5 = (*v4)(v4, a2, a1) == 0;

  return REQUIRE_func(v5, 31, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
}

uint64_t encode_list_get_data(void *a1, unsigned __int8 *a2, int a3, void *a4, void *a5)
{
  key = _encode_list_find_key(a1, a2);
  if (!key)
  {
    return 0;
  }

  v9 = 1;
  if (a4)
  {
    if (a5)
    {
      v10 = key[1] + key[2];
      v15[0] = key[1];
      v15[1] = v10;
      v9 = ccder_blob_decode_sequence_tl();
      if (v9)
      {
        if (der_utils_decode_implicit_raw_octet_string_copy(v15, 12, 0, 0))
        {
          v11 = v15[0];
          if (ccder_blob_decode_tag())
          {
            if (ccder_blob_decode_len())
            {
              v13 = 0;
              v12 = v15[0];
              if (a3)
              {
                v13 = (LODWORD(v15[0]) - v11);
                v12 = v11;
              }

              *a4 = v12;
              *a5 = v13;
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t encode_list_get_number(void *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  data = encode_list_get_data(a1, a2, 1, &v7, &v8);
  v5 = data;
  if (a3 && data)
  {
    *a3 = der_get_number();
  }

  return v5;
}

uint64_t encode_list_get_BOOL(void *a1, unsigned __int8 *a2, BOOL *a3)
{
  v7 = 0;
  v8 = 0;
  data = encode_list_get_data(a1, a2, 1, &v7, &v8);
  v5 = data;
  if (a3 && data)
  {
    *a3 = der_get_BOOL();
  }

  return v5;
}

uint64_t ccder_sizeof_fv_data(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  return ccder_sizeof();
}

uint64_t ccder_sizeof_fv_key(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  v2 = ccder_sizeof();
  return ccder_sizeof() + v2;
}

uint64_t der_utils_decode_fv_data(__int128 *a1, int a2, uint64_t a3)
{
  v6 = *a3;
  v5 = *(a3 + 8);
  v9 = *a1;
  if (a2)
  {
    v12 = *a1;
    v10 = 0;
    v11 = 0;
    result = ccder_blob_decode_range();
    if (!result)
    {
      return result;
    }

    v6 = v10;
    v8 = (v11 - v10);
    v9 = v12;
    goto LABEL_4;
  }

  LODWORD(v12) = v5;
  result = der_utils_decode_implicit_raw_octet_string_copy_len(&v9, 4, v6, &v12);
  if (result)
  {
    v8 = v12;
LABEL_4:
    *a3 = v6;
    *(a3 + 8) = v8;
    *a1 = v9;
    return 1;
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy_partial(__int128 *a1)
{
  v4 = *a1;
  v2 = ccder_blob_decode_range();
  if (v2)
  {
    *a1 = v4;
  }

  return v2;
}

uint64_t se_derivation_request_serialization_len()
{
  ccder_sizeof();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, ...)
{
  va_start(va2, a1);
  va_start(va1, a1);
  va_start(va, a1);
  va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  v3 = 0;
  v5 = 0;

  return encode_list_dict(va2, va, va1);
}

uint64_t OUTLINED_FUNCTION_21_0(void *a1)
{

  return memset_s(a1, 0x10uLL, 0, 0x10uLL);
}

uint64_t sizeof_backup_bag(uint64_t *a1)
{
  v2 = a1[10];
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_raw_octet_string();
  ccder_sizeof_raw_octet_string();
  v3 = *a1;
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t aks_delete_xart_leak(unsigned int a1, const void *a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x6Cu, input, 1u, a2, 0x10uLL, 0, 0, 0, 0);
  }

  else
  {
    aks_delete_xart_leak_cold_1();
    result = v6;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

char *_iterate_path(char *result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6[0] = result;
    v6[1] = 0;
    result = fts_open(v6, 84, 0);
    if (result)
    {
      result = _iterate_path_cold_1(result, a2, a3);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

char *aks_dump_path(char *result, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    bzero(v9, 0x400uLL);
    result = realpath_DARWIN_EXTSN(v3, v9);
    if (result)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v7[2] = __aks_dump_path_block_invoke;
      v7[3] = &__block_descriptor_tmp_0;
      v8 = a2;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 0x40000000;
      v5[2] = __aks_dump_path_block_invoke_2;
      v5[3] = &__block_descriptor_tmp_127;
      v6 = a2;
      result = _iterate_path(v9, v7, v5);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __aks_dump_path_block_invoke(uint64_t a1, uint64_t a2)
{
  path_class = _get_path_class(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || path_class == v5)
  {
    printf(" dir: %s %i\n", *(a2 + 48), path_class);
  }

  return 1;
}

uint64_t aks_fs_supports_enhanced_apfs()
{
  v36 = *MEMORY[0x1E69E9840];
  v0 = IORegistryEntryFromPath(*MEMORY[0x1E696CD68], "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", *MEMORY[0x1E695E480], 0);
    v3 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  __len = 1023;
  bzero(__big, 0x400uLL);
  if ((_aks_check_apfs_shared_datavolume_bootarg_init & 1) == 0)
  {
    if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
    {
      _aks_check_apfs_shared_datavolume_bootarg_value = 1;
    }

    _aks_check_apfs_shared_datavolume_bootarg_init = 1;
  }

  v4 = _aks_check_apfs_shared_datavolume_bootarg_value;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *__big = 136318466;
    v9 = "aks.fw";
    v10 = 2080;
    v11 = "";
    v12 = 1024;
    v13 = -1;
    v14 = 2080;
    v15 = "";
    v16 = 2080;
    v17 = "";
    v18 = 2080;
    v19 = "";
    v20 = 2080;
    v21 = "";
    v22 = 2080;
    v23 = "aks_fs_supports_enhanced_apfs";
    v24 = 2080;
    v25 = ":";
    v26 = 1024;
    v27 = 438;
    v28 = 2080;
    v29 = "";
    v30 = 1024;
    v31 = v3;
    v32 = 1024;
    v33 = v4;
    v34 = 2080;
    v35 = "";
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s ioreg: %d, boot_arg: %d%s\n", __big, 0x7Eu);
  }

  v5 = *MEMORY[0x1E69E9840];
  return (v3 | v4) & 1;
}

void aks_fs_status_with_map(const char *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  memset(&v8, 0, sizeof(v8));
  if (a3)
  {
    v6 = (a2 + 16);
    do
    {
      snprintf(__str, 0x400uLL, "%s%s", a1, *(v6 - 2));
      if (stat(__str, &v8))
      {
        printf("stat failed: %s\n");
      }

      else
      {
        _get_path_class(__str);
        *v6;
        printf("%s: mode=%o, u/g=%i:%i class=%i%s\n");
      }

      v6 += 6;
      --a3;
    }

    while (a3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t aks_show_allowlist()
{
  puts("shared allow list:");
  v0 = &byte_1E86DF130;
  v1 = 36;
  do
  {
    if (*v0)
    {
      printf("%s%s\n", "<var>", *(v0 - 2));
    }

    v0 += 48;
    --v1;
  }

  while (v1);
  result = puts("user allow list:");
  v3 = &byte_1E86DF7F0;
  v4 = 72;
  do
  {
    if (*v3)
    {
      result = printf("%s%s\n", "<user>", *(v3 - 2));
    }

    v3 += 48;
    --v4;
  }

  while (v4);
  return result;
}

void aks_gather_stats(const char *a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(&v14, 0x878uLL);
    bzero(v13, 0x400uLL);
    if (realpath_DARWIN_EXTSN(a1, v13))
    {
      v4 = malloc(0x818uLL);
      memset_s(v4, 0x818uLL, 0, 0x818uLL);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __aks_gather_stats_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_139;
      v12[4] = v4;
      _iterate_path(v13, &__block_literal_global, v12);
      if (!statfs(v13, &v14))
      {
        if (a2)
        {
          printf("Free Blocks:%lld blocks of size:%d\n");
        }

        else
        {
          printf("%lld,%d\n");
        }
      }

      v5 = v4 + 340;
      for (i = 1; i != 5; ++i)
      {
        if (a2)
        {
          v9 = &v4[296 * i];
          printf("%s:\n\tNum files:\t%u,\n\tNum hardlinks:\t%u,\n\tNum compressed:\t%u,\n\tTotal Size:\t%lld,\n\tMin File Size:\t%lld,\n\tMax File Size:\t%lld,\n", class_names[i], *v9, *(v9 + 2), *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 4));
          printf("\tSize Distribution:");
          printf("%i", *(v9 + 10));
          for (j = 0; j != 252; j += 4)
          {
            putchar(44);
            printf("%i", *&v5[j]);
          }
        }

        else
        {
          v7 = &v4[296 * i];
          printf("%i,%u,%u,%u,%lld,%lld,%lld,", i, *v7, *(v7 + 2), *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4));
          printf("%i", *(v7 + 10));
          for (k = 0; k != 252; k += 4)
          {
            putchar(44);
            printf("%i", *&v5[k]);
          }
        }

        putchar(10);
        v5 += 296;
      }

      free(v4);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t aks_kext_set_options(unsigned int a1, uint64_t a2)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = 1;
  input[1] = a1;
  input[2] = a2;
  output = 0;
  outputCnt[0] = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x56u, input, 3u, 0, 0, &output, outputCnt, 0, 0);
  }

  else
  {
    aks_kext_set_options_cold_1();
    result = outputCnt[1];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_internal_state()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x10u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_internal_state_cold_1();
  return v2;
}

uint64_t aks_run_internal_test(unsigned int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x86u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_run_internal_test_cold_1();
    result = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t get_akstest_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_154);
  return get_akstest_client_connection_connection;
}

void __get_akstest_client_connection_block_invoke()
{
  if (!get_akstest_client_connection_connection)
  {
    get_akstest_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStoreTest", "AppleKeyStoreTest");
  }
}

uint64_t akstest_new_ek(mach_port_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, size_t *a8)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a3;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 2, a4, a5, a6, a7, a8, a2);
  v11 = IOConnectCallMethod(a1, 0x14u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, a7, a8);
  free(*&inputStructCnt[1]);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t akstest_check_class(mach_port_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a3;
  result = IOConnectCallMethod(a1, 0x11u, input, 1u, inputStruct, 0x10uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t akstest_last_user(mach_port_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 1, a4, a5, a6, a7, a8, a3);
  v9 = IOConnectCallMethod(a1, 0x12u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  free(*&inputStructCnt[1]);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void OUTLINED_FUNCTION_12_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint8_t buf)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x72u);
}

uint64_t aks_decrypt(uint64_t a1, void *a2, rsize_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 3758097122;
  v12 = 0;
  v6 = 3758097090;
  if (!a2 || !a3 || der_get_sizeof(a2) != a3)
  {
    return v6;
  }

  v6 = aks_ref_key_create_with_blob();
  if (!v6)
  {
    v6 = aks_ref_key_decrypt(v12, a4, a5, a2, a3);
    aks_ref_key_free(&v12);
  }

  if (v6 <= -536870175)
  {
    if (v6 != -536870212)
    {
      if (v6 == -536870194)
      {
        return v5;
      }

      return v6;
    }

    return 3758097084;
  }

  if (v6 != -536870174 && v6 != -536363000)
  {
    if (v6 != -536362999)
    {
      return v6;
    }

    return 3758097084;
  }

  return v5;
}

uint64_t aks_delete(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 3758097122;
  v6 = 0;
  v4 = 3758097090;
  if (!a2 || !a3 || der_get_sizeof(a2) != a3)
  {
    return v4;
  }

  v4 = aks_ref_key_create_with_blob();
  if (!v4)
  {
    v4 = aks_ref_key_delete(v6);
    aks_ref_key_free(&v6);
  }

  if (v4 <= -536870175)
  {
    if (v4 != -536870212)
    {
      if (v4 == -536870194)
      {
        return v3;
      }

      return v4;
    }

    return 3758097084;
  }

  if (v4 != -536870174 && v4 != -536363000)
  {
    if (v4 != -536362999)
    {
      return v4;
    }

    return 3758097084;
  }

  return v3;
}

uint64_t decode_ref_key_with_result(uint64_t a1, uint64_t a2, void *a3, void *a4, void **a5, void *a6)
{
  v16[0] = a1;
  v16[1] = a1 + a2;
  v15 = 0;
  __n_4 = 0;
  __n = 0;
  __s = 0;
  if (a1 && a3 && a4 && a5 && a6 && ccder_blob_decode_range() && der_utils_decode_implicit_raw_octet_string_alloc(v16, 4, &__s, &__n))
  {
    if (der_utils_decode_implicit_raw_octet_string_alloc(v16, 4, &__n_4, &v15))
    {
      v10 = 0;
      *a3 = __n_4;
      *a4 = v15;
      *a5 = __s;
      *a6 = __n;
      return v10;
    }

    decode_ref_key_with_result_cold_1(__n_4, &v15, &__n_4);
  }

  v10 = 3758097084;
  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  return v10;
}

uint64_t aks_ref_key_get_version(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v1 = *(a1 + 16);
  result = der_dict_find_value(der_key_version, &v3, &v4);
  if (result)
  {
    return der_get_number();
  }

  return result;
}

uint64_t aks_ref_key_verify_sig(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v26[2] = *MEMORY[0x1E69E9840];
  v26[0] = a6;
  v26[1] = a6 + a7;
  v25 = 0;
  v24 = 0;
  der_utils_decode_implicit_raw_octet_string(v26, 4, &v25, &v24);
  if ((v10 & 1) == 0)
  {
    v24 = a6;
    v25 = v7;
  }

  v11 = 3758097090;
  type = aks_ref_key_get_type(a1);
  if ((type - 4) < 2)
  {
    v22 = 0;
    goto LABEL_8;
  }

  if ((type - 7) < 2)
  {
    v13 = MEMORY[0x1E12E84C0]();
    v14 = v13;
    v22 = 0;
    if (v13)
    {
LABEL_9:
      v15 = 24 * *v14 + 31;
      MEMORY[0x1EEE9AC00](v13);
      v17 = &v21[-v16];
      bzero(&v21[-v16], v16);
      v23 = 0;
      public_key = aks_ref_key_get_public_key(a1, &v23);
      if (public_key && !MEMORY[0x1E12E84F0](v14, v23, public_key, v17) && !ccec_verify())
      {
        if ((v22 & 1) == 0)
        {
          v11 = 3758604294;
          goto LABEL_14;
        }

LABEL_13:
        v11 = 0;
        goto LABEL_14;
      }

      goto LABEL_14;
    }

LABEL_8:
    v13 = MEMORY[0x1E12E84B0]();
    v14 = v13;
    goto LABEL_9;
  }

  if (type == 3)
  {
    v23 = 0;
    if (aks_ref_key_get_public_key(a1, &v23))
    {
      if (v23 == 32 && v24 && v25 == 64)
      {
        ccsha512_di();
        if (cced25519_verify())
        {
          v11 = 3758604294;
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t aks_ref_key_get_blob(uint64_t *a1, void *a2)
{
  result = *a1;
  *a2 = a1[1];
  return result;
}

uint64_t aks_ref_key_get_uuid(uint64_t a1, void *a2)
{
  v10 = 0;
  v9 = 0;
  if (!*(a1 + 32))
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v3 = *(a1 + 16);
  value = der_dict_find_value(der_key_uuid, &v7, &v8);
  result = 0;
  if (value)
  {
    v6[0] = v7;
    v6[1] = v7 + v8;
    der_utils_decode_implicit_raw_octet_string(v6, 4, &v10, &v9);
    *a2 = v10;
    return v9;
  }

  return result;
}

uint64_t aks_ref_key_get_options(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v1 = *(a1 + 16);
  value = der_dict_find_value(der_key_options, &v4, &v5);
  result = 0;
  if (value)
  {
    return der_get_number();
  }

  return result;
}

void aks_dealloc(void *a1, rsize_t __n)
{
  memset_s(a1, __n, 0, __n);

  free(a1);
}

uint64_t OUTLINED_FUNCTION_12_1(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void OUTLINED_FUNCTION_23_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *a10 = v18;
  *v20 = a17;
  *v19 = a18;
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);

  return encode_list_dict(v4, va, va1);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = a21;
  v24 = *(v21 - 88);

  return decode_ref_key_with_result(v23, v24, &a19, &a20, &a17, &a18);
}

uint64_t OUTLINED_FUNCTION_47()
{

  return encode_list_merge_dict(v0);
}

uint64_t OUTLINED_FUNCTION_48()
{

  return _get_merged_params();
}

uint64_t OUTLINED_FUNCTION_55()
{

  return _aks_operation(v0);
}

uint64_t OUTLINED_FUNCTION_56()
{
  v3 = *v0;
  v4 = *v1;
  v5 = v1[2];

  return encode_list_add_der();
}

uint64_t OUTLINED_FUNCTION_58(uint64_t a1, uint64_t a2)
{

  return encode_list_add_number(v2, a2, v3);
}

size_t aks_fv_apfs_device_parse(const char *a1, char *a2, size_t a3, char **a4)
{
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v8 = 5;
  }

  else
  {
    v8 = 0;
  }

  v9 = &a1[v8];
  if (!strncmp(&a1[v8], "disk", 4uLL))
  {
    *a4 = a2;
  }

  else
  {
    v10 = strncmp(v9, "rdisk", 5uLL);
    *a4 = a2;
    if (v10)
    {
      v9 = a1;
    }

    else
    {
      ++v9;
    }
  }

  return strlcpy(a2, v9, a3);
}

const char *fv_apfs_is_special_uuid(const unsigned __int8 *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  uuid_unparse_upper(a1, v3);
  if (!strcmp("EBC6C064-0000-11AA-AA11-00306543ECAC", v3))
  {
    result = "personal recovery key";
  }

  else if (!strcmp("64C0C6EB-0000-11AA-AA11-00306543ECAC", v3))
  {
    result = "icloud recovery key";
  }

  else if (!strcmp("C064EBC6-0000-11AA-AA11-00306543ECAC", v3))
  {
    result = "institutional recovery key";
  }

  else if (!strcmp("EC1C2AD9-B618-4ED6-BD8D-50F361C27507", v3))
  {
    result = "icloud user";
  }

  else if (!strcmp("2FA31400-BAFF-4DE7-AE2A-C3AA6E1FD340", v3))
  {
    result = "institutional user";
  }

  else if (!strcmp("2457711A-523C-4604-B75A-F48A571D5036", v3))
  {
    result = "mdm boostrap token";
  }

  else if (!strcmp("BF6F8EF2-33A3-408A-A6D3-37EAFC077B07", v3))
  {
    result = "installer bootstrap user";
  }

  else
  {
    result = 0;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_2(const __CFString *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char buffer)
{

  return CFStringGetCString(a1, &buffer, 128, 0x8000100u);
}

void aks_free_escrow_blob(void **a1, rsize_t __smax)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      if (__smax)
      {
        memset_s(v3, __smax, 0, __smax);
        v3 = *a1;
      }

      memset_s(v3, __smax, 0, __smax);
      v5 = *a1;

      free(v5);
    }
  }
}

uint64_t aks_attest_context_get(uint64_t a1, unsigned int a2, void *a3, size_t *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1 && (*a1 & 1) != 0)
  {
    if ((*(a1 + 1) & 1) == 0 && (_akslog_filter & 2) != 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136318210;
      v11 = "aks.fw";
      v12 = 2080;
      v13 = "";
      v14 = 1024;
      v15 = -1;
      v16 = 2080;
      v17 = "";
      v18 = 2080;
      v19 = "";
      v20 = 2080;
      v21 = "";
      v22 = 2080;
      v23 = "";
      v24 = 2080;
      v25 = "aks_attest_context_get";
      v26 = 2080;
      v27 = ":";
      v28 = 1024;
      v29 = 869;
      v30 = 2080;
      v31 = "";
      v32 = 2080;
      v33 = "";
      v34 = 2080;
      v35 = "";
      _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %swarning parsing an unverified attestation%s\n", &v10, 0x7Cu);
    }

    result = aks_attest_context_get_internal(a1, a2, a3, a4);
  }

  else
  {
    aks_attest_context_get_cold_1(&v10);
    result = v10;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_get_digest_info(uint64_t a1, uint64_t *a2)
{
  if (ccoid_equal())
  {
    v3 = ccsha384_di();
  }

  else if (ccoid_equal())
  {
    v3 = ccsha256_di();
  }

  else
  {
    if (!ccoid_equal())
    {
      return 4294967272;
    }

    v3 = ccsha512_di();
  }

  v4 = 0;
  *a2 = v3;
  return v4;
}

uint64_t aks_get_pub_key_cp(uint64_t a1, uint64_t *a2)
{
  if (ccoid_equal())
  {
    v3 = MEMORY[0x1E12E84C0]();
LABEL_5:
    v4 = v3;
    result = 0;
    *a2 = v4;
    return result;
  }

  if (ccoid_equal())
  {
    v3 = MEMORY[0x1E12E84B0]();
    goto LABEL_5;
  }

  return 4294967272;
}

uint64_t aks_attest_context_get_internal(void *a1, unsigned int a2, void *a3, size_t *a4)
{
  result = 4294967285;
  if (!a3 || !a4)
  {
    return result;
  }

  if (a2 >= 0x16 || (v8 = (&param_id_table + 16 * a2), *v8 != a2))
  {
    abort();
  }

  v10 = v8[1];
  if (v10 != 2)
  {
    if (v10 != 1)
    {
      return 4294967286;
    }

    result = _get_param_data(a1, v8, a3, a4);
    if (result)
    {
      return result;
    }

    return 0;
  }

  if (a2 == 1)
  {
    v11 = a1[105];
    if (v11)
    {
      *a3 = v11;
      *a4 = a1[104];
      return 0;
    }

    v13 = a1[61];
    v12 = a1[62];
LABEL_16:
    *a3 = v12;
    *a4 = v13;
    return 0;
  }

  if (a2 == 5)
  {
    v12 = a1[27];
    v13 = a1[28];
    goto LABEL_16;
  }

  if (a2 != 3)
  {
    return 4294967293;
  }

  __s1 = 0;
  __n = 0;
  result = _get_param_data(a1, v8, &__s1, &__n);
  if (!result)
  {
    v14 = a1[43];
    if (v14)
    {
      v15 = __n;
      v16 = a1[44];
    }

    else
    {
      v14 = a1[129];
      if (!v14)
      {
        v17 = __s1;
        v15 = __n;
LABEL_28:
        *a3 = v17;
        *a4 = v15;
        return 0;
      }

      v15 = __n;
      v16 = a1[130];
    }

    if (v15 > v16)
    {
      return 0xFFFFFFFFLL;
    }

    v17 = __s1;
    if (memcmp(__s1, v14, v15))
    {
      return 4294967272;
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t aks_attest_context_get_uint64(uint64_t a1, unsigned int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1 && (*a1 & 1) != 0)
  {
    if ((*(a1 + 1) & 1) == 0 && (_akslog_filter & 2) != 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136318210;
      v7 = "aks.fw";
      v8 = 2080;
      v9 = "";
      v10 = 1024;
      v11 = -1;
      v12 = 2080;
      v13 = "";
      v14 = 2080;
      v15 = "";
      v16 = 2080;
      v17 = "";
      v18 = 2080;
      v19 = "";
      v20 = 2080;
      v21 = "aks_attest_context_get_uint64";
      v22 = 2080;
      v23 = ":";
      v24 = 1024;
      v25 = 901;
      v26 = 2080;
      v27 = "";
      v28 = 2080;
      v29 = "";
      v30 = 2080;
      v31 = "";
      _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %swarning parsing an unverified attestation%s\n", &v6, 0x7Cu);
    }

    result = aks_attest_context_get_uint64_internal(a1, a2);
  }

  else
  {
    aks_attest_context_get_uint64_cold_1(&v6);
    result = v6;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _blob_digest_update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + 88);
  v4 = 16;
  do
  {
    if (*(v3 - 1) && *v3)
    {
      ccdigest_update();
    }

    v3 += 2;
    --v4;
  }

  while (v4);
  return 0;
}

uint64_t _parse_digest_value(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = &digest_pos_table + 16 * a3;
  if (*v3 != a3)
  {
    abort();
  }

  if ((*(v3 + 1) & *(a2 + 72)) == 0)
  {
    return 1;
  }

  v7 = *(v3 + 1);
  result = ccder_blob_decode_range();
  if (result)
  {
    result = ccder_blob_decode_tl();
    if (result)
    {
      v9 = a2 + 16 * a3;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      return !*a1;
    }
  }

  return result;
}

_DWORD *_get_exention_prop_by_id(unsigned int a1, unsigned int a2)
{
  v2 = &cert_oids_table + 48 * a1;
  if (*v2 != a1 || *(v2 + 4) <= a2 || (result = (*(v2 + 3) + 32 * a2), *result != a2))
  {
    abort();
  }

  return result;
}

uint64_t _get_oid_property_value(unsigned int a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v6 = &cert_oids_table + 48 * a1;
  if (*v6 != a1)
  {
    abort();
  }

  v12 = *(v6 + 1);
  v13 = MEMORY[0x1E12E8400](v12);
  v17 = 0;
  v18 = 0;
  if (CTParseExtensionValue(a3, a4, (v12 + 2), v13 - 2, &v17, &v18))
  {
    _get_oid_property_value_cold_1(&v19);
    return v19;
  }

  else
  {
    v15 = v17;
    v16 = v17 + v18;
    if (ccder_blob_decode_range() && v15 < v16)
    {
      while (ccder_blob_decode_tag() && ccder_blob_decode_len())
      {
        if (!a2)
        {
          if (!v15)
          {
            return 0xFFFFFFFFLL;
          }

          result = 0;
          *a5 = v15;
          *a6 = 0;
          return result;
        }

        if (v15 >= v16)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t OUTLINED_FUNCTION_12_3()
{
  result = *(v0 + 48);
  v2 = *(v0 + 136);
  return result;
}

uint64_t _data_protection_enabled(const char *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  bzero(&v4, 0x878uLL);
  if (!statfs(a1, &v4) && (v4.f_flags & 0x80) != 0)
  {
    result = 1;
  }

  else
  {
    fprintf(*MEMORY[0x1E69E9848], "mount point (%s) does not support Data Protection", a1);
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_migrate_fs_with_map(char *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v6 = a2;
  v8 = a2 | 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___migrate_user_partition_block_invoke;
  v12[3] = &__block_descriptor_tmp_22;
  v12[4] = strlen(a1);
  v12[5] = a4;
  v12[6] = a3;
  v13 = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___migrate_user_partition_block_invoke_2;
  v10[3] = &__block_descriptor_tmp_23;
  v11 = v8;
  _iterate_path(a1, v12, v10);
  if (v6)
  {
    fwrite("Skipping migration of Applications\n", 0x23uLL, 1uLL, *MEMORY[0x1E69E9858]);
  }

  return 0;
}

uint64_t aks_bootstrap_fs_with_map(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v30 = v3;
  v31 = v2;
  v5 = v4;
  v7 = v6;
  v29 = v8;
  v9 = v1;
  v40 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  v10 = 0;
  if (v5)
  {
    v11 = (v7 + 20);
    v12 = MEMORY[0x1E69E9848];
    do
    {
      if ((*(v11 - 2) & 8) == 0)
      {
        memset(&v32, 0, sizeof(v32));
        snprintf(__str, 0x400uLL, "%s%s", v9, *(v11 - 10));
        if (!stat(__str, &v32))
        {
          goto LABEL_19;
        }

        if (mkpath_np(__str, *v11))
        {
          v13 = *v12;
          v14 = __error();
          strerror(*v14);
          fprintf(v13, "failed to create: %s (%s)\n");
        }

        else
        {
          v15 = *v11;
          if (v15 >= 0x200 && chmod(__str, v15))
          {
            v16 = *v12;
            v17 = __error();
            v18 = strerror(*v17);
            fprintf(v16, "failed to change permissions on: %s (%s)\n", __str, v18);
          }

          v19 = *(v11 + 2);
          pw_uid = v31;
          if (v19)
          {
            bzero(v38, 0x1000uLL);
            memset(&v34, 0, sizeof(v34));
            v33 = 0;
            if (getpwnam_r(v19, &v34, v38, 0x1000uLL, &v33))
            {
              pw_uid = v31;
              if ((aks_bootstrap_fs_with_map_cold_1(v38, &v34, &v33, (v11 + 2)) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            else
            {
              pw_uid = v33->pw_uid;
            }
          }

          v21 = *(v11 + 6);
          gr_gid = v30;
          if (!v21)
          {
            goto LABEL_16;
          }

          bzero(v39, 0x1000uLL);
          memset(&v36, 0, sizeof(v36));
          v35 = 0;
          if (!getgrnam_r(v21, &v36, v39, 0x1000uLL, &v35))
          {
            gr_gid = v35->gr_gid;
LABEL_16:
            if (chown(__str, pw_uid, gr_gid))
            {
              v23 = *v12;
              v24 = __error();
              v25 = strerror(*v24);
              fprintf(v23, "failed to change ownership on: %s (%s)\n", __str, v25);
            }

            stat(__str, &v32);
LABEL_19:
            if ((v32.st_mode & 0xF000) == 0x4000)
            {
              if (*(v11 - 2))
              {
                if (_set_path_class(__str, -1, *(v11 + 5), v29))
                {
                  v10 = 0xFFFFFFFFLL;
                }

                else
                {
                  v10 = v10;
                }
              }
            }

            else
            {
              fprintf(*v12, "failed %s is not a directory\n");
            }

            goto LABEL_25;
          }

          v26 = aks_bootstrap_fs_with_map_cold_2(v39, &v36, &v35, (v11 + 6));
          gr_gid = v30;
          if (v26)
          {
            goto LABEL_16;
          }
        }
      }

LABEL_25:
      v11 += 24;
      --v5;
    }

    while (v5);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t aks_bootstrap_fs_done(const char *a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/%s", a1, a2);
  v4 = open(__str, 513, 420);
  if (v4 == -1)
  {
    v6 = *MEMORY[0x1E69E9848];
    v7 = __error();
    v8 = strerror(*v7);
    result = fprintf(v6, "Could not create marker file: %s (%s)\n", __str, v8);
  }

  else
  {
    result = close(v4);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void aks_setupallowlist_fs_with_map(const char *a1, int a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x401uLL);
  if (a4)
  {
    v8 = (a3 + 16);
    v9 = MEMORY[0x1E69E9858];
    while (1)
    {
      snprintf(__str, 0x401uLL, "%s%s", a1, *(v8 - 2));
      if ((*v8 & 2) != 0)
      {
        break;
      }

      if (__logfd)
      {
        v10 = __logfd;
      }

      else
      {
        v10 = *v9;
      }

      if ((*v8 & 4) == 0)
      {
        goto LABEL_12;
      }

      fprintf(v10, "Traversing hierarchy: %s\n", __str);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __setup_allowlist_dirpath_block_invoke;
      v12[3] = &__block_descriptor_tmp_36;
      v13 = a2 | 3;
      _iterate_path(__str, v12, 0);
LABEL_13:
      v8 += 12;
      if (!--a4)
      {
        goto LABEL_14;
      }
    }

    if (__logfd)
    {
      v10 = __logfd;
    }

    else
    {
      v10 = *v9;
    }

LABEL_12:
    fprintf(v10, "SKIPPED: %s\n", __str);
    goto LABEL_13;
  }

LABEL_14:
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t _set_path_class(const char *a1, int a2, int a3, char a4)
{
  v16 = 0;
  v15 = xmmword_1E0BAB8A8;
  v14 = 0;
  if (getattrlist(a1, &v15, &v14, 8uLL, 0))
  {
    return *__error();
  }

  if (HIDWORD(v14) == a3 || a2 != -1 && HIDWORD(v14) != a2)
  {
    return 0;
  }

  if (a2 == -1)
  {
    if (a4)
    {
      fprintf(*MEMORY[0x1E69E9858], "%s set %i\n");
    }
  }

  else if (a4)
  {
    fprintf(*MEMORY[0x1E69E9858], "%s update %i -> %i\n");
  }

  v13 = a3;
  if (!setattrlist(a1, &v15, &v13, 4uLL, 0))
  {
    return 0;
  }

  v8 = __error();
  v9 = *v8;
  v10 = *MEMORY[0x1E69E9848];
  v11 = strerror(*v8);
  fprintf(v10, "failed (%s) to update class for %s\n", v11, a1);
  return v9;
}

uint64_t __aks_migrate_path_block_invoke(_DWORD *a1, uint64_t a2)
{
  v2 = a1[8];
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 48);
    v4 = a1[9];
    v5 = a1[10];
    v3 = v6;
    goto LABEL_5;
  }

  if ((v2 & 8) != 0)
  {
    v3 = *(a2 + 48);
    v4 = -1;
    v5 = 0;
LABEL_5:
    _set_path_class(v3, v4, v5, v2);
  }

  return 1;
}

_DWORD *__aks_migrate_path_block_invoke_2(_DWORD *result, uint64_t a2)
{
  v3 = result[8];
  if (v3)
  {
    v4 = result[9];
    if ((v4 & 0x10) != 0)
    {
      if (result[10])
      {
        v5 = result[10];
      }

      else
      {
        v5 = 3;
      }

      return _set_path_class(*(a2 + 48), v3, v5, v4);
    }
  }

  return result;
}

BOOL _aks_version_check(int a1, char a2)
{
  v9 = a2;
  v3 = read(a1, &v9, 1uLL);
  if (v3 == 0xFFFFFFFFLL)
  {
    v4 = *MEMORY[0x1E69E9848];
    v5 = __error();
    v6 = strerror(*v5);
    fprintf(v4, "failed to read version file (%s)\n", v6);
  }

  return v3 == 1 && v9 == a2;
}

BOOL ___migrate_user_partition_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *(a1 + 32);
  v5 = strlen(&v3[v4]);
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_8:
    _set_path_class(v3, 4, 0, *(a1 + 56));
    return 1;
  }

  v7 = 0;
  v8 = v5 + 1;
  v9 = (*(a1 + 48) + 16);
  v10 = 1;
  v11 = *(a1 + 40);
  while (1)
  {
    if (v8 != *(v9 - 1) || strncasecmp(&v3[v4], *(v9 - 2), v8))
    {
      goto LABEL_7;
    }

    if (*v9)
    {
      break;
    }

    if ((*v9 & 2) != 0)
    {
      if (*(a1 + 56))
      {
        fprintf(*MEMORY[0x1E69E9858], "SKIPPED: %s\n");
      }

      return v7;
    }

LABEL_7:
    v7 = v10++ >= v6;
    v9 += 12;
    if (!--v11)
    {
      goto LABEL_8;
    }
  }

  if (*(a1 + 56))
  {
    fprintf(*MEMORY[0x1E69E9858], "ALLOW LISTED: %s\n");
  }

  return v7;
}

uint64_t _aks_version_commit(int a1, char a2)
{
  __buf = a2;
  if (pwrite(a1, &__buf, 1uLL, 0) != -1)
  {
    return 0;
  }

  v2 = __error();
  v3 = *v2;
  v4 = *MEMORY[0x1E69E9848];
  v5 = strerror(*v2);
  fprintf(v4, "failed to read version file (%s)\n", v5);
  return v3;
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return open_dprotected_np(va, 514, 4, 0);
}

uint64_t aks_stash_verify(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  if (!a2)
  {
    return _aks_stash_load(a1, 1, &v4);
  }

  *a2 = 0;
  result = _aks_stash_load(a1, 1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t aks_stash_destroy()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x25u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_stash_destroy_cold_1();
  return v2;
}

uint64_t aks_stash_commit(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x24u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_commit_cold_1();
    result = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_stash_enable(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x33u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_enable_cold_1();
    result = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_stash_persist(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x35u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_persist_cold_1();
    result = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_invalidate_sync_bags()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x42u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_invalidate_sync_bags_cold_1();
  return v2;
}

uint64_t aks_unload_bag(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 4u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unload_bag_cold_1();
    result = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_unload_session_bags(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x37u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unload_session_bags_cold_1();
    result = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_change_secret_with_kek(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, unsigned __int8 a10, unsigned int a11, int a12, _DWORD *a13, void **a14)
{
  input[12] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a11;
    input[2] = a10;
    input[3] = a2;
    input[4] = a3;
    input[5] = a4;
    input[6] = a5;
    input[7] = a6;
    input[8] = a7;
    input[9] = a8;
    input[10] = a9;
    input[11] = a12 & 0xFFFFFFF7 | (8 * (a14 != 0));
    output = 0;
    outputCnt[0] = 1;
    if (a14)
    {
      outputStruct = *a14;
    }

    else
    {
      outputStruct = 0;
    }

    if (a14)
    {
      v24 = (a14 + 1);
    }

    else
    {
      v24 = 0;
    }

    result = IOConnectCallMethod(aks_client_connection, 0xFu, input, 0xCu, 0, 0, &output, outputCnt, outputStruct, v24);
    if (a13 && !result)
    {
      *a13 = output;
    }
  }

  else
  {
    aks_change_secret_with_kek_cold_1();
    result = outputCnt[1];
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_lock_bag(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0xDu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lock_bag_cold_1();
    result = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _aks_unlock_bag(int a1, uint64_t a2, int a3, unsigned int a4)
{
  input[4] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    result = IOConnectCallMethod(aks_client_connection, 0xCu, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _aks_unlock_bag_cold_1();
    result = v11;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _aks_set_system_with_passcode(int a1, int a2, uint64_t a3, int a4, unsigned int a5)
{
  input[5] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    input[4] = a5;
    result = IOConnectCallMethod(aks_client_connection, 5u, input, 5u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _aks_set_system_with_passcode_cold_1();
    result = v13;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_backup_unwrap_key(_OWORD *a1, void *a2, unsigned int a3, void *a4, void *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(&v13[16], 0, 112);
  *v13 = 0u;
  v6 = a1[1];
  *&v13[4] = *a1;
  *&v13[20] = v6;
  v7 = a1[3];
  *&v13[36] = a1[2];
  v14 = 0;
  *&v13[52] = v7;
  v11 = *a5;
  __s = 1;
  v8 = unwrap_data(&__s, 0, 0, a2, a3, a4, &v11);
  *a5 = v11;
  memset_s(&__s, 0x88uLL, 0, 0x88uLL);
  result = err_sks_to_aks(v8);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_assert_drop(int a1, unsigned int a2)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x1Bu, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_drop_cold_1();
    result = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_assert_promote(int a1, unsigned int a2)
{
  input[2] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a2;
    input[1] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x64u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_promote_cold_1();
    result = v7;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_oneness_heartbeat(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x91u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_oneness_heartbeat_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_assert_consume(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x65u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_consume_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _aks_recover_with_escrow_bag(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  input[4] = *MEMORY[0x1E69E9840];
  v23 = 0;
  v22 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v17 = aks_client_connection;
    aks_pack_data(&v23, &v22, 3, v12, v13, v14, v15, v16, a2);
    input[0] = a1;
    input[1] = v23;
    input[2] = v22;
    input[3] = a8;
    v18 = IOConnectCallMethod(v17, 0x12u, input, 4u, 0, 0, 0, 0, 0, 0);
    v19 = v23;
  }

  else
  {
    _aks_recover_with_escrow_bag_cold_1(&v24, &v25);
    v19 = v24;
    v18 = v25;
  }

  free(v19);
  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t aks_generation(int a1, unsigned int a2, _DWORD *a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    output = 0;
    outputCnt[0] = 1;
    result = IOConnectCallMethod(aks_client_connection, 0x28u, input, 2u, 0, 0, &output, outputCnt, 0, 0);
    if (a3 && !result)
    {
      *a3 = output;
    }
  }

  else
  {
    aks_generation_cold_1();
    result = outputCnt[1];
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_verify_password_with_opts(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, __int16 a31, uint64_t a32, __int16 a33, uint64_t a34, __int16 a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a1)
  {
    v51 = a3;
    if (a2)
    {
      v52 = a4;
      v53 = a5;
      v54 = a6;
      v55 = a7;
      v56 = 1;
    }

    else
    {
      v52 = a4;
      v53 = a5;
      v54 = a6;
      v55 = a7;
      v56 = 0;
    }

    v57 = 1;
  }

  else
  {
    v51 = a3;
    if (a2)
    {
      v52 = a4;
      v53 = a5;
      v54 = a6;
      v55 = a7;
      v56 = 1;
    }

    else
    {
      v52 = a4;
      v53 = a5;
      v54 = a6;
      v55 = a7;
      v56 = 0;
    }

    v57 = 0;
  }

  return _aks_verify_password(v51, v52, v53, v54, v55, v56, v57, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t aks_register_for_notifications()
{
  if (get_aks_client_connection())
  {

    JUMPOUT(0x1E12E8000);
  }

  aks_register_for_notifications_cold_1();
  return v1;
}

uint64_t aks_clear_backup_bag(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x16u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_clear_backup_bag_cold_1();
    result = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_remote_reset_all_peers(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0xA2u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_remote_reset_all_peers_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_remote_peer_drop(int a1, const void *a2, size_t a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x3Au, input, 1u, a2, a3, 0, 0, 0, 0);
  }

  else
  {
    aks_remote_peer_drop_cold_1();
    result = v8;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_lock_device(int a1, int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 8;
    }

    result = IOConnectCallMethod(aks_client_connection, v4, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lock_device_cold_1();
    result = v7;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_lock_cx(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x8Du, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lock_cx_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_unlock_device_with_acm(int a1, uint64_t a2, int a3)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unlock_device_with_acm_cold_1();
    result = v6;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_obliterate_class_d()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x13u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_obliterate_class_d_cold_1();
  return v2;
}

uint64_t aks_migrate_s_key(int a1, unsigned int a2, uint64_t a3, unsigned int a4, const void *a5, int a6)
{
  input[4] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    result = IOConnectCallMethod(aks_client_connection, 0x3Fu, input, 4u, a5, a6, 0, 0, 0, 0);
  }

  else
  {
    aks_migrate_s_key_cold_1();
    result = v15;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_smartcard_unregister(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x3Cu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_smartcard_unregister_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_fail(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x47u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_fail_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_set_healthy(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x49u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_set_healthy_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __aks_se_set_secret(int a1, uint64_t a2, uint64_t a3, uint32_t a4)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, a4, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    __aks_se_set_secret_cold_1();
    result = v8;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_recover(int a1, uint64_t a2, uint64_t a3)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_recover_cold_1();
    result = v6;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_recover_with_acm(int a1, uint64_t a2, uint64_t a3)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_recover_with_acm_cold_1();
    result = v6;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_recover_with_opts(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return aks_se_recover_with_acm(a2, a3, a4);
  }

  else
  {
    return aks_se_recover(a2, a3, a4);
  }
}

uint64_t _aks_change_secret_epilogue(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = a4;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x69u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _aks_change_secret_epilogue_cold_1();
    result = v7;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_set_nonce(int a1, const void *a2, size_t a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (a2)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    result = IOConnectCallMethod(aks_client_connection, 0x58u, input, 1u, a2, v6, 0, 0, 0, 0);
  }

  else
  {
    aks_se_set_nonce_cold_1();
    result = v9;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_delete_reset_token(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x5Bu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_delete_reset_token_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_support_in_rm(unsigned int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x5Eu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_support_in_rm_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_support_in_rm_is_set(BOOL *a1)
{
  output[1] = *MEMORY[0x1E69E9840];
  output[0] = 0;
  outputCnt[0] = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x6Bu, 0, 0, 0, 0, output, outputCnt, 0, 0);
    if (a1 && !result)
    {
      *a1 = output[0] != 0;
    }
  }

  else
  {
    aks_se_support_in_rm_is_set_cold_1();
    result = outputCnt[1];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_stage_stash()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Fu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_se_stage_stash_cold_1();
  return v2;
}

uint64_t aks_enable_cache_flow(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0xA0u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_enable_cache_flow_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_fv_stash_kek_with_secret(int a1)
{
  v1 = 8;
  if (a1)
  {
    v1 = 12;
  }

  v5 = v1;
  aks_fv_set_protection();
  v3 = v2;
  syslog(6, "aks_fv_prot_cmd_stash_kek(%llu) = %d", v5, v2);
  return v3;
}

uint64_t aks_fv_commit_stashed_kek()
{
  aks_fv_set_protection();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_commit = %d", v0);
  return v1;
}

uint64_t aks_fv_destroy_stashed_kek()
{
  aks_fv_set_protection();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_destroy = %d", v0);
  return v1;
}

uint64_t aks_drop_auxiliary_auth_by_uid(unsigned int a1)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = 0;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_drop_auxiliary_auth_by_uid_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_drop_auxiliary_auth_by_handle(int a1)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = 1;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_drop_auxiliary_auth_by_handle_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_lower_iteration_count()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_lower_iteration_count_cold_1();
  return v2;
}

uint64_t aks_reset_iteration_count()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_reset_iteration_count_cold_1();
  return v2;
}

uint64_t aks_se_secret_drop(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x6Au, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_secret_drop_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_memento_secret_drop(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x9Cu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_memento_secret_drop_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_prewarm_sps()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x73u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_prewarm_sps_cold_1();
  return v2;
}

uint64_t aks_measure_and_seal_cryptex_manifest(const void *a1, size_t a2)
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x90u, 0, 0, a1, a2, 0, 0, 0, 0);
  }

  aks_measure_and_seal_cryptex_manifest_cold_1();
  return v6;
}

uint64_t aks_seal_cryptex_manifest_lock()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x95u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_seal_cryptex_manifest_lock_cold_1();
  return v2;
}

uint64_t aks_lkgp_recover(int a1, uint64_t a2, uint64_t a3)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x85u, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lkgp_recover_cold_1();
    result = v6;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_memento_efface_blob(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x8Au, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_memento_efface_blob_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_set_jcop_supports_updated_kud_policy()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x89u, &input, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_set_jcop_supports_updated_kud_policy_cold_1();
  return HIDWORD(input);
}

uint64_t aks_set_cx_window(uint64_t a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x97u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_set_cx_window_cold_1();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_36_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x72u);
}

void OUTLINED_FUNCTION_41_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x72u);
}

uint64_t OUTLINED_FUNCTION_48_0(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_49_0(mach_port_t a1, uint32_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, 0, 0, a5, a6, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_74(void *a1)
{

  return memset_s(a1, 0x20uLL, 0, 0x20uLL);
}

void OUTLINED_FUNCTION_93(uint64_t a1@<X8>)
{
  *(a1 + 90) = v2;
  *(a1 + 96) = v1;
  *(a1 + 106) = v1;
}

char *OUTLINED_FUNCTION_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, char *a14)
{

  return aks_pack_data(&a14, &a13, 1, a4, a5, a6, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_97(void *a1)
{

  return memset_s(a1, 0x4000uLL, 0, 0x4000uLL);
}

char *OUTLINED_FUNCTION_98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, char *a13)
{

  return aks_pack_data(&a13, &a12, 1, a4, a5, a6, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memset_s(&a9, 0x58uLL, 0, 0x58uLL);
}

void OUTLINED_FUNCTION_120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  bzero(&a29, 0x1000uLL);
}

uint64_t AKSIdentityCreateInternal(const __CFUUID *a1, const __CFData *a2, int a3, const __CFData *a4, int a5, CFTypeRef *a6)
{
  input[2] = *MEMORY[0x1E69E9840];
  v23 = CFUUIDGetUUIDBytes(a1);
  *&inputStructCnt[1] = 0;
  v16 = 2;
  if (!a5)
  {
    v16 = 0;
  }

  input[0] = a3;
  input[1] = v16;
  output = 0;
  outputCnt = 1;
  inputStructCnt[0] = 0;
  if (a2)
  {
    CFDataGetBytePtr(a2);
    CFDataGetLength(a2);
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    CFDataGetBytePtr(a4);
    CFDataGetLength(a4);
  }

LABEL_7:
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 3, v11, v12, v13, v14, v15, &v23);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v18 = IOConnectCallMethod(aks_client_connection, 0x76u, input, 2u, *&inputStructCnt[1], inputStructCnt[0], &output, &outputCnt, 0, 0);
    free(*&inputStructCnt[1]);
    if (!v18)
    {
      result = 1;
      goto LABEL_11;
    }
  }

  else
  {
    AKSIdentityCreateInternal_cold_1(&inputStructCnt[1]);
    v18 = 3758097084;
  }

  create_error(v18, a6);
  result = 0;
LABEL_11:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AKSIdentityMigrateFirst(const __CFUUID *a1, CFTypeRef *a2)
{
  v12 = CFUUIDGetUUIDBytes(a1);
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 1, v3, v4, v5, v6, v7, &v12);
  aks_client_connection = get_aks_client_connection();
  if (!aks_client_connection)
  {
    AKSIdentityMigrateFirst_cold_1(&inputStructCnt[1]);
    v9 = 3758097084;
    goto LABEL_3;
  }

  v9 = IOConnectCallMethod(aks_client_connection, 0x7Fu, 0, 0, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  free(*&inputStructCnt[1]);
  if (v9)
  {
LABEL_3:
    create_error(v9, a2);
    return 0;
  }

  return 1;
}

uint64_t AKSIdentityCreate(const __CFUUID *a1, const __CFData *a2, int a3, const __CFData *a4, CFTypeRef *a5)
{
  if (a3 >= 10)
  {
    v5 = -a3;
  }

  else
  {
    v5 = -1;
  }

  return AKSIdentityCreateInternal(a1, a2, v5, a4, 0, a5);
}

uint64_t AKSIdentityCreateWithACM(const __CFUUID *a1, const __CFData *a2, int a3, const __CFData *a4, CFTypeRef *a5)
{
  if (a3 >= 10)
  {
    v5 = -a3;
  }

  else
  {
    v5 = -1;
  }

  return AKSIdentityCreateInternal(a1, a2, v5, a4, 1, a5);
}

uint64_t AKSIdentityDelete(const __CFUUID *a1, CFTypeRef *a2)
{
  v12 = CFUUIDGetUUIDBytes(a1);
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 1, v3, v4, v5, v6, v7, &v12);
  aks_client_connection = get_aks_client_connection();
  if (!aks_client_connection)
  {
    AKSIdentityDelete_cold_1(&inputStructCnt[1]);
    v9 = 3758097084;
    goto LABEL_3;
  }

  v9 = IOConnectCallMethod(aks_client_connection, 0x77u, 0, 0, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  free(*&inputStructCnt[1]);
  if (v9)
  {
LABEL_3:
    create_error(v9, a2);
    return 0;
  }

  return 1;
}

uint64_t _AKSIdentityChangePasscode(int a1, CFDataRef theData, const __CFData *a3, unsigned int a4, CFTypeRef *a5)
{
  input[2] = *MEMORY[0x1E69E9840];
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  input[0] = -a1;
  input[1] = a4;
  BytePtr = CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  CFDataGetBytePtr(a3);
  CFDataGetLength(a3);
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 2, v9, v10, v11, v12, v13, BytePtr);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v15 = IOConnectCallMethod(aks_client_connection, 0x7Cu, input, 2u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
    free(*&inputStructCnt[1]);
    if (!v15)
    {
      result = 1;
      goto LABEL_5;
    }
  }

  else
  {
    _AKSIdentityChangePasscode_cold_1(&inputStructCnt[1]);
    v15 = 3758097084;
  }

  create_error(v15, a5);
  result = 0;
LABEL_5:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AKSIdentityLoad(const __CFUUID *a1, int a2, CFTypeRef *a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  if (a2 >= 10)
  {
    v4 = -a2;
  }

  else
  {
    v4 = -1;
  }

  v16 = CFUUIDGetUUIDBytes(a1);
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  input[0] = v4;
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 1, v5, v6, v7, v8, v9, &v16);
  aks_client_connection = get_aks_client_connection();
  if (!aks_client_connection)
  {
    AKSIdentityLoad_cold_1(&inputStructCnt[1]);
    v12 = 3758097084;
    goto LABEL_6;
  }

  v11 = 1;
  v12 = IOConnectCallMethod(aks_client_connection, 0x78u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  free(*&inputStructCnt[1]);
  if (v12)
  {
LABEL_6:
    create_error(v12, a3);
    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

BOOL AKSIdentityUnlockSession(int a1, const __CFData *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 10)
  {
    v8 = -a1;
  }

  else
  {
    v8 = -1;
  }

  return AKSIdentityUnlockInternal(v8, a2, 0, a3, a5, a6, a7, a8);
}

uint64_t AKSIdentityUnload(int a1, CFTypeRef *a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  if (a1 >= 10)
  {
    v3 = -a1;
  }

  else
  {
    v3 = -1;
  }

  input[0] = v3;
  aks_client_connection = get_aks_client_connection();
  if (!aks_client_connection)
  {
    AKSIdentityUnload_cold_1();
    v6 = v9;
    goto LABEL_6;
  }

  v5 = 1;
  v6 = IOConnectCallMethod(aks_client_connection, 0x79u, input, 1u, 0, 0, 0, 0, 0, 0);
  if (v6)
  {
LABEL_6:
    create_error(v6, a2);
    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

CFErrorRef create_error(CFErrorRef result, CFTypeRef *a2)
{
  if (a2)
  {
    v3 = result;
    if (*a2)
    {
      CFRelease(*a2);
      *a2 = 0;
    }

    result = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E638], v3, 0);
    *a2 = result;
  }

  return result;
}

BOOL AKSIdentityUnlockInternal(int a1, CFDataRef theData, int a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  input[1] = *MEMORY[0x1E69E9840];
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  input[0] = a1;
  if (a3)
  {
    v12 = 154;
  }

  else
  {
    v12 = 123;
  }

  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
  }

  else
  {
    BytePtr = 0;
  }

  aks_pack_data(&inputStructCnt[1], inputStructCnt, 1, a4, a5, a6, a7, a8, BytePtr);
  aks_client_connection = get_aks_client_connection();
  if (!aks_client_connection)
  {
    AKSIdentityUnlockInternal_cold_5(&valuePtr, &v30);
    Mutable = valuePtr;
    v16 = v30;
    goto LABEL_14;
  }

  v15 = IOConnectCallMethod(aks_client_connection, v12, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  if (v15 != -536362987)
  {
    v16 = v15;
    goto LABEL_13;
  }

  v16 = 3758097126;
  if (!MobileKeyBagLibraryCore())
  {
LABEL_13:
    Mutable = 0;
LABEL_14:
    free(*&inputStructCnt[1]);
    goto LABEL_31;
  }

  if (a1 == -3)
  {
    Mutable = 0;
    v18 = 0;
    goto LABEL_18;
  }

  LODWORD(valuePtr) = uid_from_handle(a1);
  v19 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable || (v20 = CFNumberCreate(v19, kCFNumberIntType, &valuePtr)) == 0)
  {
    v16 = 3758097085;
    goto LABEL_14;
  }

  v18 = v20;
  CFDictionaryAddValue(Mutable, @"DeviceHandle", v20);
LABEL_18:
  v21 = MobileKeyBagLibraryCore();
  if (a3)
  {
    if (v21 && getMKBUnlockDeviceWithACMSymbolLoc())
    {
      MKBUnlockDeviceWithACMSymbolLoc = getMKBUnlockDeviceWithACMSymbolLoc();
      if (MKBUnlockDeviceWithACMSymbolLoc)
      {
        v23 = MKBUnlockDeviceWithACMSymbolLoc(theData, Mutable);
        if (v23)
        {
          AKSIdentityUnlockInternal_cold_3(v23, &valuePtr);
LABEL_41:
          v16 = convertMKBErrorToAKS(valuePtr);
          goto LABEL_29;
        }

LABEL_28:
        v16 = 0;
        goto LABEL_29;
      }

      AKSIdentityUnlockInternal_cold_2();
      goto LABEL_39;
    }
  }

  else if (v21 && getMKBUnlockDeviceSymbolLoc())
  {
    MKBUnlockDeviceSymbolLoc = getMKBUnlockDeviceSymbolLoc();
    if (MKBUnlockDeviceSymbolLoc)
    {
      v25 = MKBUnlockDeviceSymbolLoc(theData, Mutable);
      if (!v25)
      {
        goto LABEL_28;
      }

LABEL_40:
      AKSIdentityUnlockInternal_cold_1(v25, &valuePtr);
      goto LABEL_41;
    }

LABEL_39:
    v25 = AKSIdentityUnlockInternal_cold_2();
    goto LABEL_40;
  }

LABEL_29:
  free(*&inputStructCnt[1]);
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_31:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    create_error(v16, a4);
  }

  result = v16 == 0;
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL AKSIdentityCopyVolumeCookie(int a1, CFUUIDRef uuid, CFDataRef *a3, CFTypeRef *a4)
{
  if (a1 >= 10)
  {
    v6 = -a1;
  }

  else
  {
    v6 = -1;
  }

  v11 = 0;
  v12 = 0;
  if (uuid)
  {
    v10 = CFUUIDGetUUIDBytes(uuid);
    v7 = aks_copy_volume_cookie_persona(v6, &v10, &v12, &v11);
  }

  else
  {
    v7 = aks_copy_volume_cookie(v6, &v12, &v11);
  }

  v8 = v7;
  if (v7)
  {
    create_error(v7, a4);
  }

  else
  {
    *a3 = CFDataCreate(*MEMORY[0x1E695E480], v12, v11);
    aks_dealloc(v12, v11);
  }

  return v8 == 0;
}

BOOL AKSVolumeMapByUUID(const __CFUUID *a1, int a2, const __CFUUID *a3, const __CFData *a4, CFTypeRef *a5)
{
  v17 = CFUUIDGetUUIDBytes(a1);
  if (a3)
  {
    v16 = CFUUIDGetUUIDBytes(a3);
    BytePtr = CFDataGetBytePtr(a4);
    Length = CFDataGetLength(a4);
    v11 = aks_set_keybag_for_volume_with_cookie_persona(a2, &v17, 0, BytePtr, Length, &v16);
  }

  else
  {
    v12 = CFDataGetBytePtr(a4);
    v13 = CFDataGetLength(a4);
    v11 = aks_set_keybag_for_volume_with_cookie(a2, &v17, 0, v12, v13);
  }

  v14 = v11;
  if (v11)
  {
    create_error(v11, a5);
  }

  return v14 == 0;
}

BOOL AKSVolumeUnmapByUUID(const __CFUUID *a1, CFTypeRef *a2)
{
  v6 = CFUUIDGetUUIDBytes(a1);
  v3 = aks_set_keybag_for_volume(-1, &v6, 0);
  v4 = v3;
  if (v3)
  {
    create_error(v3, a2);
  }

  return v4 == 0;
}

CFUUIDRef copy_apfs_volume_uuid_for_disk(const __CFString *a1, CFTypeRef *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  properties = 0;
  if (!CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    v18 = 3758604298;
LABEL_14:
    create_error(v18, a2);
    goto LABEL_18;
  }

  v4 = *MEMORY[0x1E696CD68];
  v5 = IOBSDNameMatching(*MEMORY[0x1E696CD68], 0, buffer);
  MatchingService = IOServiceGetMatchingService(v4, v5);
  if (!MatchingService)
  {
    v18 = 3758097090;
    goto LABEL_14;
  }

  v7 = MatchingService;
  if (IOObjectConformsTo(MatchingService, "AppleAPFSVolume"))
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = IORegistryEntryCreateCFProperties(v7, &properties, *MEMORY[0x1E695E480], 0);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 3758604298;
      Value = CFDictionaryGetValue(properties, @"UUID");
      if (Value)
      {
        v12 = Value;
        v13 = CFGetTypeID(Value);
        if (v13 == CFStringGetTypeID())
        {
          v14 = CFUUIDCreateFromString(v8, v12);
          if (v14)
          {
            v15 = v14;
            IOObjectRelease(v7);
            goto LABEL_9;
          }
        }
      }
    }
  }

  else
  {
    v10 = 3758097090;
  }

  create_error(v10, a2);
  IOObjectRelease(v7);
LABEL_18:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136318210;
    v21 = "aks.fw";
    v22 = 2080;
    v23 = "";
    v24 = 1024;
    v25 = -1;
    v26 = 2080;
    v27 = "";
    v28 = 2080;
    v29 = "";
    v30 = 2080;
    v31 = "";
    v32 = 2080;
    v33 = "";
    v34 = 2080;
    v35 = "copy_apfs_volume_uuid_for_disk";
    v36 = 2080;
    v37 = ":";
    v38 = 1024;
    v39 = 872;
    v40 = 2080;
    v41 = "";
    v42 = 2080;
    v43 = buffer;
    v44 = 2080;
    v45 = "";
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to get volume UUID for %s%s\n", buf, 0x7Cu);
  }

  v15 = 0;
LABEL_9:
  if (properties)
  {
    CFRelease(properties);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t AKSIdentityCopyGroupUUIDBytes(uint64_t a1, _OWORD *a2, CFTypeRef *a3)
{
  v4 = 3758097090;
  value = 0;
  theDict = 0;
  if (!a2)
  {
LABEL_10:
    create_error(v4, a3);
    return 0;
  }

  aks_get_configuration();
  if (v6)
  {
    v4 = v6;
  }

  else if (CFDictionaryGetValueIfPresent(theDict, @"GroupUUID", &value))
  {
    v7 = CFGetTypeID(value);
    if (v7 == CFDataGetTypeID())
    {
      if (CFDataGetLength(value) == 16)
      {
        v4 = 0;
        *a2 = *CFDataGetBytePtr(value);
        goto LABEL_7;
      }

      AKSIdentityCopyGroupUUIDBytes_cold_2();
    }

    else
    {
      AKSIdentityCopyGroupUUIDBytes_cold_1();
    }

    v4 = v11;
  }

  else
  {
    v4 = 3758097136;
  }

LABEL_7:
  if (theDict)
  {
    CFRelease(theDict);
    theDict = 0;
  }

  if (v4)
  {
    goto LABEL_10;
  }

  return 1;
}

uint64_t AKSIdentityCopyUserUUIDBytes(uint64_t a1, _OWORD *a2, CFTypeRef *a3)
{
  v4 = 3758097090;
  value = 0;
  theDict = 0;
  if (!a2)
  {
LABEL_10:
    create_error(v4, a3);
    return 0;
  }

  aks_get_configuration();
  if (v6)
  {
    v4 = v6;
  }

  else if (CFDictionaryGetValueIfPresent(theDict, @"UserUUID", &value))
  {
    v7 = CFGetTypeID(value);
    if (v7 == CFDataGetTypeID())
    {
      if (CFDataGetLength(value) == 16)
      {
        v4 = 0;
        *a2 = *CFDataGetBytePtr(value);
        goto LABEL_7;
      }

      AKSIdentityCopyUserUUIDBytes_cold_2();
    }

    else
    {
      AKSIdentityCopyUserUUIDBytes_cold_1();
    }

    v4 = v11;
  }

  else
  {
    v4 = 3758097136;
  }

LABEL_7:
  if (theDict)
  {
    CFRelease(theDict);
    theDict = 0;
  }

  if (v4)
  {
    goto LABEL_10;
  }

  return 1;
}

BOOL AKSIdentityUnlockSessionWithACMCred(int a1, const __CFData *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 10)
  {
    v8 = -a1;
  }

  else
  {
    v8 = -1;
  }

  return AKSIdentityUnlockInternal(v8, a2, 1, a3, a5, a6, a7, a8);
}

uint64_t AKSIdentityLockInternal(int a1, CFTypeRef *a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (!aks_client_connection)
  {
    AKSIdentityLockInternal_cold_1();
    v5 = v8;
    goto LABEL_3;
  }

  v4 = 1;
  v5 = IOConnectCallMethod(aks_client_connection, 0x7Au, input, 1u, 0, 0, 0, 0, 0, 0);
  if (v5)
  {
LABEL_3:
    create_error(v5, a2);
    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t AKSIdentityLockSession(int a1, CFTypeRef *a2)
{
  if (a1 >= 10)
  {
    v2 = -a1;
  }

  else
  {
    v2 = -1;
  }

  return AKSIdentityLockInternal(v2, a2);
}

BOOL _AKSIdentityAddPersonaWithACM(int a1, const __CFData *a2, int a3, CFUUIDRef uuid, CFTypeRef *a5)
{
  if (a1 >= 10)
  {
    v8 = -a1;
  }

  else
  {
    v8 = -1;
  }

  v14 = CFUUIDGetUUIDBytes(uuid);
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  if (a3)
  {
    v11 = aks_keybag_persona_create_with_flags(v8, BytePtr, Length, &v14, 1u);
  }

  else
  {
    v11 = aks_keybag_persona_create();
  }

  v12 = v11;
  if (v11)
  {
    create_error(v11, a5);
  }

  return v12 == 0;
}

BOOL AKSIdentityDeletePersona(int a1, CFUUIDRef uuid, CFTypeRef *a3)
{
  CFUUIDGetUUIDBytes(uuid);
  v4 = aks_keybag_persona_delete();
  v5 = v4;
  if (v4)
  {
    create_error(v4, a3);
  }

  return v5 == 0;
}

uint64_t AKSIdentityGetPrimary(CFUUIDRef *a1, CFUUIDRef *a2, CFTypeRef *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(outputStruct, 0, sizeof(outputStruct));
  v14 = 256;
  *&v17.byte0 = 0;
  *&v17.byte8 = 0;
  *&v16.byte0 = 0;
  *&v16.byte8 = 0;
  input[1] = 0;
  input[2] = 0;
  aks_client_connection = get_aks_client_connection();
  if (!aks_client_connection)
  {
    AKSIdentityGetPrimary_cold_1();
    v8 = LODWORD(input[0]);
    goto LABEL_12;
  }

  v7 = IOConnectCallMethod(aks_client_connection, 0x7Du, input, 0, 0, 0, 0, 0, outputStruct, &v14);
  if (v7)
  {
    v8 = v7;
    goto LABEL_12;
  }

  v8 = 3758604298;
  if (HIDWORD(v14))
  {
LABEL_12:
    create_error(v8, a3);
    result = 0;
    goto LABEL_8;
  }

  if (decode_primary_identity_state(outputStruct))
  {
    v8 = 3758604307;
    goto LABEL_12;
  }

  v8 = 3758097090;
  v9 = *MEMORY[0x1E695E480];
  v10 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v17);
  *a1 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = CFUUIDCreateFromUUIDBytes(v9, v16);
  *a2 = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  result = 1;
LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _AKSIdentityTransferPrimary(int a1, const __CFData *a2, int a3, const __CFData *a4, unsigned int a5, CFTypeRef *a6)
{
  if (a1 >= 10)
  {
    v7 = -a1;
  }

  else
  {
    v7 = -1;
  }

  if (a3 >= 10)
  {
    v8 = -a3;
  }

  else
  {
    v8 = -1;
  }

  v9 = _transfer_primary_identity(v7, a2, v8, a4, a5);
  v10 = v9;
  if (v9)
  {
    create_error(v9, a6);
  }

  return v10 == 0;
}

BOOL _AKSIdentitySetPrimary(int a1, const __CFData *a2, unsigned int a3, CFTypeRef *a4)
{
  v5 = _transfer_primary_identity(-1, 0, -a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    create_error(v5, a4);
  }

  return v6 == 0;
}

uint64_t AKSGetLastUser(CFUUIDRef *a1, CFTypeRef *a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = 2;
  memset(outputStruct, 0, sizeof(outputStruct));
  v9 = 256;
  aks_client_connection = get_aks_client_connection();
  if (!aks_client_connection)
  {
    AKSGetLastUser_cold_1();
    v5 = v10;
    goto LABEL_10;
  }

  v5 = IOConnectCallMethod(aks_client_connection, 0x80u, input, 1u, 0, 0, 0, 0, outputStruct, &v9);
  if (v5)
  {
LABEL_10:
    create_error(v5, a2);
    result = 0;
    goto LABEL_6;
  }

  if (v9 != 16)
  {
    v5 = 3758604298;
    goto LABEL_10;
  }

  v6 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], outputStruct[0]);
  *a1 = v6;
  if (!v6)
  {
    v5 = 3758097090;
    goto LABEL_10;
  }

  result = 1;
LABEL_6:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AKSVolumeBootstrapFS(const __CFString *a1, int a2, CFTypeRef *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    if (a2)
    {
      v6 = aks_bootstrap_user_fs(buffer);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v6 = aks_bootstrap_fs(buffer, 0);
      if (!v6)
      {
LABEL_7:
        result = 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v6 = 3758604298;
  }

  create_error(v6, a3);
  result = 0;
LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AKSVolumeAllowlistFS(const __CFString *a1, int a2, CFTypeRef *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    if (a2)
    {
      v6 = aks_setupallowlist_user_fs(buffer, 0);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v6 = aks_setupallowlist_fs(buffer);
      if (!v6)
      {
LABEL_7:
        result = 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v6 = 3758604298;
  }

  create_error(v6, a3);
  result = 0;
LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _get_info(uint64_t a1, CFMutableDictionaryRef *a2, CFTypeRef *a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = cf_set_lock_state(a1, Mutable);
  if (v7)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    create_error(v7, a3);
  }

  else
  {
    *a2 = Mutable;
  }

  return v7 == 0;
}

BOOL AKSIdentityGetInfo(int a1, CFMutableDictionaryRef *a2, CFTypeRef *a3)
{
  if (a1 >= 10)
  {
    v3 = -a1;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  return _get_info(v3, a2, a3);
}

BOOL AKSIdentityGetTimeWindows(int a1, void *a2, void *a3, CFTypeRef *a4)
{
  if (a1 >= 10)
  {
    v4 = -a1;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return get_time_windows(v4, a2, a3, a4);
}

BOOL get_time_windows(uint64_t a1, void *a2, void *a3, CFTypeRef *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  internal_state = aks_get_internal_state(a1);
  v8 = internal_state;
  if (internal_state)
  {
    create_error(internal_state, a4);
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = *&v11[12];
    }
  }

  result = v8 == 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t convertMKBErrorToAKS(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a1 + 20;
  if (a1 + 20) < 0x13 && ((0x618CBu >> v2))
  {
    v3 = dword_1E0BAB908[v2];
  }

  else
  {
    v3 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a1;
      _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unexpected MobileKeyBag error: %d\n", v6, 8u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t MobileKeyBagLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = MobileKeyBagLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getMKBUnlockDeviceWithACMSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v0 = getMKBUnlockDeviceWithACMSymbolLoc_ptr;
  v6 = getMKBUnlockDeviceWithACMSymbolLoc_ptr;
  if (!getMKBUnlockDeviceWithACMSymbolLoc_ptr)
  {
    v1 = MobileKeyBagLibrary();
    v4[3] = dlsym(v1, "MKBUnlockDeviceWithACM");
    getMKBUnlockDeviceWithACMSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void *__getMKBUnlockDeviceWithACMSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBUnlockDeviceWithACM");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBUnlockDeviceWithACMSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileKeyBagLibrary()
{
  v0 = MobileKeyBagLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getMKBUnlockDeviceSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v0 = getMKBUnlockDeviceSymbolLoc_ptr;
  v6 = getMKBUnlockDeviceSymbolLoc_ptr;
  if (!getMKBUnlockDeviceSymbolLoc_ptr)
  {
    v1 = MobileKeyBagLibrary();
    v4[3] = dlsym(v1, "MKBUnlockDevice");
    getMKBUnlockDeviceSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void *__getMKBUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _transfer_primary_identity(int a1, CFDataRef theData, int a3, const __CFData *a4, unsigned int a5)
{
  v20 = *MEMORY[0x1E69E9840];
  input[0] = a1;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  v18 = 0u;
  input[1] = BytePtr;
  input[2] = Length;
  input[3] = a3;
  if (a4)
  {
    v11 = CFDataGetBytePtr(a4);
    v12 = CFDataGetLength(a4);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  *&v18 = v11;
  *(&v18 + 1) = v12;
  v19 = a5;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x7Eu, input, 7u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _transfer_primary_identity_cold_1();
    result = v16;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void elidableClearMemory(_:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
    if (v2 >= 1)
    {
      bzero(a1, v2);
    }
  }
}

void *wipeSensitiveMemory(_:)(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = a2 - result;
    if (v2 >= 1)
    {
      return wipeSensitiveMemory(result, v2);
    }
  }

  return result;
}

void *copyMemory(to:from:count:)(void *__dst, const void *__src, size_t __n)
{
  if ((__n & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (__n)
  {
    return memcpy(__dst, __src, __n);
  }

  return __dst;
}

BOOL timingSafeIsMemoryEqual(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  if (a3)
  {
    result = v5 == a4 - a3;
    if (a1 && v5 == a4 - a3)
    {
      return a2 == a1 || cc_cmp_safe() == 0;
    }
  }

  else
  {
    result = v5 == 0;
    if (a1 && !v5)
    {
      if (a2 == a1)
      {
        return 1;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unsigned __int8 *timingSafeContainsNonZeroBytes(_:)(unsigned __int8 *result, uint64_t a2)
{
  v2 = a2 - result;
  if (!result)
  {
    v2 = 0;
  }

  if (v2 < 0)
  {
    __break(1u);
  }

  else if (v2)
  {
    v3 = 0;
    do
    {
      v4 = *result++;
      v3 |= v4;
      --v2;
    }

    while (v2);
    return (v3 != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E0B62254(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 - 8) + 64);
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = v5 + result;
      return a3(result, v6);
    }

    __break(1u);
  }

  else if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    return a3(result, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0B62338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v12 = a6(a3, 1, a4);
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20 = a2;
  return sub_1E0B62470(MEMORY[0x1E69E7508], a7, v16, v12, v13, a4, MEMORY[0x1E69E7508], MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], v15);
}

uint64_t sub_1E0B6240C(uint64_t result)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = *(*(v2 - 8) + 64);
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = v5 + result;
      return v3(result, v6);
    }

    __break(1u);
  }

  else if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    return v3(result, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0B62470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(a8 - 8);
  v14 = *(v13 + 64);
  v15 = (MEMORY[0x1EEE9AC00])();
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v15);
  v25 = v30 - v24;
  if (v19)
  {
    v26 = *(*(v22 - 8) + 72);
    v27 = *(*(v21 - 8) + 72);
    if (v26 == v27)
    {
      goto LABEL_10;
    }

    v28 = v20 * v27;
    if ((v20 * v27) >> 64 == (v20 * v27) >> 63)
    {
      if (v26)
      {
        if (v28 != 0x8000000000000000 || v26 != -1)
        {
          v20 = v28 / v26;
LABEL_10:
          result = v23(v19, v20, v17);
          if (!v11)
          {
            return result;
          }

          return (*(v13 + 32))(a11, v17, a8);
        }

LABEL_17:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  result = v23(0, 0, v30 - v24);
  v17 = v25;
  if (v11)
  {
    return (*(v13 + 32))(a11, v17, a8);
  }

  return result;
}

uint64_t _s13AppleKeyStore6SharedCAARi_zrlEyACyxGxcfC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  _s13AppleKeyStore6SharedCAARi_zrlEyACyxGxcfc(a1);
  return v5;
}

uint64_t *_s13AppleKeyStore6SharedCAARi_zrlEyACyxGxcfc(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + v4, a1);
  return v1;
}

uint64_t _s13AppleKeyStore6SharedCAARi_zrlE4take11replaceWithxxn_tF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  swift_beginAccess();
  v7 = *(v5 + 80);
  sub_1E0BA8EB8();
  swift_endAccess();
  return (*(*(v7 - 8) + 32))(a2, a1, v7);
}

uint64_t (*_s13AppleKeyStore6SharedCAARi_zrlE5valuexvr())()
{
  v1 = *(*v0 + 88);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t _s13AppleKeyStore6SharedCAARi_zrlE5valuexvs(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  (*(v6 + 8))(v1 + v4, v5);
  (*(v6 + 32))(v1 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t (*_s13AppleKeyStore6SharedCAARi_zrlE5valuexvM())()
{
  v1 = *(*v0 + 88);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t _s13AppleKeyStore6SharedCAARi_zrlEfD()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E0B62A84(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _sSw13AppleKeyStoreE23withInsecureUnsafeBytesyxxSWXERi_zlF(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
  }

  else
  {
    v4 = 0;
  }

  return a1(a3, v4);
}

uint64_t _sSR13AppleKeyStores5UInt8VRszlE23withInsecureUnsafeBytesyqd__qd__SWXERi_d__lF(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4 + a3;
  }

  else
  {
    v4 = 0;
  }

  return a1(a3, v4);
}

uint64_t _ss5SliceV13AppleKeyStoreAC10SourceDataRzs5UInt8V7ElementSTRtzSi5IndexSlRtzrlE23withInsecureUnsafeBytesyqd__qd__SWXERi_d__lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1E12E7CB0](v16);
  v20 = v11;
  v21 = a4;
  v17 = *(a3 + 24);
  v22 = a5;
  v23 = v17;
  v24 = a1;
  v25 = a2;
  v26 = v5;
  (*(a5 + 16))(sub_1E0B62E3C, v19, a4, v11, a5);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1E0B62D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1E0BA8F38();
  sub_1E0BA8F08();
  result = sub_1E0BA8F28();
  if (v8 < v9)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v6 = a1 + v8;
    }

    else
    {
      v6 = 0;
    }

    if (a1)
    {
      v7 = a1 + v9;
    }

    else
    {
      v7 = 0;
    }

    return a3(v7, v6);
  }

  return result;
}

uint64_t sub_1E0B62E3C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v9 = *(v2 + 40);
  return sub_1E0B62D8C(a1, a2, *(v2 + 48));
}

uint64_t sub_1E0B62E70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69908](a1, WitnessTable);
}

uint64_t _sSa13AppleKeyStores5UInt8VRszlE23withInsecureUnsafeBytesyqd__qd__SWXERi_d__lF@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1E0BA8D78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20[-v16];
  v18 = *(a4 - 8);
  (*(v18 + 56))(&v20[-v16], 1, 1, a4);
  sub_1E0B630B0(a3 + 32, *(a3 + 16), v17, a1, a2, a4);
  (*(v11 + 32))(v15, v17, v10);
  if ((*(v18 + 48))(v15, 1, a4) != 1)
  {
    return (*(v18 + 32))(a5, v15, a4);
  }

  __break(1u);
  result = MEMORY[0x1E12E8B70](0);
  __break(1u);
  return result;
}

uint64_t sub_1E0B630B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = sub_1E0BA8D78();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if (a1)
  {
    v16 = a2 + a1;
  }

  else
  {
    v16 = 0;
  }

  a4(a1, v16);
  v17 = *(a6 - 8);
  (*(v17 + 56))(v15, 0, 1, a6);
  if ((*(v17 + 48))(a3, 1, a6) != 1)
  {
    (*(v12 + 8))(a3, v11);
  }

  return (*(v12 + 32))(a3, v15, v11);
}

void SensitiveRawBuffer.init(count:)(size_t a1@<X0>, void *a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (a1)
  {
    v4 = swift_slowAlloc();
    *a2 = v4;
    a2[1] = &v4[a1];
    if (v4)
    {

      bzero(v4, a1);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void SensitiveRawBuffer.deinit()
{
  if (*v0)
  {
    v1 = *(v0 + 8) - *v0;
    if (v1 >= 1)
    {
      wipeSensitiveMemory(*v0, v1);
    }

    JUMPOUT(0x1E12E8C80);
  }
}

uint64_t _s13AppleKeyStore18SensitiveRawBufferV23withInsecureUnsafeBytesyxxSWXERi_zlF(uint64_t (*a1)(void))
{
  if (*v1)
  {
    v2 = v1[1];
  }

  return a1();
}

Swift::UInt8 __swiftcall SensitiveRawBuffer.insecureReadByte(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return a1;
  }

  v2 = v1[1] - *v1;
  if (!*v1)
  {
    v2 = 0;
  }

  if (v2 <= a1)
  {
    goto LABEL_7;
  }

  LOBYTE(a1) = *(*v1 + a1);
  return a1;
}

Swift::Void __swiftcall SensitiveRawBuffer.writeByte(_:value:)(Swift::Int _, Swift::UInt8 value)
{
  if ((_ & 0x8000000000000000) == 0)
  {
    v3 = *v2;
    if (*v2)
    {
      if (v2[1] - v3 > _)
      {
LABEL_4:
        *(v3 + _) = value;
        return;
      }
    }

    else if (_ < 0)
    {
      goto LABEL_4;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t SensitiveRawBuffer.count.getter()
{
  if (*v0)
  {
    return v0[1] - *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E0B63464(uint64_t (*a1)(void))
{
  if (*v1)
  {
    v2 = v1[1];
  }

  return a1();
}

double _s13AppleKeyStore18SensitiveRawBufferVyACxhcAA10SourceDataRzRi_zlufC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  (*(a2 + 16))(&v5, sub_1E0B6351C, 0, &type metadata for SensitiveRawBuffer, a1, a2);
  result = *&v5;
  *a3 = v5;
  return result;
}

char *sub_1E0B63520@<X0>(char *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    v4 = a2 - result;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4)
  {
    v5 = result;
    result = swift_slowAlloc();
    *a3 = result;
    a3[1] = &result[v4];
    if (result)
    {

      return memcpy(result, v5, v4);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void SensitiveRawBuffer.init<A>(copyFromBytesOf:)(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(*(a1 - 8) + 82))
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1E0BA8CB8();
    MEMORY[0x1EEE9AC00](v4);
    v8[2] = a1;
    v8[3] = sub_1E0B636B8;
    v8[4] = 0;
    sub_1E0B622D4(MEMORY[0x1E69E7508], sub_1E0B636F0, v8, v5, v6, a1, MEMORY[0x1E69E7508], MEMORY[0x1E69E73E0], &type metadata for SensitiveRawBuffer, MEMORY[0x1E69E7410], v7);
    *a2 = v9;
  }
}

double sub_1E0B636B8@<D0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1E0B63520(a1, a2, &v5);
  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t SensitiveRawBuffer.init<A>(copyFromBytesOf:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(*(a2 - 8) + 82))
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1EEE9AC00](result);
    v8[2] = v5;
    result = sub_1E0B63818(v4, sub_1E0B637EC, v8, v6, MEMORY[0x1E69E73E0], &type metadata for SensitiveRawBuffer, MEMORY[0x1E69E7410], v7);
    *a3 = v9;
  }

  return result;
}

uint64_t sub_1E0B63818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

char *SensitiveRawBuffer.clone()@<X0>(_OWORD *a1@<X8>)
{
  if (*v1)
  {
    v2 = v1[1] - *v1;
  }

  else
  {
    v2 = 0;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return SensitiveRawBuffer.clone(range:)(0, v2, a1);
  }

  __break(1u);
  return result;
}