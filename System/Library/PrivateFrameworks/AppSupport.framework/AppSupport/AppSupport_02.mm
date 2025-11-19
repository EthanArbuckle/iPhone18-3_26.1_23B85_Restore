unsigned __int16 *_createUTF8StringFromString(const __CFString *a1)
{
  v2 = malloc_type_malloc(0xC8uLL, 0xF5C95697uLL);
  if (v2)
  {
    v3 = 200;
    while (!CFStringGetCString(a1, v2, v3, 0x8000100u))
    {
      free(v2);
      if (v3 < 0x100000)
      {
        v3 *= 2;
        v2 = malloc_type_malloc(v3, 0x33395582uLL);
        if (v2)
        {
          continue;
        }
      }

      CFLog();
      Length = CFStringGetLength(a1);
      if (Length)
      {
        v5 = Length;
        v2 = malloc_type_malloc(2 * Length, 0xF5335D44uLL);
        if (!v2)
        {
          return v2;
        }

        v11.location = 0;
        v11.length = v5;
        CFStringGetCharacters(a1, v11, v2);
        Mutable = CFStringCreateMutable(0, 0);
        if (Mutable)
        {
          v7 = Mutable;
          CFStringAppend(Mutable, @"UTF-16 Bytes: ");
          if (v5 >= 1)
          {
            v8 = v2;
            do
            {
              v9 = *v8++;
              CFStringAppendFormat(v7, 0, @"%04x ", v9);
              --v5;
            }

            while (v5);
          }

          CFLog();
          CFRelease(v7);
        }

        free(v2);
      }

      return 0;
    }
  }

  else
  {
    CFLog();
  }

  return v2;
}

void ___performLog_block_invoke(uint64_t a1)
{
  _workQueueAppendDataToLogFile(*(a1 + 32), *(a1 + 40));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 32);

  free(v2);
}

void ___aslClient_block_invoke()
{
  v0 = _usesOwnAslClient;
  LOBYTE(v0) = atomic_load_explicit(_usesOwnAslClient, memory_order_acquire);
  if (v0)
  {
    _aslClient_client = asl_open(0, 0, 0);
  }
}

dispatch_queue_t ___callbackQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.CPLogging.callbackQueue", 0);
  _callbackQueue_queue = result;
  return result;
}

dispatch_group_t ___workGroup_block_invoke()
{
  result = dispatch_group_create();
  _workGroup_group = result;
  return result;
}

void ___workQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.CPLogging.workQueue", 0);
  _workQueue_queue = v0;
  global_queue = dispatch_get_global_queue(-2, 0);

  dispatch_set_target_queue(v0, global_queue);
}

uint64_t _workQueueCopyConnection()
{
  if (_workQueueCopyConnection_once != -1)
  {
    _workQueueCopyConnection_cold_1();
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v7 = __Block_byref_object_dispose__1;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___workQueueCopyConnection_block_invoke_2;
  block[3] = &unk_1E7450E18;
  block[4] = &v3;
  dispatch_sync(_workQueueCopyConnection_connQueue, block);
  v0 = v4[5];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void ___workQueueLogToFileUUID_block_invoke_2(uint64_t a1)
{
  if (_waitForResponseQueueResponse)
  {
    *(*(*(a1 + 32) + 8) + 40) = xpc_retain(_waitForResponseQueueResponse);
    xpc_release(_waitForResponseQueueResponse);
    _waitForResponseQueueResponse = 0;
  }
}

dispatch_queue_t ___workQueueCopyConnection_block_invoke()
{
  result = dispatch_queue_create("com.apple.CPLogging.connQueue", 0);
  _workQueueCopyConnection_connQueue = result;
  return result;
}

xpc_object_t ___workQueueCopyConnection_block_invoke_2(uint64_t a1)
{
  result = _workQueueCopyConnection_conn;
  if (_workQueueCopyConnection_conn || (global_queue = dispatch_get_global_queue(0, 0), _workQueueCopyConnection_conn = xpc_connection_create_mach_service("com.apple.appsupport.cplogd", global_queue, 0), xpc_connection_set_event_handler(_workQueueCopyConnection_conn, &__block_literal_global_202), xpc_connection_resume(_workQueueCopyConnection_conn), (result = _workQueueCopyConnection_conn) != 0))
  {
    result = xpc_retain(result);
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

void ___workQueueCopyConnection_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8C3660](a2);
  if (v3 != MEMORY[0x1E69E9E80])
  {
    if (v3 != MEMORY[0x1E69E9E98])
    {
      goto LABEL_3;
    }

    if (a2 == MEMORY[0x1E69E9E20])
    {
      CFLog();
      dispatch_sync(_workQueueCopyConnection_connQueue, &__block_literal_global_207);
      goto LABEL_4;
    }

    if (a2 != MEMORY[0x1E69E9E18])
    {
LABEL_3:
      CFLog();
    }

LABEL_4:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = 1;
LABEL_6:
  if (_waitForResponseQueue_once != -1)
  {
    ___workQueueCopyConnection_block_invoke_3_cold_1();
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___workQueueCopyConnection_block_invoke_5;
  v5[3] = &unk_1E7451330;
  v6 = v4;
  v5[4] = a2;
  dispatch_sync(_waitForResponseQueue_queue, v5);
}

void ___workQueueCopyConnection_block_invoke_4()
{
  if (_workQueueCopyConnection_conn)
  {
    xpc_connection_cancel(_workQueueCopyConnection_conn);
    xpc_release(_workQueueCopyConnection_conn);
    _workQueueCopyConnection_conn = 0;
  }
}

intptr_t ___workQueueCopyConnection_block_invoke_5(intptr_t result)
{
  if (_waitForResponseQueueIsWaiting == 1)
  {
    _waitForResponseQueueIsWaiting = 0;
    if (*(result + 40))
    {
      _waitForResponseQueueResponse = xpc_retain(*(result + 32));
    }

    if (_waitForResponseSema_once != -1)
    {
      ___workQueueCopyConnection_block_invoke_5_cold_1();
    }

    v2 = _waitForResponseSema_sema;

    return dispatch_semaphore_signal(v2);
  }

  return result;
}

dispatch_queue_t ___waitForResponseQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.CPLogging.waitForResponseQueue", 0);
  _waitForResponseQueue_queue = result;
  return result;
}

dispatch_semaphore_t ___waitForResponseSema_block_invoke()
{
  result = dispatch_semaphore_create(0);
  _waitForResponseSema_sema = result;
  return result;
}

void ___workQueueSlurpToFileUUID_block_invoke_2(uint64_t a1)
{
  if (_waitForResponseQueueResponse)
  {
    *(*(*(a1 + 32) + 8) + 40) = xpc_retain(_waitForResponseQueueResponse);
    xpc_release(_waitForResponseQueueResponse);
    _waitForResponseQueueResponse = 0;
  }
}

CFNumberFormatterRef ___obfuscatedRepresentation_block_invoke()
{
  System = CFLocaleGetSystem();
  result = CFNumberFormatterCreate(0, System, kCFNumberFormatterNoStyle);
  _obfuscatedRepresentation_numberFormatter = result;
  return result;
}

uint64_t ___startObservingDefaultChanges_block_invoke()
{
  if (_configurationQueue_once != -1)
  {
    CPLoggingSetCustomConsoleLevelDefaults_cold_3();
  }

  notify_register_dispatch("com.apple.managedconfiguration.defaultsdidchange", &_startObservingDefaultChanges_token, _configurationQueue_queue, &__block_literal_global_250);
  if (_configurationQueue_once != -1)
  {
    CPLoggingSetCustomConsoleLevelDefaults_cold_3();
  }

  v0 = _configurationQueue_queue;

  return notify_register_dispatch("com.apple.AppSupport.loggingDefaultsChanged", &_startObservingDefaultChanges_token, v0, &__block_literal_global_253);
}

uint64_t _configurationQueueRereadAllDefaults()
{
  for (i = atomic_load_explicit(&_logFileSettings, memory_order_acquire); i; i = atomic_load_explicit(i, memory_order_acquire))
  {
    _configurationQueueRereadDefaultsForSetting(i);
  }

  if (_recomputeQueue_onceToken != -1)
  {
    _configurationQueueRereadDefaultsForSetting_cold_1();
  }

  dispatch_async(_recomputeQueue_queue, &__block_literal_global_255);

  return _rereadObfuscationPreferences();
}

dispatch_queue_t ___recomputeQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.CPLogging.recomputeQueue", 0);
  _recomputeQueue_queue = result;
  return result;
}

dispatch_queue_t ___configurationQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.CPLogging.configurationQueue", 0);
  _configurationQueue_queue = result;
  return result;
}

uint64_t _configurationQueueReadDefaultsValue(const __CFString *a1, const __CFString *a2)
{
  v3 = 4294967293;
  valuePtr = -3;
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = @".GlobalPreferences";
  }

  CFPreferencesAppSynchronize(v4);
  v5 = CFPreferencesCopyAppValue(a2, v4);
  if (!v5)
  {
    return v3;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  if (v7 == CFNumberGetTypeID())
  {
    if (CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = CFGetTypeID(v6);
  if (v8 != CFStringGetTypeID() || (IntValue = CFStringGetIntValue(v6), (IntValue - 0x7FFFFFFF) <= 1))
  {
LABEL_10:
    CFLog();
    goto LABEL_11;
  }

  valuePtr = IntValue;
LABEL_11:
  CFRelease(v6);
  v3 = valuePtr;
  if (valuePtr <= -4)
  {
    CFLog();
    return 4294967293;
  }

  return v3;
}

void ___workQueueCopyFileUUIDForLogPath_block_invoke_2(uint64_t a1)
{
  if (_waitForResponseQueueResponse)
  {
    *(*(*(a1 + 32) + 8) + 40) = xpc_retain(_waitForResponseQueueResponse);
    xpc_release(_waitForResponseQueueResponse);
    _waitForResponseQueueResponse = 0;
  }
}

void ___workQueueStartNewLogFile_block_invoke_2(uint64_t a1)
{
  if (_waitForResponseQueueResponse)
  {
    *(*(*(a1 + 32) + 8) + 40) = xpc_retain(_waitForResponseQueueResponse);
    xpc_release(_waitForResponseQueueResponse);
    _waitForResponseQueueResponse = 0;
  }
}

void ___setLogName_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 144);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    *(v1 + 8) = 0;
  }
}

