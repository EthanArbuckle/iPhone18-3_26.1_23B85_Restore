void init_logging_signpost_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __init_logging_signpost_modules_block_invoke;
  block[3] = &__block_descriptor_tmp;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_signpost_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_signpost_modules_onceToken, block);
  }
}

void __init_logging_signpost_modules_block_invoke(uint64_t a1)
{
  v2 = objc_msgSend_setPairingResultValid_;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + v3);
      if (!v7)
      {
        v7 = "<Undefined>";
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v12) = v4;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
          v6 = *(a1 + 32);
          v7 = "<Undefined>";
        }
      }

      v8 = *(v6 + v3 + 8);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __init_logging_signpost_modules_block_invoke_cold_1(v15, v4, &v16);
          v8 = "<Undefined>";
        }
      }

      v9 = os_log_create(v7, v8);
      *(*(a1 + 40) + 8 * v4) = v9;
      if (v9)
      {
        ++v5;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v12 = v7;
          v13 = 2080;
          v14 = v8;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = v7;
        v13 = 2080;
        v14 = v8;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v10 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v10);
    v2 = objc_msgSend_setPairingResultValid_;
  }

  else
  {
    LODWORD(v10) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 141);
    LODWORD(v12) = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v10) = *(a1 + 48);
  }

  gLogSignpostObjects = *(a1 + 40);
  gNumLogSignpostObjects = v10;
}

void sub_100001248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

int main(int argc, const char **argv, const char **envp)
{
  init_logging();
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 6;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting xpc service", v9, 2u);
  }

  v6 = objc_opt_new();
  v7 = +[NSXPCListener serviceListener];
  [v7 setDelegate:v6];
  [v7 resume];

  return 0;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void init_logging_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __init_logging_modules_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_modules_onceToken, block);
  }
}

void __init_logging_modules_block_invoke(uint64_t a1)
{
  v2 = objc_msgSend_setPairingResultValid_;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + v3);
      if (!v7)
      {
        v7 = "<Undefined>";
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v12) = v4;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
          v6 = *(a1 + 32);
          v7 = "<Undefined>";
        }
      }

      v8 = *(v6 + v3 + 8);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __init_logging_modules_block_invoke_cold_1(v15, v4, &v16);
          v8 = "<Undefined>";
        }
      }

      v9 = os_log_create(v7, v8);
      *(*(a1 + 40) + 8 * v4) = v9;
      if (v9)
      {
        ++v5;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v12 = v7;
          v13 = 2080;
          v14 = v8;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = v7;
        v13 = 2080;
        v14 = v8;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v10 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v10);
    v2 = objc_msgSend_setPairingResultValid_;
  }

  else
  {
    LODWORD(v10) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 141);
    LODWORD(v12) = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v10) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v10;
}

void init_logging()
{
  init_logging_modules(&_gLogObjects, 9, _kLoggingModuleEntries);

  init_logging_signposts();
}

id logObjectForModule()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 6;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    v1 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v1)
    {
      logObjectForModule_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 40);
  }

  return v10;
}

id _BTSessionQueue()
{
  if (_BTSessionQueue_onceToken != -1)
  {
    _BTSessionQueue_cold_1();
  }

  v1 = _BTSessionQueue___BTSessionQueue;

  return v1;
}

void __cleanupBTSession(void *a1)
{
  v1 = a1;
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 6;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 136315394;
    *&v5[4] = "__cleanupBTSession";
    v6 = 2112;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: cleanup pairingService %@", v5, 0x16u);
  }

  [v1 setIsBTReady:0];
  [v1 setBTAccessoryManager:0];
  *v5 = [v1 BTSession];
  BTSessionDetachWithQueue();
  [v1 setBTSession:0];
}