void ___setLogDirectory_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 144);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    *(v1 + 8) = 0;
  }
}

uint64_t CPFileCompressionZDeflate()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  v12[1024] = *MEMORY[0x1E69E9840];
  memset(&v10, 0, sizeof(v10));
  v5 = deflateInit2_(&v10, v4, 8, 31, 8, 0, "1.2.12", 112);
  if (!v5)
  {
LABEL_2:
    v10.avail_in = fread(v12, 1uLL, 0x2000uLL, v3);
    if (!ferror(v3))
    {
      v6 = feof(v3);
      v10.next_in = v12;
      while (1)
      {
        v10.avail_out = 0x2000;
        v10.next_out = __ptr;
        deflate(&v10, 4 * (v6 != 0));
        v7 = 0x2000 - v10.avail_out;
        if (fwrite(__ptr, 1uLL, v7, v2) != v7 || ferror(v2))
        {
          break;
        }

        if (v10.avail_out)
        {
          if (!v6)
          {
            goto LABEL_2;
          }

          v5 = 0;
          goto LABEL_10;
        }
      }
    }

    v5 = 0xFFFFFFFFLL;
LABEL_10:
    deflateEnd(&v10);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t CPDNCheckIn(int a1, int a2)
{
  v5 = 0;
  *&msg[4] = 0u;
  v4 = a2;
  v6 = 1310720;
  *msg = -2147483629;
  *&msg[8] = a1;
  *&msg[20] = 0x1000130B0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 1, 0x28u, 0, 0, 0, 0);
}

uint64_t (*CPDistributedNotificationCheckIn_server_routine(uint64_t a1))(uint64_t result, uint64_t a2)
{
  if (*(a1 + 20) == 78000)
  {
    return _XCheckIn;
  }

  else
  {
    return 0;
  }
}

uint64_t _XCheckIn(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 40)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      if (!*(result + 40) && *(result + 44) > 0x1Fu)
      {
        v4 = *(result + 12);
        v5 = *(result + 28);
        v6 = *(result + 76);
        v7[0] = *(result + 60);
        v7[1] = v6;
        result = _CPDNCheckIn(v4, v5, v7);
        *(a2 + 32) = result;
        return result;
      }

      v3 = -309;
    }

    else
    {
      v3 = -300;
    }
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t CPDistributedNotificationCheckIn_server(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v4 = *(a1 + 20) + 100;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 20) = v4;
  if (*(a1 + 20) != 78000)
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
    return result;
  }

  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 40)
  {
    if (*(a1 + 38) << 16 == 1114112)
    {
      if (!*(a1 + 40) && *(a1 + 44) > 0x1Fu)
      {
        v7 = *(a1 + 12);
        v8 = *(a1 + 28);
        v9 = *(a1 + 76);
        v10[0] = *(a1 + 60);
        v10[1] = v9;
        *(a2 + 32) = _CPDNCheckIn(v7, v8, v10);
        return 1;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return 1;
}

uint64_t CPDNDeliverNotification(int a1, vm_address_t a2, int a3, uint64_t a4, int a5)
{
  v12 = a2;
  v13 = 16777472;
  v14[0] = a3;
  *&v14[1] = a4;
  v14[3] = 16777472;
  v15[0] = a5;
  *&v15[1] = *MEMORY[0x1E69E99E0];
  v15[3] = a3;
  v15[4] = a5;
  v9 = 2147483667;
  v10 = a1;
  v11 = xmmword_195EA89A0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v9);
  }

  v7 = mach_msg(&v9, 17, 0x4Cu, 0, 0, 0, 0);
  if (v7 == 268435460)
  {
    if (v12 != a2)
    {
      mig_deallocate(v12, v14[0]);
    }

    if (*&v14[1] != a4)
    {
      mig_deallocate(*&v14[1], v15[0]);
    }
  }

  return v7;
}

void (*CPDistributedNotification_server_routine(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == 77000)
  {
    return _XDeliverNotification;
  }

  else
  {
    return 0;
  }
}

void _XDeliverNotification(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 76)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1)
    {
      v3 = *(a1 + 40);
      if (v3 == *(a1 + 68))
      {
        v4 = *(a1 + 56);
        if (v4 == *(a1 + 72))
        {
          *(a2 + 32) = _CPDNDeliverNotification(*(a1 + 12), *(a1 + 28), v3, *(a1 + 44), v4);
          mig_deallocate(*(a1 + 44), *(a1 + 56));
          *(a1 + 44) = 0;
          *(a1 + 56) = 0;
          mig_deallocate(*(a1 + 28), *(a1 + 40));
          *(a1 + 28) = 0;
          *(a1 + 40) = 0;
          return;
        }
      }
    }

    v5 = -300;
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

uint64_t CPDistributedNotification_server(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = *(a1 + 20) + 100;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (*(a1 + 20) != 77000)
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
    return result;
  }

  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 2 || *(a1 + 4) != 76)
  {
    v8 = -304;
LABEL_12:
    *(a2 + 32) = v8;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return 1;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1 || (v5 = *(a1 + 40), v5 != *(a1 + 68)) || (v6 = *(a1 + 56), v6 != *(a1 + 72)))
  {
    v8 = -300;
    goto LABEL_12;
  }

  *(a2 + 32) = _CPDNDeliverNotification(*(a1 + 12), *(a1 + 28), v5, *(a1 + 44), v6);
  mig_deallocate(*(a1 + 44), *(a1 + 56));
  *(a1 + 44) = 0;
  *(a1 + 56) = 0;
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  return 1;
}

uint64_t CPDMMessage(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9)
{
  v11 = a2;
  v12 = 16777472;
  v13 = a3;
  v14 = a4;
  v15 = 16777472;
  v16 = a5;
  v17 = a6;
  v18 = 16777472;
  v19 = a7;
  v20 = a8;
  v21 = 16777472;
  v22 = a9;
  v23 = *MEMORY[0x1E69E99E0];
  v24 = a3;
  v25 = a5;
  v26 = a7;
  v27 = a9;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_195EA89D0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 1, 0x74u, 0, 0, 0, 0);
}