void __callbackSessionEvent(uint64_t a1, int a2, int a3, void *a4)
{
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 6;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109634;
    *&buf[4] = a2;
    v34 = 1024;
    v35 = a3;
    v36 = 2112;
    v37 = a4;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "__callbackSessionEvent: event: %d result:%d userData:%@", buf, 0x18u);
  }

  if (a3)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v11 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v11 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ERROR - ACCBluetoothPairingService __callbackSessionEvent called with a BTResult of %d", buf, 8u);
    }

    goto LABEL_81;
  }

  if (a4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = a4;
      if (gLogObjects)
      {
        v12 = gNumLogObjects <= 5;
      }

      else
      {
        v12 = 1;
      }

      v13 = !v12;
      if (a2)
      {
        if (a2 == 1)
        {
          if (v13)
          {
            v16 = *(gLogObjects + 40);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [ServiceDelegate listener:shouldAcceptNewConnection:];
            }

            v16 = &_os_log_default;
            v19 = &_os_log_default;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "BTSession detached", buf, 2u);
          }

          [v11 cleanup];
          if (gLogObjects && gNumLogObjects >= 6)
          {
            v18 = *(gLogObjects + 40);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [ServiceDelegate listener:shouldAcceptNewConnection:];
            }

            v18 = &_os_log_default;
            v20 = &_os_log_default;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            __callbackSessionEvent_cold_5();
          }

          goto LABEL_80;
        }

        if (a2 == 2)
        {
          if (v13)
          {
            v14 = *(gLogObjects + 40);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [ServiceDelegate listener:shouldAcceptNewConnection:];
            }

            v14 = &_os_log_default;
            v25 = &_os_log_default;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "BTSession terminated", buf, 2u);
          }

          __cleanupBTSession(v11);
          [v11 _AttachToBTServer];
          goto LABEL_81;
        }

        if (v13)
        {
          v18 = *(gLogObjects + 40);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [ServiceDelegate listener:shouldAcceptNewConnection:];
          }

          v18 = &_os_log_default;
          v26 = &_os_log_default;
        }

        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          goto LABEL_80;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v27 = "Unhandled BTSessionEvent: %d";
        v28 = buf;
        v29 = v18;
        v30 = OS_LOG_TYPE_INFO;
        goto LABEL_78;
      }

      if (v13)
      {
        v17 = *(gLogObjects + 40);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ServiceDelegate listener:shouldAcceptNewConnection:];
        }

        v17 = &_os_log_default;
        v21 = &_os_log_default;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "BTSession attached", buf, 2u);
      }

      if (a1)
      {
        [v11 setBTSession:a1];
        *buf = 0;
        [v11 BTSession];
        BTServiceAddCallbacks();
        [v11 BTSession];
        Default = BTAccessoryManagerGetDefault();
        v23 = *buf;
        v24 = logObjectForModule();
        v18 = v24;
        if (v23 && !Default)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            LOWORD(v32[0]) = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Successfully established BT session", v32, 2u);
          }

          [v11 setBTAccessoryManager:*buf];
          [v11 setIsBTReady:1];
          v18 = [v11 setup_complete_semaphore];
          dispatch_semaphore_signal(v18);
          goto LABEL_80;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v32[0] = 67109120;
          v32[1] = 0;
          v27 = "Unable to get default BT accessory manager, result %d";
          v28 = v32;
          v29 = v18;
          v30 = OS_LOG_TYPE_DEFAULT;
LABEL_78:
          v31 = 8;
          goto LABEL_79;
        }
      }

      else
      {
        v18 = logObjectForModule();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v27 = "ERROR - ACCBluetoothPairingService __callbackSessionEvent called with a NULL BTSession";
          v28 = buf;
          v29 = v18;
          v30 = OS_LOG_TYPE_DEFAULT;
          v31 = 2;
LABEL_79:
          _os_log_impl(&_mh_execute_header, v29, v30, v27, v28, v31);
        }
      }

LABEL_80:

LABEL_81:
    }
  }
}

void __BTPairingAgentStatusEventCallback(uint64_t a1, int a2, uint64_t a3, int a4, void *a5)
{
  v7 = a5;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 6;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11[0] = 67109634;
    v11[1] = a2;
    v12 = 1024;
    v13 = a4;
    v14 = 2112;
    v15 = v7;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "__BTPairingAgentStatusEventCallback: event:%d result:%d pairingService:%@", v11, 0x18u);
  }
}

void _BTServiceCallback(uint64_t a1, int a2, int a3, int a4, int a5, void *a6)
{
  v11 = a6;
  if (gLogObjects)
  {
    v12 = gNumLogObjects < 6;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v14 = &_os_log_default;
    v13 = &_os_log_default;
  }

  else
  {
    v14 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 67110146;
    v27 = a2;
    v28 = 1024;
    v29 = a3;
    v30 = 1024;
    v31 = a4;
    v32 = 1024;
    v33 = a5;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "_BTServiceCallback: service:%d eventType:%d event:%d result:%d pairingService:%@", buf, 0x24u);
  }

  if (a3 == 1)
  {
    if ((a2 & 0x80) != 0 && a4 == 12)
    {
      if (gLogObjects && gNumLogObjects >= 6)
      {
        v16 = *(gLogObjects + 40);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ServiceDelegate listener:shouldAcceptNewConnection:];
        }

        v16 = &_os_log_default;
        v20 = &_os_log_default;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v27 = a2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "_BTServiceCallback: BT_SERVICE_DISCONNECT, service 0x%x", buf, 8u);
      }

      goto LABEL_34;
    }
  }

  else if (!a3 && (a2 & 0x80) != 0 && a4 == 11)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v15 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v15 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v27 = a2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "_BTServiceCallback: BT_SERVICE_CONNECT, service 0x%x", buf, 8u);
    }

    v18 = [v11 pairingTimer];
    dispatch_source_set_timer(v18, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

    v19 = [v11 processingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___BTServiceCallback_block_invoke;
    block[3] = &unk_10000C558;
    v22 = v11;
    v23 = a1;
    v24 = a5;
    v25 = a2;
    dispatch_async(v19, block);

    v16 = v22;
LABEL_34:
  }
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xEu);
}

void __init_logging_signpost_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}