uint64_t CPDMTwoWayMessage(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, _DWORD *a7, uint64_t a8, int a9, uint64_t a10, int a11, void *a12, _DWORD *a13, void *a14, _DWORD *a15)
{
  v27 = 4;
  v28 = a2;
  v29 = 16777472;
  v30 = a3;
  v31 = a4;
  v32 = 16777472;
  v33 = a5;
  v34 = a8;
  v35 = 16777472;
  v36 = a9;
  v37 = a10;
  v38 = 16777472;
  v39 = a11;
  v40 = *MEMORY[0x1E69E99E0];
  v41 = a3;
  v42 = a5;
  v43 = a9;
  v44 = a11;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x1349900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x74u, 0x68u, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 79101)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v27 == 3 && msg.msgh_size == 96 && !msg.msgh_remote_port && HIBYTE(v29) == 1 && HIBYTE(v32) == 1 && HIBYTE(v35) == 1)
          {
            v22 = v30;
            if (v30 == v38)
            {
              v23 = v33;
              if (v33 == v39)
              {
                v24 = v36;
                if (v36 == v40)
                {
                  v21 = 0;
                  *a6 = v28;
                  *a7 = v22;
                  *a12 = v31;
                  *a13 = v23;
                  *a14 = v34;
                  *a15 = v24;
                  return v21;
                }
              }
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v28))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v28);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t CPDMTwoWayMessageWithPortPassing(int a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, _DWORD *a8, uint64_t a9, int a10, uint64_t a11, int a12, void *a13, _DWORD *a14, void *a15, _DWORD *a16)
{
  *&reply_port[16] = 0u;
  *reply_port = 0u;
  *&reply_port[20] = 5;
  *&reply_port[24] = a2;
  v29 = 1310720;
  *v30 = a3;
  *&v30[8] = 16777472;
  v31 = a4;
  *v32 = a5;
  *&v32[8] = 16777472;
  v33 = a6;
  v34 = a9;
  v35 = 16777472;
  v36 = a10;
  v37 = a11;
  v38 = 16777472;
  v39 = a12;
  v40 = *MEMORY[0x1E69E99E0];
  v41 = a4;
  v42 = a6;
  v43 = a10;
  v44 = a12;
  v19 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v19;
  v27 = -2147478253;
  *&reply_port[12] = 0x1349A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v27);
    v20 = *&reply_port[8];
  }

  else
  {
    v20 = v19;
  }

  v21 = mach_msg(&v27, 3, 0x80u, 0x68u, v20, 0, 0);
  v22 = v21;
  if ((v21 - 268435458) <= 0xE && ((1 << (v21 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
  }

  else
  {
    if (!v21)
    {
      if (*&reply_port[16] == 71)
      {
        v22 = 4294966988;
      }

      else if (*&reply_port[16] == 79102)
      {
        if (v27 < 0)
        {
          v22 = 4294966996;
          if (*&reply_port[20] == 3 && *reply_port == 96 && !*&reply_port[4] && HIBYTE(v29) == 1 && HIBYTE(v31) == 1 && HIBYTE(v33) == 1)
          {
            v23 = *v30;
            if (*v30 == v36)
            {
              v24 = *v32;
              if (*v32 == v37)
              {
                v25 = v34;
                if (v34 == HIDWORD(v37))
                {
                  v22 = 0;
                  *a7 = *&reply_port[24];
                  *a8 = v23;
                  *a13 = *&v30[4];
                  *a14 = v24;
                  *a15 = *&v32[4];
                  *a16 = v25;
                  return v22;
                }
              }
            }
          }
        }

        else if (*reply_port == 36)
        {
          v22 = 4294966996;
          if (*&reply_port[28])
          {
            if (*&reply_port[4])
            {
              v22 = 4294966996;
            }

            else
            {
              v22 = *&reply_port[28];
            }
          }
        }

        else
        {
          v22 = 4294966996;
        }
      }

      else
      {
        v22 = 4294966995;
      }

      mach_msg_destroy(&v27);
      return v22;
    }

    mig_dealloc_reply_port(*&reply_port[8]);
  }

  return v22;
}

uint64_t CPDMNonBlockingMessage(int a1, vm_address_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, mach_msg_timeout_t a10)
{
  v17 = a2;
  v18 = 16777472;
  v19[0] = a3;
  *&v19[1] = a4;
  v19[3] = 16777472;
  v20[0] = a5;
  *&v20[1] = a6;
  v20[3] = 16777472;
  v21[0] = a7;
  *&v21[1] = a8;
  v21[3] = 16777472;
  v22[0] = a9;
  *&v22[1] = *MEMORY[0x1E69E99E0];
  v22[3] = a3;
  v22[4] = a5;
  v22[5] = a7;
  v22[6] = a9;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_195EA89E0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v14 = mach_msg(msg, 17, 0x74u, 0, 0, a10, 0);
  if (v14 == 268435460)
  {
    if (v17 != a2)
    {
      mig_deallocate(v17, v19[0]);
    }

    if (*&v19[1] != a4)
    {
      mig_deallocate(*&v19[1], v20[0]);
    }

    if (*&v20[1] != a6)
    {
      mig_deallocate(*&v20[1], v21[0]);
    }

    if (*&v21[1] != a8)
    {
      mig_deallocate(*&v21[1], v22[0]);
    }
  }

  return v14;
}

uint64_t (*CPDistributedMessaging_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 79004) >= 0xFFFFFFFC)
  {
    return _CPDMCPDistributedMessaging_subsystem[5 * (v1 - 79000) + 5];
  }

  else
  {
    return 0;
  }
}

void _XMessage(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 4 || *(a1 + 4) != 116)
  {
    v8 = -304;
    goto LABEL_16;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1 || *(a1 + 71) != 1 || *(a1 + 87) != 1 || (v4 = *(a1 + 40), v4 != *(a1 + 100)) || (v5 = *(a1 + 56), v5 != *(a1 + 104)) || (v6 = *(a1 + 72), v6 != *(a1 + 108)) || (v7 = *(a1 + 88), v7 != *(a1 + 112)))
  {
    v8 = -300;
    goto LABEL_16;
  }

  if (*(a1 + 116) || *(a1 + 120) <= 0x1Fu)
  {
    v8 = -309;
LABEL_16:
    *(a2 + 32) = v8;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  v17 = v2;
  v18 = v3;
  v9 = *(a1 + 12);
  v10 = *(a1 + 28);
  v11 = *(a1 + 44);
  v12 = *(a1 + 60);
  v13 = *(a1 + 76);
  v14 = *(a1 + 152);
  v16[0] = *(a1 + 136);
  v16[1] = v14;
  *(a2 + 32) = _CPDMMessage(v9, v10, v4, v11, v5, v12, v6, v13, v7, v16);
  mig_deallocate(*(a1 + 60), *(a1 + 72));
  *(a1 + 60) = 0;
  *(a1 + 72) = 0;
  mig_deallocate(*(a1 + 44), *(a1 + 56));
  *(a1 + 44) = 0;
  *(a1 + 56) = 0;
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
}

void _XTwoWayMessage(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 4 || *(a1 + 4) != 116)
  {
    v4 = -304;
LABEL_17:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1 || *(a1 + 71) != 1 || *(a1 + 87) != 1 || *(a1 + 40) != *(a1 + 100) || *(a1 + 56) != *(a1 + 104) || *(a1 + 72) != *(a1 + 108) || *(a1 + 88) != *(a1 + 112))
  {
    v4 = -300;
    goto LABEL_17;
  }

  v26 = v2;
  v27 = v3;
  if (*(a1 + 116) || *(a1 + 120) <= 0x1Fu)
  {
    *(a2 + 32) = -309;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    *(a2 + 84) = 0;
    v5 = a2 + 84;
    *(a2 + 36) = 16777472;
    v6 = a2 + 28;
    v7 = (a2 + 44);
    *(a2 + 52) = 16777472;
    v8 = (a2 + 60);
    *(a2 + 68) = 16777472;
    *(a2 + 88) = 0;
    v9 = (a2 + 88);
    v10 = *(a1 + 8);
    v11 = *(a1 + 12);
    v12 = *(a1 + 28);
    v13 = *(a1 + 40);
    v14 = *(a1 + 44);
    v15 = *(a1 + 56);
    v16 = *(a1 + 60);
    v17 = *(a1 + 72);
    v18 = *(a1 + 76);
    v19 = *(a1 + 88);
    v20 = *(a1 + 152);
    v25[0] = *(a1 + 136);
    v25[1] = v20;
    v22 = _CPDMTwoWayMessage(v11, v10, v12, v13, v14, v15, v6, v5, v16, v17, v18, v19, v7, v9, v8, (v5 + 8), v25);
    mig_deallocate(*(a1 + 60), *(a1 + 72));
    *(a1 + 60) = 0;
    *(a1 + 72) = 0;
    mig_deallocate(*(a1 + 44), *(a1 + 56));
    *(a1 + 44) = 0;
    *(a1 + 56) = 0;
    mig_deallocate(*(a1 + 28), *(a1 + 40));
    *(a1 + 28) = 0;
    *(a1 + 40) = 0;
    if (v22)
    {
      *(a2 + 32) = v22;
      *(a2 + 24) = *MEMORY[0x1E69E99E0];
    }

    else
    {
      v23 = *(a2 + 88);
      *(a2 + 40) = *(a2 + 84);
      *(a2 + 56) = v23;
      *(a2 + 72) = *(a2 + 92);
      *(a2 + 76) = *MEMORY[0x1E69E99E0];
      *a2 |= 0x80000000;
      *(a2 + 4) = 96;
      *(a2 + 24) = 3;
    }
  }
}

void _XTwoWayMessageWithPortPassing(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 5 || *(a1 + 4) != 128)
  {
    v5 = -304;
LABEL_18:
    *(a2 + 32) = v5;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 51) != 1 || *(a1 + 67) != 1 || *(a1 + 83) != 1 || *(a1 + 99) != 1 || *(a1 + 52) != *(a1 + 112) || *(a1 + 68) != *(a1 + 116) || *(a1 + 84) != *(a1 + 120) || *(a1 + 100) != *(a1 + 124))
  {
    v5 = -300;
    goto LABEL_18;
  }

  v28 = v2;
  v29 = v3;
  v4 = a1 + 128;
  if (*(a1 + 128) || *(a1 + 132) <= 0x1Fu)
  {
    *(a2 + 32) = -309;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    *(a2 + 84) = 0;
    v6 = a2 + 84;
    *(a2 + 36) = 16777472;
    v7 = a2 + 28;
    v8 = (a2 + 44);
    *(a2 + 52) = 16777472;
    v9 = (a2 + 60);
    *(a2 + 68) = 16777472;
    *(a2 + 88) = 0;
    v10 = (a2 + 88);
    v12 = *(a1 + 12);
    v13 = *(a1 + 8);
    v14 = *(a1 + 28);
    v15 = *(a1 + 40);
    v16 = *(a1 + 52);
    v17 = *(a1 + 56);
    v18 = *(a1 + 68);
    v19 = *(a1 + 72);
    v20 = *(a1 + 84);
    v21 = *(a1 + 88);
    v22 = *(a1 + 100);
    v23 = *(v4 + 36);
    v27[0] = *(v4 + 20);
    v27[1] = v23;
    v24 = _CPDMTwoWayMessageWithPortPassing(v12, v13, v14, v15, v16, v17, v18, v7, v6, v19, v20, v21, v22, v8, v10, v9, (v6 + 8), v27);
    mig_deallocate(*(a1 + 72), *(a1 + 84));
    *(a1 + 72) = 0;
    *(a1 + 84) = 0;
    mig_deallocate(*(a1 + 56), *(a1 + 68));
    *(a1 + 56) = 0;
    *(a1 + 68) = 0;
    mig_deallocate(*(a1 + 40), *(a1 + 52));
    *(a1 + 40) = 0;
    *(a1 + 52) = 0;
    if (v24)
    {
      *(a2 + 32) = v24;
      *(a2 + 24) = *MEMORY[0x1E69E99E0];
    }

    else
    {
      v25 = *(a2 + 88);
      *(a2 + 40) = *(a2 + 84);
      *(a2 + 56) = v25;
      *(a2 + 72) = *(a2 + 92);
      *(a2 + 76) = *MEMORY[0x1E69E99E0];
      *a2 |= 0x80000000;
      *(a2 + 4) = 96;
      *(a2 + 24) = 3;
    }
  }
}

void _XNonBlockingMessage(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 4 || *(a1 + 4) != 116)
  {
    v8 = -304;
    goto LABEL_16;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1 || *(a1 + 71) != 1 || *(a1 + 87) != 1 || (v4 = *(a1 + 40), v4 != *(a1 + 100)) || (v5 = *(a1 + 56), v5 != *(a1 + 104)) || (v6 = *(a1 + 72), v6 != *(a1 + 108)) || (v7 = *(a1 + 88), v7 != *(a1 + 112)))
  {
    v8 = -300;
    goto LABEL_16;
  }

  if (*(a1 + 116) || *(a1 + 120) <= 0x1Fu)
  {
    v8 = -309;
LABEL_16:
    *(a2 + 32) = v8;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  v17 = v2;
  v18 = v3;
  v9 = *(a1 + 12);
  v10 = *(a1 + 28);
  v11 = *(a1 + 44);
  v12 = *(a1 + 60);
  v13 = *(a1 + 76);
  v14 = *(a1 + 152);
  v16[0] = *(a1 + 136);
  v16[1] = v14;
  *(a2 + 32) = _CPDMNonBlockingMessage(v9, v10, v4, v11, v5, v12, v6, v13, v7, v16);
  mig_deallocate(*(a1 + 60), *(a1 + 72));
  *(a1 + 60) = 0;
  *(a1 + 72) = 0;
  mig_deallocate(*(a1 + 44), *(a1 + 56));
  *(a1 + 44) = 0;
  *(a1 + 56) = 0;
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
}

uint64_t CPDistributedMessaging_server(_DWORD *a1, uint64_t a2)
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
  if ((v4 - 79004) >= 0xFFFFFFFC && (v5 = _CPDMCPDistributedMessaging_subsystem[5 * (v4 - 79000) + 5]) != 0)
  {
    (v5)(a1, a2);
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

uint64_t CPDMTwoWayMessageReply(unsigned int a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  if (a2)
  {
    HIDWORD(v14) = a2;
    *(&v14 + 4) = *MEMORY[0x1E69E99E0];
    v9 = 18;
  }

  else
  {
    DWORD1(v14) = 3;
    *(&v14 + 1) = a3;
    LODWORD(v15) = 16777472;
    DWORD1(v15) = a4;
    *(&v15 + 1) = a5;
    LODWORD(v16) = 16777472;
    DWORD1(v16) = a6;
    *(&v16 + 1) = a7;
    *v17 = 16777472;
    *&v17[4] = a8;
    *&v17[8] = *MEMORY[0x1E69E99E0];
    *&v17[16] = a4;
    *&v17[20] = a6;
    *&v17[24] = a8;
    v9 = -2147483630;
  }

  v12 = v9;
  *(&v13 + 4) = a1;
  HIDWORD(v13) = 0;
  LODWORD(v14) = 79101;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
  }

  if (a2)
  {
    v10 = 36;
  }

  else
  {
    v10 = 96;
  }

  return mach_msg(&v12, 1, v10, 0, 0, 0, 0);
}

uint64_t CPDMTwoWayMessageReplyWithPortPassing(unsigned int a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  if (a2)
  {
    HIDWORD(v14) = a2;
    *(&v14 + 4) = *MEMORY[0x1E69E99E0];
    v9 = 18;
  }

  else
  {
    DWORD1(v14) = 3;
    *(&v14 + 1) = a3;
    LODWORD(v15) = 16777472;
    DWORD1(v15) = a4;
    *(&v15 + 1) = a5;
    LODWORD(v16) = 16777472;
    DWORD1(v16) = a6;
    *(&v16 + 1) = a7;
    *v17 = 16777472;
    *&v17[4] = a8;
    *&v17[8] = *MEMORY[0x1E69E99E0];
    *&v17[16] = a4;
    *&v17[20] = a6;
    *&v17[24] = a8;
    v9 = -2147483630;
  }

  v12 = v9;
  *(&v13 + 4) = a1;
  HIDWORD(v13) = 0;
  LODWORD(v14) = 79102;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
  }

  if (a2)
  {
    v10 = 36;
  }

  else
  {
    v10 = 96;
  }

  return mach_msg(&v12, 1, v10, 0, 0, 0, 0);
}

void CPFreeSpaceRequestBytesAtPathWithCompletionBlock_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [objc_msgSend(a1 "domain")];
  [a1 code];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void CPFreeSpaceRequestBytesAtPathWithCompletionBlock_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __CPFreeSpaceRequestBytesAtPathWithCompletionBlock_block_invoke_9_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [objc_msgSend(*(a1 + 40) "domain")];
  [*(a1 + 40) code];
  v8 = *(a1 + 48);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t CPSqliteStatementSendResults(void *a1, unsigned int (*a2)(void *, uint64_t), uint64_t a3)
{
  if (!a1 || !a1[1] || !*a1 || !*(*a1 + 8))
  {
    return 1;
  }

  while (1)
  {
    v6 = CPSqliteStatementStep(a1);
    if (v6 != 100)
    {
      break;
    }

    if (a2(a1, a3))
    {
      v7 = 100;
      goto LABEL_11;
    }
  }

  v7 = v6;
  if ((v6 - 102) > 0xFFFFFFFD)
  {
    v7 = 101;
  }

  else
  {
    v8 = sqlite3_errmsg(*(*a1 + 8));
    syslog(4, "%s: %s\n", "CPSqliteStatementSendResults", v8);
  }

LABEL_11:
  CPSqliteStatementReset(a1);
  return v7;
}

uint64_t CPSqliteStatementProcessPhoneQuery(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t (*a4)(uint64_t, void, void *, uint64_t, uint64_t), uint64_t a5)
{
  v9 = CPPhoneNumberCopyHomeCountryCode();
  MutableCopy = 0;
  if (a1)
  {
    if (a2)
    {
      MutableCopy = 0;
      if (a4)
      {
        if (*(a1 + 8))
        {
          v11 = *MEMORY[0x1E695E480];
          if (a3)
          {
            Length = CFStringGetLength(a3);
            MutableCopy = CFStringCreateMutableCopy(v11, Length, a3);
            CFStringLowercase(MutableCopy, 0);
          }

          else
          {
            MutableCopy = 0;
          }

          v13 = PNCopyBestGuessNormalizedNumberForCountry();
          v25 = *(MEMORY[0x1E69986A8] + 16);
          v26 = *MEMORY[0x1E69986A8];
          v23 = *(MEMORY[0x1E69986A8] + 48);
          v24 = *(MEMORY[0x1E69986A8] + 32);
          decomposePhoneNumber(v13, MutableCopy);
          if (CPSqliteStatementStep(a1) == 100)
          {
            v14 = *MEMORY[0x1E695E498];
            do
            {
              v15 = sqlite3_column_text(*(a1 + 8), 0);
              if (v15)
              {
                v16 = v15;
                v17 = strlen(v15);
                v18 = CFStringCreateWithBytesNoCopy(v11, v16, v17, 0x8000100u, 0, v14);
                v19 = PNCopyBestGuessNormalizedNumberForCountry();
                decomposePhoneNumber(v19, v9);
                if (decomposedPhoneNumbersEqual())
                {
                  v20 = a4(a1, 0, v19, 1, a5);
                  CFRelease(v18);
                  free(v19);
                  if (v20)
                  {
                    break;
                  }
                }

                else
                {
                  CFRelease(v18);
                  free(v19);
                }
              }
            }

            while (CPSqliteStatementStep(a1) == 100);
          }

          if (v13)
          {
            free(v13);
          }
        }
      }
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return 0;
}

void CPSqliteConnectionStatementForSQLAndIgnoreErrors_cold_1(CFDictionaryRef *a1, const void **a2, const void **a3, uint64_t a4)
{
  CFDictionaryGetKeysAndValues(*a1, a2, a3);
  v8 = *a2;
  v9 = *a3;
  v10 = arc4random_uniform(a4);
  v11 = CPMachAbsoluteTime();
  v12 = v10;
  while (1)
  {
    v13 = v12;
    v14 = a3[v12];
    v15 = v14[2];
    if (v11 - v15 > 300.0)
    {
      break;
    }

    if (v15 < v9[2])
    {
      v8 = a2[v13];
      v9 = v14;
    }

    if (a4 == v13 + 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = v13 + 1;
    }

    if (v12 == v10)
    {
      goto LABEL_11;
    }
  }

  v8 = a2[v13];
LABEL_11:
  Value = CFDictionaryGetValue(*a1, v8);
  CPSqliteStatementFinalize(Value, Value);
  CFDictionaryRemoveValue(*a1, v8);
  free(a3);
}

void checkResultWithStatement_cold_1(uint64_t a1, int a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4[0] = 67109634;
  v4[1] = a2;
  v5 = 1024;
  v6 = a3;
  v7 = 2082;
  v8 = a1;
  _os_log_error_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "SQLITE Error: %i, extended error: %i, error message: %{public}s", v4, 0x18u);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t CPRecordGetCachedProperty(uint64_t result, int a2)
{
  if (result)
  {
    if (*MEMORY[0x1E695E738] == *(result + 8 * a2 + 72))
    {
      return 0;
    }

    else
    {
      return *(result + 8 * a2 + 72);
    }
  }

  return result;
}

uint64_t _CPRecordStoreProcessAddedOrDeletedRecordsWithPolicyAndTransactionType(uint64_t result, int a2, int a3, unsigned int a4, CFErrorRef *a5)
{
  if (result)
  {
    v9 = result;
    Database = CPRecordStoreGetDatabase(result);
    result = CPSqliteDatabaseConnectionForWriting(Database);
    if (result)
    {
      v11 = result;
      CPSqliteConnectionBeginTransactionType(result, a4);
      v12 = CPSqliteConnectionIntegerForProperty(v11, @"__CPRecordSequenceNumber");
      if (!a3 || ((v13 = *(v9 + 96), v13 != -1) ? (v14 = v12 == v13) : (v14 = 1), v14))
      {
        *(v9 + 96) = v12;
        v16[1] = v11;
        v16[2] = 0;
        v16[0] = v9;
        if (a2)
        {
          _CPRecordStoreSaveAddedRecords(v16);
        }

        else
        {
          _CPRecordStoreSaveDeletedRecords(v16);
        }

        return 1;
      }

      else if (a5)
      {
        v15 = CFErrorCreate(0, @"CPRecord", 2, 0);
        result = 0;
        *a5 = v15;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CPRecordProcessAddImmediate(uint64_t a1, const void *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = CPRecordStoreGetDatabase(a1);
      if (result)
      {
        result = CPSqliteDatabaseConnectionForWriting(result);
        if (result)
        {
          v5 = result;
          result = *(a1 + 24);
          if (result)
          {
            result = CFDictionaryContainsKey(result, a2);
            if (result)
            {
              v8[1] = v5;
              v8[2] = 0;
              v8[0] = a1;
              Value = CFDictionaryGetValue(*(a1 + 24), a2);
              CPRecordStoreSaveRecord(a2, Value, v8);
              CFDictionaryRemoveValue(*(a1 + 24), a2);
              if (*(a1 + 56) == 1)
              {
                Mutable = *(a1 + 48);
                if (!Mutable)
                {
                  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
                  *(a1 + 48) = Mutable;
                }

                CFSetAddValue(Mutable, a2);
              }

              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void CPRecordStoreSaveRecord(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3;
  v84 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  v7 = v6[6];
  if (v7)
  {
    (v7)(a1, a3[1]);
  }

  v83 = 0;
  v8 = *(a1 + 32);
  _updateModificationDateProperties(a1);
  v9 = CPRecordStoreWriteColumnsForRecord(a1, &v83, 1);
  v10 = *v6;
  v82 = *MEMORY[0x1E695E480];
  v11 = CFStringCreateWithCString(v82, v10, 0x8000100u);
  Cache = CPRecordStoreGetCache(*v3, v6);
  v13 = *(a1 + 32);
  if (v13 == -1)
  {
    goto LABEL_8;
  }

  v14 = *v3;
  if (!*v3)
  {
    goto LABEL_8;
  }

  if (v13 >= -1)
  {
    goto LABEL_9;
  }

  if ((v13 & 0x7FFFFFFF) >= *(v14 + 104))
  {
LABEL_8:
    v13 = -1;
  }

  else
  {
    v13 = *(*(v14 + 112) + 8 * (v13 & 0x7FFFFFFF));
  }

LABEL_9:
  CPSqliteConnectionAddRecordWithRowid(v3[1], v11, v13, v9, v83);
  RecordIDForRowid = *(a1 + 32);
  v80 = v3;
  if (RecordIDForRowid != -1)
  {
    if (!Cache)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v73 = *v80;
  Insert = CPSqliteConnectionRowidOfLastInsert(v80[1]);
  v75 = v73;
  v3 = v80;
  RecordIDForRowid = CPRecordStoreGetRecordIDForRowid(v75, Insert);
  *(a1 + 32) = RecordIDForRowid;
  if (Cache)
  {
LABEL_11:
    CFDictionarySetValue(Cache, RecordIDForRowid, a1);
  }

LABEL_12:
  CFRelease(v11);
  free(v9);
  v16 = *(a1 + 40);
  if (!v16)
  {
    if (v8 != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_38;
  }

  *(a1 + 40) = 0;
  if (v8 == -1)
  {
LABEL_38:
    v77 = v16;
    v78 = a2;
    v79 = v6;
    v81 = v76;
    v49 = *(*(a1 + 24) + 72);
    MEMORY[0x1EEE9AC00]();
    v50 = v76 - ((v49 + 15) & 0x1FFFFFFF0);
    if (v49 < 1)
    {
LABEL_59:
      LOBYTE(a2) = v78;
      v6 = v79;
      v16 = v77;
      goto LABEL_60;
    }

    bzero(v76 - ((v49 + 15) & 0x1FFFFFFF0), v49);
    v51 = 0;
    v52 = 0;
    v53 = 1;
    while ((*(v52 + v50) & 1) != 0)
    {
LABEL_58:
      v52 = v52 + 1;
      ++v53;
      v51 += 40;
      if (v52 == v49)
      {
        goto LABEL_59;
      }
    }

    v54 = *(a1 + 24);
    v55 = *(v54 + 80);
    v56 = v55 + 40 * v52;
    if ((*(v56 + 25) & 2) == 0)
    {
      v57 = *(*(v56 + 16) + 40);
      if (v57)
      {
        if (v52 + 1 < v49)
        {
          Mutable = 0;
          v59 = v51;
          v60 = v53;
          do
          {
            v61 = *(*(a1 + 24) + 80) + v59;
            if ((*(v61 + 65) & 2) == 0 && *(*(v61 + 56) + 40) == v57)
            {
              if (!Mutable)
              {
                OUTLINED_FUNCTION_7();
                Mutable = CFArrayCreateMutable(v62, v63, v64);
                CFArrayAppendValue(Mutable, v52);
              }

              CFArrayAppendValue(Mutable, v60);
              v60[v50] = 1;
            }

            ++v60;
            v59 += 40;
          }

          while (v49 != v60);
          v54 = *(a1 + 24);
          if (Mutable)
          {
            v3 = v80;
            v65 = v80[1];
            v66 = OUTLINED_FUNCTION_4(*(v54 + 80) + 40 * v52);
            v67(v66, Mutable);
            CFRelease(Mutable);
            goto LABEL_57;
          }

          v3 = v80;
        }

        v55 = *(v54 + 80);
      }

      v68 = *(*(v55 + 40 * v52 + 16) + 32);
      if (v68)
      {
        v68(a1, v52, v3[1]);
      }
    }

LABEL_57:
    *(v52 + v50) = 1;
    goto LABEL_58;
  }

  Count = CFDictionaryGetCount(v16);
  if (Count)
  {
    v25 = Count;
    v78 = a2;
    v79 = v6;
    OUTLINED_FUNCTION_6(Count, v18, v19, v20, v21, v22, v23, v24, v76[0]);
    MEMORY[0x1EEE9AC00]();
    v27 = (v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v26 >= 0x200)
    {
      v28 = 512;
    }

    else
    {
      v28 = v26;
    }

    bzero(v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    v77 = v16;
    CFDictionaryGetKeysAndValues(v16, v27, 0);
    MEMORY[0x1EEE9AC00]();
    v29 = v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v25 >= 1)
    {
      bzero(v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
      v30 = 0;
      while (1)
      {
        if ((v29[v30] & 1) == 0)
        {
          v31 = v27[v30];
          v32 = *(a1 + 24);
          v33 = *(*(v32 + 80) + 40 * v31 + 16);
          v34 = *(v33 + 40);
          if (!v34)
          {
            goto LABEL_33;
          }

          v35 = v27[v30];
          v36 = v30 + 1;
          if (v30 + 1 >= v25)
          {
            goto LABEL_32;
          }

          v81 = v31;
          v76[1] = v31;
          v37 = 0;
          do
          {
            v38 = SLODWORD(v27[v36]);
            if (*(*(*(*(a1 + 24) + 80) + 40 * v38 + 16) + 40) == v34)
            {
              if (!v37)
              {
                OUTLINED_FUNCTION_7();
                v37 = CFArrayCreateMutable(v39, v40, v41);
                CFArrayAppendValue(v37, v81);
              }

              CFArrayAppendValue(v37, v38);
              v29[v36] = 1;
            }

            ++v36;
          }

          while (v25 != v36);
          v32 = *(a1 + 24);
          if (!v37)
          {
            v3 = v80;
            v35 = v81;
LABEL_32:
            v33 = *(*(v32 + 80) + 40 * v35 + 16);
LABEL_33:
            v47 = *(v33 + 32);
            if (v47)
            {
              v48 = v3[1];
              v47(a1);
            }

            goto LABEL_35;
          }

          v42 = v80;
          v43 = v80[1];
          v44 = OUTLINED_FUNCTION_4(*(v32 + 80) + 40 * v81);
          v45(v44, v37);
          v46 = v37;
          v3 = v42;
          CFRelease(v46);
        }

LABEL_35:
        v29[v30++] = 1;
        if (v30 == v25)
        {
          goto LABEL_59;
        }
      }
    }

    goto LABEL_59;
  }

LABEL_60:
  if ((*(*v3 + 57) & 1) != 0 && (a2 & 1) != 0 && (*(*(a1 + 24) + 56) & 2) != 0)
  {
    _logRecordEvent(v3[1], a1, 0, 0);
  }

  v69 = v6[13];
  if (v69)
  {
    (v69)(a1, v3[1], v16);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v70 = *(a1 + 40);
  if (v70)
  {
    CFRelease(v70);
    *(a1 + 40) = 0;
  }

  v71 = *(a1 + 48);
  if (v71)
  {
    OUTLINED_FUNCTION_1(v71);
    CFRelease(*(a1 + 48));
    *(a1 + 48) = 0;
  }

  *(a1 + 58) = 1;
  v72 = *MEMORY[0x1E69E9840];
}

uint64_t CPRecordProcessChangesImmediate(uint64_t a1, const void *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = CPRecordStoreGetDatabase(a1);
      if (result)
      {
        result = CPSqliteDatabaseConnectionForWriting(result);
        if (result)
        {
          v5 = result;
          result = *(a1 + 32);
          if (result)
          {
            result = CFDictionaryContainsKey(result, a2);
            if (result)
            {
              v7[1] = v5;
              v7[2] = 0;
              v7[0] = a1;
              Value = CFDictionaryGetValue(*(a1 + 32), a2);
              CPRecordStoreUpdateRecord(a2, Value, v7);
              CFDictionaryRemoveValue(*(a1 + 32), a2);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void CPRecordStoreUpdateRecord(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v56 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  v7 = *(v6 + 48);
  if (v7)
  {
    v7(a1, *(a3 + 8));
  }

  v55 = 0;
  _updateModificationDateProperties(a1);
  v8 = CPRecordStoreWriteColumnsForRecord(a1, &v55, 0);
  v9 = *v6;
  v53 = *MEMORY[0x1E695E480];
  v10 = CFStringCreateWithCString(v53, v9, 0x8000100u);
  v11 = *v3;
  if (!*v3)
  {
    goto LABEL_42;
  }

  v12 = *(a1 + 32);
  if (v12 < -1)
  {
    if ((v12 & 0x7FFFFFFF) < *(v11 + 26))
    {
      v12 = *(v11[14] + (v12 & 0x7FFFFFFF));
      goto LABEL_7;
    }

LABEL_42:
    v12 = -1;
  }

LABEL_7:
  CPSqliteConnectionUpdateRecord(v3[1], v10, v12, v8, v55);
  CFRelease(v10);
  free(v8);
  v13 = *(a1 + 40);
  if (v13)
  {
    *(a1 + 40) = 0;
    Count = CFDictionaryGetCount(v13);
    if (Count)
    {
      v22 = Count;
      v49 = a2;
      v50 = v6;
      OUTLINED_FUNCTION_6(Count, v15, v16, v17, v18, v19, v20, v21, v47);
      MEMORY[0x1EEE9AC00]();
      v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v23 >= 0x200)
      {
        v25 = 512;
      }

      else
      {
        v25 = v23;
      }

      bzero(&v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
      v48 = v13;
      OUTLINED_FUNCTION_7();
      CFDictionaryGetKeysAndValues(v26, v27, v28);
      MEMORY[0x1EEE9AC00]();
      v29 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v22 >= 1)
      {
        bzero(&v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
        v30 = 0;
        v52 = v3;
        do
        {
          if ((v29[v30] & 1) == 0)
          {
            v31 = *&v24[8 * v30];
            v32 = *(a1 + 24);
            v33 = *(*(v32 + 80) + 40 * v31 + 16);
            v34 = *(v33 + 40);
            if (!v34)
            {
              goto LABEL_27;
            }

            v35 = *&v24[8 * v30];
            v36 = v30 + 1;
            if (v30 + 1 >= v22)
            {
              goto LABEL_26;
            }

            v54 = v31;
            v51 = v31;
            Mutable = 0;
            do
            {
              v38 = *&v24[8 * v36];
              if (*(*(*(*(a1 + 24) + 80) + 40 * v38 + 16) + 40) == v34)
              {
                if (!Mutable)
                {
                  Mutable = CFArrayCreateMutable(v53, v22, 0);
                  CFArrayAppendValue(Mutable, v54);
                }

                CFArrayAppendValue(Mutable, v38);
                v29[v36] = 1;
              }

              ++v36;
            }

            while (v22 != v36);
            v32 = *(a1 + 24);
            if (!Mutable)
            {
              v35 = v54;
LABEL_26:
              v33 = *(*(v32 + 80) + 40 * v35 + 16);
              v3 = v52;
LABEL_27:
              v42 = *(v33 + 32);
              if (v42)
              {
                v43 = v3[1];
                v42(a1);
              }

              goto LABEL_29;
            }

            v3 = v52;
            v39 = v52[1];
            v40 = OUTLINED_FUNCTION_4(*(v32 + 80) + 40 * v54);
            v41(v40, Mutable);
            CFRelease(Mutable);
          }

LABEL_29:
          v29[v30++] = 1;
        }

        while (v30 != v22);
      }

      v13 = v48;
      LOBYTE(a2) = v49;
      v6 = v50;
    }
  }

  if ((a2 & 1) != 0 && (*(*v3 + 57) & 1) != 0 && (*(*(a1 + 24) + 56) & 2) != 0)
  {
    _logRecordEvent(v3[1], a1, 1, v13);
  }

  v44 = *(v6 + 104);
  if (v44)
  {
    v44(a1, v3[1], v13);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v45 = *(a1 + 48);
  if (v45)
  {
    OUTLINED_FUNCTION_1(v45);
    CFRelease(*(a1 + 48));
    *(a1 + 48) = 0;
  }

  v46 = *MEMORY[0x1E69E9840];
}

uint64_t CPRecordStoreGetSequenceNumber(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  ReaderConnection = _getReaderConnection(a1);
  if (!ReaderConnection)
  {
    return 0;
  }

  v2 = ReaderConnection;
  v3 = CPSqliteConnectionIntegerForProperty(ReaderConnection, @"__CPRecordSequenceNumber");
  CPSqliteDatabaseReleaseSqliteConnection(v2);
  return v3;
}

uint64_t CPRecordStoreGetRecordIDForRowid(uint64_t a1, uint64_t a2)
{
  value = a2;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  if ((a2 - 0x80000000) <= 0xFFFFFFFF7FFFFFFELL)
  {
    Mutable = *(a1 + 120);
    if (!Mutable)
    {
      v5 = malloc_type_malloc(0x8000uLL, 0x100004000313F17uLL);
      *(a1 + 112) = v5;
      if (!v5)
      {
        return 0xFFFFFFFFLL;
      }

      Mutable = CFSetCreateMutable(0, 4096, &Int64SetKeyCallbacks);
      *(a1 + 120) = Mutable;
      *(a1 + 108) = 4096;
    }

    v6 = *(a1 + 112);
    v7 = CFSetGetValue(Mutable, &value);
    if (v7)
    {
      return ((v7 - v6) >> 3) | 0x80000000;
    }

    v8 = *(a1 + 104);
    if (*(a1 + 108) != v8)
    {
LABEL_16:
      v13 = &v6[8 * v8];
      *v13 = value;
      *(a1 + 104) = v8 + 1;
      v2 = v8 | 0x80000000;
      CFSetSetValue(*(a1 + 120), v13);
      return v2;
    }

    v9 = v8 + (v8 >> 1);
    v10 = reallocf(v6, 8 * v9);
    if (v10)
    {
      v6 = v10;
      if (v10 != *(a1 + 112))
      {
        CFSetRemoveAllValues(*(a1 + 120));
        if (v8 >= 1)
        {
          v11 = v8;
          v12 = v6;
          do
          {
            CFSetSetValue(*(a1 + 120), v12);
            v12 += 8;
            --v11;
          }

          while (v11);
        }

        *(a1 + 112) = v6;
      }

      *(a1 + 108) = v9;
      goto LABEL_16;
    }

    return 0xFFFFFFFFLL;
  }

  return v2;
}

uint64_t CPRecordStoreGetRowidForRecordID(uint64_t a1, int a2)
{
  if (!a1)
  {
    return -1;
  }

  if (a2 >= -1)
  {
    return a2;
  }

  if ((a2 & 0x7FFFFFFF) < *(a1 + 104))
  {
    return *(*(a1 + 112) + 8 * (a2 & 0x7FFFFFFF));
  }

  else
  {
    return -1;
  }
}

uint64_t CPRecordStoreProcessAddedRecordsWithPolicyAndTransactionTypeMatchingPredicate(uint64_t a1, unsigned int (*a2)(uint64_t, void, uint64_t), uint64_t a3, int a4, unsigned int a5, CFErrorRef *a6)
{
  v6 = 0;
  if (!a1 || !a2)
  {
    return v6;
  }

  if (!*(a1 + 24))
  {
    return 1;
  }

  v32[0] = a1;
  v32[2] = 0;
  Database = CPRecordStoreGetDatabase(a1);
  if (!Database)
  {
    return 0;
  }

  v14 = Database;
  v15 = CPSqliteDatabaseConnectionForWriting(Database);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  CPSqliteConnectionBeginTransactionType(v15, a5);
  v32[1] = v16;
  v17 = CPSqliteConnectionIntegerForProperty(v16, @"__CPRecordSequenceNumber");
  if (!a4 || ((v18 = *(a1 + 96), v18 != -1) ? (v19 = v17 == v18) : (v19 = 1), v19))
  {
    *(a1 + 96) = v17;
    Count = CFDictionaryGetCount(*(a1 + 24));
    v21 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    if (v21)
    {
      v22 = v21;
      v23 = *(a1 + 24);
      OUTLINED_FUNCTION_7();
      CFDictionaryGetKeysAndValues(v24, v25, v26);
      *(a1 + 56) = 1;
      if (Count >= 1)
      {
        v27 = v22;
        do
        {
          v28 = *v27;
          if (a2(a1, *v27, a3))
          {
            v29 = *(a1 + 48);
            if (v29 && CFSetContainsValue(v29, v28))
            {
              CFSetRemoveValue(*(a1 + 48), v28);
            }

            else
            {
              Value = CFDictionaryGetValue(*(a1 + 24), v28);
              CPRecordStoreSaveRecord(v28, Value, v32);
            }

            CFDictionaryRemoveValue(*(a1 + 24), v28);
          }

          ++v27;
          --Count;
        }

        while (Count);
      }

      *(a1 + 56) = 0;
      free(v22);
      v6 = 1;
      goto LABEL_27;
    }

    return 0;
  }

  v6 = 0;
  if (a6)
  {
    *a6 = CFErrorCreate(0, @"CPRecord", 2, 0);
  }

LABEL_27:
  if ((*(v14 + 116) & 8) != 0)
  {
    CPSqliteDatabaseReleaseSqliteConnection(v16);
  }

  return v6;
}

void _CPRecordStoreSaveDeletedRecords(void *a1)
{
  if (a1 && *a1 && a1[1])
  {
    v2 = *(*a1 + 40);
    if (v2)
    {
      Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v2);
      CFDictionaryApplyFunction(Copy, CPRecordStoreDeleteRecordsInDictionary, a1);
      CFRelease(Copy);
      CFRelease(*(*a1 + 40));
      *(*a1 + 40) = 0;
    }
  }
}

void _CPRecordStoreSaveAddedRecords(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (a1[1])
      {
        v3 = *(v2 + 24);
        if (v3)
        {
          *(v2 + 56) = 1;
          Copy = CFDictionaryCreateCopy(0, v3);
          if (Copy)
          {
            v5 = Copy;
            CFDictionaryApplyFunction(Copy, CPRecordStoreSaveRecordIfNotAdded, a1);
            CFRelease(v5);
          }

          v6 = *a1;
          *(v6 + 56) = 0;
          CFRelease(*(v6 + 24));
          v2 = *a1;
          *(*a1 + 24) = 0;
        }

        v7 = *(v2 + 48);
        if (v7)
        {
          CFRelease(v7);
          *(*a1 + 48) = 0;
        }
      }
    }
  }
}

uint64_t CPRecordLoadHandler(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sqlite3_column_type(*(a1 + 8), 0);
  if (v4 == 5)
  {
    RecordIDForRowid = -1;
    goto LABEL_4;
  }

  v14 = sqlite3_column_int64(*(a1 + 8), 0);
  RecordIDForRowid = CPRecordStoreGetRecordIDForRowid(*a2, v14);
  v15 = *(*a2 + 40);
  if (v15)
  {
    Value = CFDictionaryGetValue(v15, *(a2 + 8));
    if (Value)
    {
      if (CFDictionaryContainsKey(Value, RecordIDForRowid))
      {
        return 0;
      }
    }
  }

LABEL_4:
  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = v6(a1, *(a2 + 64));
    v8 = v7 & 1;
    if ((v7 & 2) == 0)
    {
      return v8;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v4 != 5)
  {
    v10 = CFDictionaryGetValue(*(a2 + 16), RecordIDForRowid);
    if (v10)
    {
      Instance = v10;
      if (v10[56] == 1)
      {
        CPSqliteStatementApplyValuesFromRecordWithNullValue(a1, *(a2 + 24), *(a2 + 40), v10, *MEMORY[0x1E695E738]);
        *(Instance + 56) = 0;
      }
    }

    else
    {
      Instance = _createInstance(*(a2 + 8), RecordIDForRowid);
      if (!Instance)
      {
        goto LABEL_16;
      }

      CPSqliteStatementApplyValuesFromRecordWithNullValue(a1, *(a2 + 24), *(a2 + 40), Instance, *MEMORY[0x1E695E738]);
      *(Instance + 16) = *a2;
      CFDictionarySetValue(*(a2 + 16), RecordIDForRowid, Instance);
      CFRelease(Instance);
    }

    *(Instance + 58) = 1;
    goto LABEL_16;
  }

  Instance = *MEMORY[0x1E695E738];
LABEL_16:
  v11 = *(a2 + 56);
  if (v11)
  {
    if (v11(a1, Instance, *(a2 + 64)))
    {
      v8 = 1;
    }

    else
    {
      v8 = v8;
    }
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    CFArrayAppendValue(v12, Instance);
  }

  return v8;
}

const void *_CPRecordStoreGetCachedInstanceOfClassWithUID(uint64_t a1, void *a2, int a3)
{
  Cache = CPRecordStoreGetCache(a1, a2);
  if (!Cache)
  {
    return 0;
  }

  v7 = a3;
  Value = CFDictionaryGetValue(Cache, a3);
  if (!Value)
  {
    return 0;
  }

  updated = _updateDetachedRecord(Value);
  if (updated)
  {
    DeletedRecords = CPRecordStoreGetDeletedRecords(a1, a2);
    if (DeletedRecords)
    {
      if (CFDictionaryContainsKey(DeletedRecords, v7))
      {
        return 0;
      }
    }
  }

  return updated;
}

sqlite3_stmt **CPRecordStoreCopyInstancesOfClassWithUIDs(uint64_t a1, void *a2, const __CFArray *a3)
{
  Cache = CPRecordStoreGetCache(a1, a2);
  if (!Cache)
  {
    return 0;
  }

  v7 = Cache;
  Count = CFArrayGetCount(a3);
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v11 = CFArrayGetCount(a3);
  v12 = CFSetCreateMutable(v9, v11, 0);
  if (Count < 1)
  {
LABEL_9:
    CFRelease(v12);
    if (Mutable)
    {
      return Mutable;
    }
  }

  else
  {
    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v13);
      Value = CFDictionaryGetValue(v7, ValueAtIndex);
      if (!Value)
      {
        break;
      }

      v16 = Value;
      if (!CFSetContainsValue(v12, ValueAtIndex))
      {
        updated = _updateDetachedRecord(v16);
        if (updated)
        {
          CFArrayAppendValue(Mutable, updated);
          CFSetAddValue(v12, ValueAtIndex);
        }
      }

      if (Count == ++v13)
      {
        goto LABEL_9;
      }
    }

    CFRelease(Mutable);
    CFRelease(v12);
  }

  SelectPrefixFromRecordDescriptorWithAdditionalColumns = _CPRecordStoreCreateSelectPrefixFromRecordDescriptorWithAdditionalColumns(a2, 0, 0, 0, 0);
  if (!SelectPrefixFromRecordDescriptorWithAdditionalColumns)
  {
    return 0;
  }

  v19 = SelectPrefixFromRecordDescriptorWithAdditionalColumns;
  ReaderConnection = _getReaderConnection(a1);
  if (ReaderConnection)
  {
    v21 = ReaderConnection;
    CFStringAppend(v19, @" WHERE ROWID IN(");
    if (Count >= 1)
    {
      v22 = Count;
      do
      {
        CFStringAppend(v19, @"?");
        if (v22 != 1)
        {
          CFStringAppend(v19, @", ");
        }

        --v22;
      }

      while (v22);
    }

    CFStringAppend(v19, @" "));
    v23 = CPSqliteConnectionStatementForSQL(v21, v19);
    Mutable = v23;
    if (v23)
    {
      if (v23[1])
      {
        if (Count >= 1)
        {
          v24 = 0;
          while (1)
          {
            v25 = CFArrayGetValueAtIndex(a3, v24);
            if (!a1)
            {
              break;
            }

            if (v25 < -1)
            {
              if ((v25 & 0x7FFFFFFF) >= *(a1 + 104))
              {
                break;
              }

              v26 = *(*(a1 + 112) + 8 * (v25 & 0x7FFFFFFF));
            }

            else
            {
              v26 = v25;
            }

LABEL_28:
            sqlite3_bind_int64(Mutable[1], ++v24, v26);
            if (Count == v24)
            {
              goto LABEL_33;
            }
          }

          v26 = -1;
          goto LABEL_28;
        }

LABEL_33:
        Mutable = CPRecordStoreProcessRecordStatementWithPropertyIndicesAndQueryDescriptor(a1, a2, Mutable, 0, 0, 0, 0, 0);
      }

      else
      {
        Mutable = 0;
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection(v21);
  }

  else
  {
    Mutable = 0;
  }

  CFRelease(v19);
  return Mutable;
}

uint64_t CPRecordStoreDeleteChangesForClassWithIndices(uint64_t a1, void *a2, const __CFArray *a3)
{
  result = CPRecordStoreGetDatabase(a1);
  if (result)
  {
    v7 = result;
    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppendFormat(Mutable, 0, @"DELETE FROM %sChanges", *a2);
    CFStringAppend(Mutable, @" WHERE ROWID IN(");
    Count = CFArrayGetCount(a3);
    v10 = Count;
    if (Count >= 1)
    {
      v11 = Count;
      do
      {
        CFStringAppend(Mutable, @"?");
        if (v11 != 1)
        {
          CFStringAppend(Mutable, @", ");
        }

        --v11;
      }

      while (v11);
    }

    CFStringAppend(Mutable, @";"));
    v12 = CPSqliteDatabaseConnectionForWriting(v7);
    v13 = CPSqliteConnectionStatementForSQL(v12, Mutable);
    CFRelease(Mutable);
    if (v13 && v13[1])
    {
      if (v10 >= 1)
      {
        v14 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v14);
          if (!a1)
          {
            break;
          }

          if (ValueAtIndex < -1)
          {
            if ((ValueAtIndex & 0x7FFFFFFF) >= *(a1 + 104))
            {
              break;
            }

            v16 = *(*(a1 + 112) + 8 * (ValueAtIndex & 0x7FFFFFFF));
          }

          else
          {
            v16 = ValueAtIndex;
          }

LABEL_16:
          sqlite3_bind_int64(v13[1], ++v14, v16);
          if (v10 == v14)
          {
            goto LABEL_19;
          }
        }

        v16 = -1;
        goto LABEL_16;
      }

LABEL_19:
      v17 = CPSqliteStatementPerform(v13);
      CPSqliteStatementReset(v13);
      CPSqliteDatabaseReleaseSqliteConnection(v12);
      return v17 == 101;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

sqlite3_stmt *_CPRecordStoreDeleteChangesForClassWhereWithBindBlock(uint64_t a1, void *a2, int a3, const __CFString *a4, int a5, int a6, uint64_t a7)
{
  result = CPRecordStoreGetDatabase(a1);
  if (result)
  {
    v15 = result;
    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppendFormat(Mutable, 0, @"DELETE FROM %sChanges WHERE ", *a2);
    v17 = @"1";
    if (a6)
    {
      v17 = @"sequence_number <= ?";
    }

    if (a5)
    {
      CFStringAppendFormat(Mutable, 0, @"ROWID <= ?");
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, v17);
    }

    if (a4)
    {
      CFStringAppend(Mutable, @" AND ");
      CFStringAppend(Mutable, a4);
    }

    CFStringAppend(Mutable, @";");
    v18 = CPSqliteDatabaseConnectionForWriting(v15);
    v19 = CPSqliteConnectionStatementForSQL(v18, Mutable);
    CFRelease(Mutable);
    if (!v19)
    {
      return 0;
    }

    result = *(v19 + 1);
    if (result)
    {
      if (a1)
      {
        if (a3 >= -1)
        {
          v20 = a3;
LABEL_16:
          sqlite3_bind_int64(result, 1, v20);
          if (a7)
          {
            (*(a7 + 16))(a7, v19, 2);
          }

          v21 = CPSqliteStatementPerform(v19);
          CPSqliteStatementReset(v19);
          CPSqliteDatabaseReleaseSqliteConnection(v18);
          return (v21 == 101);
        }

        if ((a3 & 0x7FFFFFFF) < *(a1 + 104))
        {
          v20 = *(*(a1 + 112) + 8 * (a3 & 0x7FFFFFFF));
          goto LABEL_16;
        }
      }

      v20 = -1;
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t nonDeletedCountHandler(uint64_t a1, uint64_t a2)
{
  v3 = sqlite3_column_int64(*(a1 + 8), 0);
  RecordIDForRowid = CPRecordStoreGetRecordIDForRowid(*(a2 + 8), v3);
  if (!*a2 || !CFDictionaryContainsKey(*a2, RecordIDForRowid))
  {
    ++*(a2 + 16);
  }

  return 0;
}

void _CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithPropertiesA_cold_1(unsigned int a1, uint64_t a2, void **a3)
{
  v4 = a1;
  v5 = (a2 + 16);
  do
  {
    v6 = *a3++;
    *v6 = **v5;
    v7 = *v5;
    v5 += 3;
    free(v7);
    --v4;
  }

  while (v4);
}

void CPDeleteTree_cold_2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_195E6C000, v1, v2, "fts_close failed: %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void CPPathUtils_MakePath_cold_2(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2080;
  v6 = a1;
  _os_log_error_impl(&dword_195E6C000, log, OS_LOG_TYPE_ERROR, "_CStringPathUtils_FileAtPathExists: stat failed. errno = %d, path = %s", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void __getRBSProcessHandleClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSProcessHandleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPInhibitor.m" lineNumber:15 description:{@"Unable to find class %s", "RBSProcessHandle"}];

  __break(1u);
}

void RunningBoardServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CPInhibitor.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void __getRBSTargetClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSTargetClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPInhibitor.m" lineNumber:16 description:{@"Unable to find class %s", "RBSTarget"}];

  __break(1u);
}

void __getRBSDomainAttributeClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSDomainAttributeClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPInhibitor.m" lineNumber:17 description:{@"Unable to find class %s", "RBSDomainAttribute"}];

  __break(1u);
}

void __getRBSAcquisitionCompletionAttributeClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSAcquisitionCompletionAttributeClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPInhibitor.m" lineNumber:18 description:{@"Unable to find class %s", "RBSAcquisitionCompletionAttribute"}];

  __break(1u);
}

void __getRBSAssertionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSAssertionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPInhibitor.m" lineNumber:14 description:{@"Unable to find class %s", "RBSAssertion"}];

  __break(1u);
}

void __getNPSDomainAccessorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getNPSDomainAccessorClass(void)_block_invoke") description:{@"SysConfigUtils.m", 29, @"Unable to find class %s", "NPSDomainAccessor"}];
  __break(1u);
}

void __getNPSDomainAccessorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *NanoPreferencesSyncLibrary(void)") description:{@"SysConfigUtils.m", 28, @"%s", *a1}];
  __break(1u);
}

void __getNSSManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getNSSManagerClass(void)_block_invoke") description:{@"SysConfigUtils.m", 21, @"Unable to find class %s", "NSSManager"}];
  __break(1u);
}

void __getNSSManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *NanoSystemSettingsLibrary(void)") description:{@"SysConfigUtils.m", 20, @"%s", *a1}];
  __break(1u);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}