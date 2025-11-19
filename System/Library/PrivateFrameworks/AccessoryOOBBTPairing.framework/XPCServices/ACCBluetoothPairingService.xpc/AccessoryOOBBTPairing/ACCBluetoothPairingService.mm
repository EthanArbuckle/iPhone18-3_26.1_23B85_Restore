@interface ACCBluetoothPairingService
- (ACCBluetoothPairingService)init;
- (id)_btDeviceGetMACAddress:(BTDeviceImpl *)a3;
- (int)_createPairingAgent;
- (int)_deletePairingAgent;
- (void)_AttachToBTServer;
- (void)_cancelBTOOBPairing:(id)a3;
- (void)_checkAlreadyPaired:(id)a3 completionHandler:(id)a4;
- (void)_deviceSupportsContactsSync:(id)a3 _withReply:(id)a4;
- (void)_getDeviceBTMacAddress:(id)a3;
- (void)_setBTDeviceSyncSettings:(id)a3;
- (void)_startBTOOBPairing:(id)a3 pairingDataC192:(id)a4 pairingDataR192:(id)a5 pairingDataC256:(id)a6 pairingDataR256:(id)a7 completionHandler:(id)a8;
- (void)cancelBTOOBPairing:(id)a3;
- (void)checkAlreadyPaired:(id)a3 completionHandler:(id)a4;
- (void)cleanup;
- (void)dealloc;
- (void)deviceSupportsContactsSync:(id)a3 withReply:(id)a4;
- (void)getDeviceBTMacAddress:(id)a3;
- (void)setBTDeviceSyncSettings:(id)a3;
- (void)startBTOOBPairing:(id)a3 pairingDataC192:(id)a4 pairingDataR192:(id)a5 pairingDataC256:(id)a6 pairingDataR256:(id)a7 completionHandler:(id)a8;
@end

@implementation ACCBluetoothPairingService

- (ACCBluetoothPairingService)init
{
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
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACCBluetoothPairingService init", buf, 2u);
  }

  v25.receiver = self;
  v25.super_class = ACCBluetoothPairingService;
  v6 = [(ACCBluetoothPairingService *)&v25 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_isBTReady = 0;
    v6->_BTPairingAgent = 0;
    v6->_BTSession = 0;
    v6->_BTAccessoryManager = 0;
    pairingCompletionHandler = v6->_pairingCompletionHandler;
    v6->_pairingCompletionHandler = 0;

    v9 = dispatch_queue_create(kProcessingQueueName, 0);
    processingQueue = v7->_processingQueue;
    v7->_processingQueue = v9;

    v11 = dispatch_semaphore_create(0);
    setup_complete_semaphore = v7->_setup_complete_semaphore;
    v7->_setup_complete_semaphore = v11;

    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v7->_processingQueue);
    pairingTimer = v7->_pairingTimer;
    v7->_pairingTimer = v13;

    objc_initWeak(buf, v7);
    v15 = v7->_pairingTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __34__ACCBluetoothPairingService_init__block_invoke;
    handler[3] = &unk_10000C378;
    objc_copyWeak(&v23, buf);
    dispatch_source_set_event_handler(v15, handler);
    dispatch_source_set_timer(v7->_pairingTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v7->_pairingTimer);
    v16 = _BTSessionQueue();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __34__ACCBluetoothPairingService_init__block_invoke_4;
    v20[3] = &unk_10000C450;
    v21 = v7;
    dispatch_sync(v16, v20);

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  if (gLogObjects && gNumLogObjects >= 6)
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
    v18 = &_os_log_default;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService init];
  }

  return v7;
}

void __34__ACCBluetoothPairingService_init__block_invoke(uint64_t a1)
{
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pairing timer fired, pairing timed out, cancelling pairing.", v7, 2u);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 macAddr];
  [v5 cancelBTOOBPairing:v6];
}

- (void)dealloc
{
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
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACCBluetoothPairingService dealloc", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = ACCBluetoothPairingService;
  [(ACCBluetoothPairingService *)&v6 dealloc];
}

- (void)cleanup
{
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
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACCBluetoothPairingService cleanup", buf, 2u);
  }

  if (self->_BTSession)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v6 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ACCBluetoothPairingService cleanup];
    }

    v8 = _BTSessionQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __37__ACCBluetoothPairingService_cleanup__block_invoke;
    block[3] = &unk_10000C450;
    block[4] = self;
    dispatch_async(v8, block);
  }

  if (self->_pairingTimer)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v9 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v9 = &_os_log_default;
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACCBluetoothPairingService cleanup];
    }

    v11 = _BTSessionQueue();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __37__ACCBluetoothPairingService_cleanup__block_invoke_7;
    v14[3] = &unk_10000C450;
    v14[4] = self;
    dispatch_sync(v11, v14);
  }

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v12 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v12 = &_os_log_default;
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ACCBluetoothPairingService cleanup done!", buf, 2u);
  }
}

id __37__ACCBluetoothPairingService_cleanup__block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingTimer];
  dispatch_source_cancel(v2);

  [*(a1 + 32) setPairingTimer:0];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __37__ACCBluetoothPairingService_cleanup__block_invoke_7_cold_2();
  }

  return [*(a1 + 32) _deletePairingAgent];
}

- (void)_AttachToBTServer
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __47__ACCBluetoothPairingService__AttachToBTServer__block_invoke(uint64_t a1)
{
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Blocking the processing queue while waiting for the BT session initialization to finish...", buf, 2u);
  }

  v5 = [*(a1 + 32) setup_complete_semaphore];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v6 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unblocking the processing queue", v8, 2u);
  }
}

- (void)_getDeviceBTMacAddress:(id)a3
{
  v4 = a3;
  v24 = 0;
  v23 = -21846;
  v22 = -1431655766;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v5;
  v32 = v5;
  v29 = v5;
  v30 = v5;
  if (gLogObjects)
  {
    v6 = gNumLogObjects <= 5;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (self->_BTSession)
  {
    if (v7)
    {
      v8 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v8 = &_os_log_default;
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "_getDeviceBTMacAddress", buf, 2u);
    }

    BTSession = self->_BTSession;
    Default = BTLocalDeviceGetDefault();
    if (Default)
    {
      v13 = Default;
      if (gLogObjects && gNumLogObjects >= 6)
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
        v16 = &_os_log_default;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ACCBluetoothPairingService _getDeviceBTMacAddress:];
      }
    }

    else
    {
      AddressString = BTLocalDeviceGetAddressString();
      if (AddressString)
      {
        v13 = AddressString;
        if (gLogObjects && gNumLogObjects >= 6)
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
          v18 = &_os_log_default;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [ACCBluetoothPairingService _getDeviceBTMacAddress:];
        }
      }

      else
      {
        v13 = BTDeviceAddressFromString();
        if (v13)
        {
          if (gLogObjects && gNumLogObjects >= 6)
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
            v19 = &_os_log_default;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [ACCBluetoothPairingService _getDeviceBTMacAddress:];
          }
        }

        else
        {
          v14 = [NSData dataWithBytes:&v22 length:6];
          v4[2](v4, v14);
        }
      }
    }

    if (gLogObjects && gNumLogObjects >= 6)
    {
      v20 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v20 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v26 = v13;
      v27 = 1024;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "_getDeviceBTMacAddress Finished, result %d (0x%x)", buf, 0xEu);
    }

    if (v4 && v13)
    {
      v4[2](v4, 0);
    }
  }

  else
  {
    if (v7)
    {
      v9 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v9 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ERROR: _getDeviceBTMacAddress: No BTSession!", buf, 2u);
    }
  }
}

- (void)_deviceSupportsContactsSync:(id)a3 _withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v17 = -1431655766;
  v16 = -21846;
  v15 = -1431655766;
  if (!self->_BTSession)
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 6;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v13 = &_os_log_default;
      v12 = &_os_log_default;
    }

    else
    {
      v13 = *(gLogObjects + 40);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ERROR: _showOOB2PairingContactsSync: No BTSession!", v14, 2u);
    }

    goto LABEL_22;
  }

  [v6 getBytes:&v15 length:6];
  BTSession = self->_BTSession;
  if (BTDeviceFromAddress())
  {
    [ACCBluetoothPairingService _deviceSupportsContactsSync:_withReply:];
LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  if (!v18)
  {
    [ACCBluetoothPairingService _deviceSupportsContactsSync:_withReply:];
    goto LABEL_22;
  }

  if (BTDeviceGetDeviceType())
  {
    [ACCBluetoothPairingService _deviceSupportsContactsSync:_withReply:];
    goto LABEL_22;
  }

  v10 = v17 == 22 || v17 == 17;
LABEL_23:
  v7[2](v7, v10);
}

- (void)deviceSupportsContactsSync:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  processingQueue = self->_processingQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __67__ACCBluetoothPairingService_deviceSupportsContactsSync_withReply___block_invoke;
  v13[3] = &unk_10000C478;
  v14 = v8;
  v15 = self;
  v16 = v6;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  dispatch_async(processingQueue, v13);
}

id __67__ACCBluetoothPairingService_deviceSupportsContactsSync_withReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasEntitlement:@"com.apple.accessories.ACCBluetoothPairingService.access"];
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v2)
  {
    if (v4)
    {
      v5 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v5 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deviceSupportsPBAP, call _deviceSupportsPBAP in _processingQueue", buf, 2u);
    }

    return [*(a1 + 40) _deviceSupportsContactsSync:*(a1 + 48) _withReply:*(a1 + 56)];
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v6 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR: deviceSupportsPBAP, caller does not have necessary entitlement!", v10, 2u);
    }

    return (*(*(a1 + 56) + 16))();
  }
}

- (void)_setBTDeviceSyncSettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  v28 = 0;
  v27 = -21846;
  v26 = -1431655766;
  if (!self->_BTSession)
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 6;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v17 = &_os_log_default;
      v11 = &_os_log_default;
    }

    else
    {
      v17 = *(gLogObjects + 40);
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v18 = "ERROR: _setBTDeviceSyncSettings: No BTSession!";
    v19 = v17;
    v20 = 2;
    goto LABEL_28;
  }

  [v4 getBytes:&v26 length:6];
  BTSession = self->_BTSession;
  v7 = BTDeviceFromAddress();
  if (v7)
  {
    v8 = v7;
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v9 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v9 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 67109376;
    v30 = v8;
    v31 = 1024;
    v32 = v8;
    v16 = "ERROR: Failed BTDeviceFromAddress, result %d (0x%x)";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v16, buf, 0xEu);
LABEL_25:

    goto LABEL_30;
  }

  if (!v28)
  {
    if (gLogObjects && gNumLogObjects >= 6)
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
      v25 = &_os_log_default;
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 67109376;
    v30 = 0;
    v31 = 1024;
    v32 = 0;
    v18 = "ERROR: BTDeviceFromAddress did not return a valid device, result %d (0x%x)";
    v19 = v17;
    v20 = 14;
LABEL_28:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
LABEL_29:

    goto LABEL_30;
  }

  SyncSettings = BTDeviceGetSyncSettings();
  if (SyncSettings)
  {
    v13 = SyncSettings;
    if (gLogObjects && gNumLogObjects >= 6)
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
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v30 = v13;
      v31 = 1024;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ERROR: Failed BTDeviceGetSyncSettings, result %d (0x%x)", buf, 0xEu);
    }
  }

  v22 = BTDeviceSetSyncSettings();
  if (v22)
  {
    v23 = v22;
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v9 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v9 = &_os_log_default;
      v24 = &_os_log_default;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 67109376;
    v30 = v23;
    v31 = 1024;
    v32 = v23;
    v16 = "ERROR: Failed BTDeviceSetSyncSettings, result %d (0x%x)";
    goto LABEL_24;
  }

LABEL_30:
}

- (void)setBTDeviceSyncSettings:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  processingQueue = self->_processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __54__ACCBluetoothPairingService_setBTDeviceSyncSettings___block_invoke;
  block[3] = &unk_10000C4A0;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(processingQueue, block);
}

void __54__ACCBluetoothPairingService_setBTDeviceSyncSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasEntitlement:@"com.apple.accessories.ACCBluetoothPairingService.access"];
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v2)
  {
    if (v4)
    {
      v5 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v5 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "setBTDeviceSyncSettings, call _setBTDeviceSyncSettings in _processingQueue", buf, 2u);
    }

    [*(a1 + 40) _setBTDeviceSyncSettings:*(a1 + 48)];
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v6 = &_os_log_default;
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR: setBTDeviceSyncSettings, caller does not have necessary entitlement!", v9, 2u);
    }
  }
}

- (void)getDeviceBTMacAddress:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  processingQueue = self->_processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__ACCBluetoothPairingService_getDeviceBTMacAddress___block_invoke;
  block[3] = &unk_10000C4C8;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(processingQueue, block);
}

id __52__ACCBluetoothPairingService_getDeviceBTMacAddress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasEntitlement:@"com.apple.accessories.ACCBluetoothPairingService.access"];
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v2)
  {
    if (v4)
    {
      v5 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v5 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "getDeviceBTMacAddress, call _getDeviceBTMacAddress in _processingQueue", buf, 2u);
    }

    return [*(a1 + 40) _getDeviceBTMacAddress:*(a1 + 48)];
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v6 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR: getDeviceBTMacAddress, caller does not have necessary entitlement!", v10, 2u);
    }

    return (*(*(a1 + 48) + 16))();
  }
}

- (int)_createPairingAgent
{
  if (self->_BTSession)
  {
    if (self->_BTPairingAgent)
    {
      return 0;
    }

    else
    {
      v14 = 0;
      v13 = 0u;
      v12 = 0u;
      v11 = __BTPairingAgentStatusEventCallback;
      if (gLogObjects)
      {
        v6 = gNumLogObjects < 6;
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ServiceDelegate listener:shouldAcceptNewConnection:];
        }

        v9 = &_os_log_default;
        v7 = &_os_log_default;
      }

      else
      {
        v9 = *(gLogObjects + 40);
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ACCBluetoothPairingService _createPairingAgent];
      }

      BTSession = self->_BTSession;
      return BTPairingAgentCreate();
    }
  }

  else
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 6;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v8 = &_os_log_default;
      v5 = &_os_log_default;
    }

    else
    {
      v8 = *(gLogObjects + 40);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ERROR: _createPairingAgent: No BTSession!", &v11, 2u);
    }

    return 1;
  }
}

- (int)_deletePairingAgent
{
  if (!self->_BTPairingAgent)
  {
    return 0;
  }

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

    v5 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _deletePairingAgent];
  }

  return BTPairingAgentDestroy();
}

- (void)_startBTOOBPairing:(id)a3 pairingDataC192:(id)a4 pairingDataR192:(id)a5 pairingDataC256:(id)a6 pairingDataR256:(id)a7 completionHandler:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v61 = 0;
  v60 = -21846;
  v59 = -1431655766;
  if (gLogObjects)
  {
    v21 = gNumLogObjects <= 5;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  if (!self->_BTSession)
  {
    if (v22)
    {
      v24 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v24 = &_os_log_default;
      v26 = &_os_log_default;
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v27 = "ERROR: _startBTOOBPairing: No BTSession!";
    v28 = v24;
    v29 = 2;
    goto LABEL_45;
  }

  if (v22)
  {
    v23 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v23 = &_os_log_default;
    v25 = &_os_log_default;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    v66 = 2112;
    v67 = v17;
    v68 = 2112;
    v69 = v18;
    v70 = 2112;
    v71 = v19;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "_startBTOOBPairing: macAddr: %@ C192:%@ R192:%@ C256:%@ R256:%@", buf, 0x34u);
  }

  if (!v15 || !v16 || !v17)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v24 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v24 = &_os_log_default;
      v30 = &_os_log_default;
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    *buf = 138412802;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    v66 = 2112;
    v67 = v17;
    v27 = "ERROR: macAddr(%@) and both pairingData C192(%@) and R192(%@) are required!";
    v28 = v24;
    v29 = 32;
    goto LABEL_45;
  }

  if (v18 && !v19 || !v18 && v19)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v24 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v24 = &_os_log_default;
      v31 = &_os_log_default;
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    *buf = 138412546;
    *&buf[4] = v18;
    *&buf[12] = 2112;
    *&buf[14] = v19;
    v27 = "ERROR: both pairingData C256(%@) and R256(%@) are required!";
    v28 = v24;
    v29 = 22;
LABEL_45:
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
LABEL_46:

    if (v20)
    {
      v20[2](v20, 0);
    }

    goto LABEL_48;
  }

  pairingTimer = self->_pairingTimer;
  v33 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(pairingTimer, v33, 0xFFFFFFFFFFFFFFFFLL, 0);
  [v15 getBytes:&v59 length:6];
  v34 = [(ACCBluetoothPairingService *)self _createPairingAgent];
  if (gLogObjects)
  {
    v35 = gNumLogObjects <= 5;
  }

  else
  {
    v35 = 1;
  }

  v36 = !v35;
  v58 = v34;
  if (v34)
  {
    if (v36)
    {
      v37 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v37 = &_os_log_default;
      v39 = &_os_log_default;
    }

    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    *buf = 67109376;
    *&buf[4] = v58;
    *&buf[8] = 1024;
    *&buf[10] = v58;
    v40 = "ERROR: Failed BTPairingAgentCreate, result %d (0x%x)";
LABEL_65:
    v41 = buf;
LABEL_66:
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v40, v41, 0xEu);
LABEL_67:

    goto LABEL_68;
  }

  if (v36)
  {
    v38 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v38 = &_os_log_default;
    v46 = &_os_log_default;
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
  }

  BTSession = self->_BTSession;
  v58 = BTDeviceFromAddress();
  if (v58)
  {
    v48 = logObjectForModule();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v58;
      *&buf[8] = 1024;
      *&buf[10] = v58;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "ERROR: Failed BTDeviceFromAddress, result %d (0x%x)", buf, 0xEu);
    }

    if (v61)
    {
      goto LABEL_68;
    }

    goto LABEL_93;
  }

  if (!v61)
  {
LABEL_93:
    v50 = logObjectForModule();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v58;
      *&buf[8] = 1024;
      *&buf[10] = v58;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "ERROR: BTDeviceFromAddress did not return a valid device, result %d (0x%x)", buf, 0xEu);
    }

    v58 = 1;
    goto LABEL_68;
  }

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v49 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v49 = &_os_log_default;
    v51 = &_os_log_default;
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
  }

  BTPairingAgent = self->_BTPairingAgent;
  v58 = BTPairingAgentClearOOBDataForDevice();
  if (v58)
  {
    v37 = logObjectForModule();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    *buf = 67109376;
    *&buf[4] = v58;
    *&buf[8] = 1024;
    *&buf[10] = v58;
    v40 = "ERROR: Failed BTPairingAgentClearOOBDataForDevice, result %d (0x%x)";
    goto LABEL_65;
  }

  *buf = 0;
  *&buf[8] = 0;
  [v16 bytes];
  [v17 bytes];
  if (v18)
  {
    [v18 bytes];
  }

  if (v19)
  {
    [v19 bytes];
  }

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v53 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v53 = &_os_log_default;
    v54 = &_os_log_default;
  }

  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
  }

  v55 = self->_BTPairingAgent;
  v58 = BTPairingAgentSetOOBDataForDevice();
  if (v58)
  {
    v37 = logObjectForModule();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    v62[0] = 67109376;
    v62[1] = v58;
    v63 = 1024;
    v64 = v58;
    v40 = "ERROR: Failed BTPairingAgentSetOOBDataForDevice, result %d (0x%x)";
    v41 = v62;
    goto LABEL_66;
  }

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v56 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v56 = &_os_log_default;
    v57 = &_os_log_default;
  }

  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
  }

  v58 = BTDeviceConnectServices();
  if (v58)
  {
    v37 = logObjectForModule();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    *buf = 67109376;
    *&buf[4] = v58;
    *&buf[8] = 1024;
    *&buf[10] = v58;
    v40 = "ERROR: Failed BTDeviceConnectServices, result %d (0x%x)";
    goto LABEL_65;
  }

  v58 = 0;
LABEL_68:
  if (gLogObjects && gNumLogObjects >= 6)
  {
    v42 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v42 = &_os_log_default;
    v43 = &_os_log_default;
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
  }

  if (v58)
  {
    [(ACCBluetoothPairingService *)self _cancelBTOOBPairing:v15];
  }

  else
  {
    objc_storeStrong(&self->_macAddr, a3);
    v44 = objc_retainBlock(v20);
    pairingCompletionHandler = self->_pairingCompletionHandler;
    self->_pairingCompletionHandler = v44;

    self->_pairingStarted = 1;
  }

LABEL_48:
}

- (void)startBTOOBPairing:(id)a3 pairingDataC192:(id)a4 pairingDataR192:(id)a5 pairingDataC256:(id)a6 pairingDataR256:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = +[NSXPCConnection currentConnection];
  processingQueue = self->_processingQueue;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __130__ACCBluetoothPairingService_startBTOOBPairing_pairingDataC192_pairingDataR192_pairingDataC256_pairingDataR256_completionHandler___block_invoke;
  v29[3] = &unk_10000C4F0;
  v30 = v20;
  v31 = self;
  v32 = v14;
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v22 = v19;
  v23 = v18;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  v27 = v14;
  v28 = v20;
  dispatch_async(processingQueue, v29);
}

uint64_t (**__130__ACCBluetoothPairingService_startBTOOBPairing_pairingDataC192_pairingDataR192_pairingDataC256_pairingDataR256_completionHandler___block_invoke(uint64_t a1))(id, void)
{
  v2 = [*(a1 + 32) hasEntitlement:@"com.apple.accessories.ACCBluetoothPairingService.access"];
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v2)
  {
    if (v4)
    {
      v5 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v5 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "startBTOOBPairing, call _startBTOOBPairing in _processingQueue", buf, 2u);
    }

    return [*(a1 + 40) _startBTOOBPairing:*(a1 + 48) pairingDataC192:*(a1 + 56) pairingDataR192:*(a1 + 64) pairingDataC256:*(a1 + 72) pairingDataR256:*(a1 + 80) completionHandler:*(a1 + 88)];
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v6 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR: startBTOOBPairing, caller does not have necessary entitlement!", v10, 2u);
    }

    result = *(a1 + 88);
    if (result)
    {
      return result[2](result, 0);
    }
  }

  return result;
}

- (void)_cancelBTOOBPairing:(id)a3
{
  v4 = a3;
  v34 = 0;
  v33 = -21846;
  v32 = -1431655766;
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 5;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!self->_BTSession)
  {
    if (v6)
    {
      v8 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v8 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    *buf = 0;
    v16 = "ERROR: _cancelBTOOBPairing: No BTSession!";
    v17 = v8;
    v18 = 2;
    goto LABEL_56;
  }

  if (v6)
  {
    v7 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v7 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v36[0] = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "_cancelBTOOBPairing: macAddr: %@", buf, 0xCu);
  }

  if (!v4)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v8 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v8 = &_os_log_default;
      v22 = &_os_log_default;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    *buf = 138412290;
    v36[0] = 0;
    v16 = "ERROR: macAddr(%@) is required!";
    v17 = v8;
    v18 = 12;
LABEL_56:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_57:

    goto LABEL_74;
  }

  [v4 getBytes:&v32 length:6];
  if (gLogObjects && gNumLogObjects >= 6)
  {
    v10 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
  }

  BTSession = self->_BTSession;
  v13 = BTDeviceFromAddress();
  if (v13)
  {
    if (gLogObjects && gNumLogObjects >= 6)
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
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      LODWORD(v36[0]) = v13;
      WORD2(v36[0]) = 1024;
      *(v36 + 6) = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ERROR: Failed BTDeviceFromAddress, result %d (0x%x)", buf, 0xEu);
    }

    if (v34)
    {
      goto LABEL_64;
    }
  }

  else if (v34)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v19 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v19 = &_os_log_default;
      v28 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
    }

    BTPairingAgent = self->_BTPairingAgent;
    v30 = BTPairingAgentClearOOBDataForDevice();
    if (!v30)
    {
      goto LABEL_64;
    }

    if (gLogObjects && gNumLogObjects >= 6)
    {
      v21 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v21 = &_os_log_default;
      v31 = &_os_log_default;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      LODWORD(v36[0]) = v30;
      WORD2(v36[0]) = 1024;
      *(v36 + 6) = v30;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "ERROR: Failed BTPairingAgentClearOOBDataForDevice, result %d (0x%x)", buf, 0xEu);
    }

    goto LABEL_63;
  }

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v21 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v21 = &_os_log_default;
    v23 = &_os_log_default;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    LODWORD(v36[0]) = v13;
    WORD2(v36[0]) = 1024;
    *(v36 + 6) = v13;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "ERROR: BTDeviceFromAddress did not return a valid device, result %d (0x%x)", buf, 0xEu);
  }

LABEL_63:

LABEL_64:
  if (gLogObjects && gNumLogObjects >= 6)
  {
    v24 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v24 = &_os_log_default;
    v25 = &_os_log_default;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
  }

  *&self->_pairingStarted = 0;
  self->_pairingResultValid = 0;
  macAddr = self->_macAddr;
  self->_macAddr = 0;

  dispatch_source_set_timer(self->_pairingTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  pairingCompletionHandler = self->_pairingCompletionHandler;
  if (pairingCompletionHandler)
  {
    pairingCompletionHandler[2](pairingCompletionHandler, 0);
  }

LABEL_74:
}

- (void)cancelBTOOBPairing:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  processingQueue = self->_processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__ACCBluetoothPairingService_cancelBTOOBPairing___block_invoke;
  block[3] = &unk_10000C4A0;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(processingQueue, block);
}

void __49__ACCBluetoothPairingService_cancelBTOOBPairing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasEntitlement:@"com.apple.accessories.ACCBluetoothPairingService.access"];
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v2)
  {
    if (v4)
    {
      v5 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v5 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "cancelBTOOBPairing, call _cancelBTOOBPairing in _processingQueue", buf, 2u);
    }

    [*(a1 + 40) _cancelBTOOBPairing:*(a1 + 48)];
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v6 = &_os_log_default;
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR: cancelBTOOBPairing, caller does not have necessary entitlement!", v9, 2u);
    }
  }
}

- (void)_checkAlreadyPaired:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61 = v8;
  v62 = v8;
  v59 = v8;
  v60 = v8;
  v57 = v8;
  v58 = v8;
  v55 = v8;
  v56 = v8;
  v53 = v8;
  v54 = v8;
  v51 = v8;
  v52 = v8;
  v49 = v8;
  v50 = v8;
  v47 = v8;
  v48 = v8;
  v45 = v8;
  v46 = v8;
  v43 = v8;
  v44 = v8;
  v41 = v8;
  v42 = v8;
  v39 = v8;
  v40 = v8;
  v37 = v8;
  v38 = v8;
  v35 = v8;
  v36 = v8;
  v33 = v8;
  v34 = v8;
  v31 = v8;
  v32 = v8;
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 5;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (self->_BTSession)
  {
    if (v10)
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
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ACCBluetoothPairingService _checkAlreadyPaired:completionHandler:];
    }

    v14 = [v6 length];
    if (gLogObjects)
    {
      v15 = gNumLogObjects <= 5;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if (v14 <= 5)
    {
      if (v16)
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
        v20 = &_os_log_default;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v6;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "invalid macAddr! %@", buf, 0xCu);
      }

LABEL_41:
      v7[2](v7, 0);
      goto LABEL_66;
    }

    if (v16)
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
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ACCBluetoothPairingService _checkAlreadyPaired:completionHandler:];
    }

    BTSession = self->_BTSession;
    if (!BTLocalDeviceGetDefault())
    {
      if (gLogObjects && gNumLogObjects >= 6)
      {
        v23 = *(gLogObjects + 40);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ServiceDelegate listener:shouldAcceptNewConnection:];
        }

        v23 = &_os_log_default;
        v24 = &_os_log_default;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [ACCBluetoothPairingService _checkAlreadyPaired:completionHandler:];
      }

      BTLocalDeviceGetPairedDevices();
    }

    if (gLogObjects && gNumLogObjects >= 6)
    {
      v25 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v25 = &_os_log_default;
      v26 = &_os_log_default;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = v6;
      v29 = 1024;
      v30 = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "_checkAlreadyPaired: %@, foundPaired %d", buf, 0x12u);
    }

    v7[2](v7, 0);
  }

  else
  {
    if (v10)
    {
      v12 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v12 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ERROR: _checkAlreadyPaired: No BTSession!", buf, 2u);
    }

    if (v7)
    {
      goto LABEL_41;
    }
  }

LABEL_66:
}

- (void)checkAlreadyPaired:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  processingQueue = self->_processingQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __67__ACCBluetoothPairingService_checkAlreadyPaired_completionHandler___block_invoke;
  v13[3] = &unk_10000C478;
  v14 = v8;
  v15 = self;
  v16 = v6;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  dispatch_async(processingQueue, v13);
}

id __67__ACCBluetoothPairingService_checkAlreadyPaired_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasEntitlement:@"com.apple.accessories.ACCBluetoothPairingService.access"];
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v2)
  {
    if (v4)
    {
      v5 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v5 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "checkAlreadyPaired, call _checkAlreadyPaired in _processingQueue", buf, 2u);
    }

    return [*(a1 + 40) _checkAlreadyPaired:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v6 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR: checkAlreadyPaired, caller does not have necessary entitlement!", v10, 2u);
    }

    return (*(*(a1 + 56) + 16))();
  }
}

- (id)_btDeviceGetMACAddress:(BTDeviceImpl *)a3
{
  v10 = -21846;
  v9 = -1431655766;
  v11 = 0u;
  v12 = 0u;
  BTDeviceGetAddressString();
  if (BTDeviceAddressFromString())
  {
    v4 = 0;
  }

  else
  {
    v4 = [NSData dataWithBytes:&v9 length:6];
  }

  if (gLogObjects)
  {
    v5 = gNumLogObjects < 6;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCBluetoothPairingService *)a3 _btDeviceGetMACAddress:v4, v7];
  }

  return v4;
}

- (void)_getDeviceBTMacAddress:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getDeviceBTMacAddress:.cold.5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getDeviceBTMacAddress:.cold.7()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_deviceSupportsContactsSync:_withReply:.cold.1()
{
  v0 = logObjectForModule();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6(&_mh_execute_header, v1, v2, "ERROR: Failed BTDeviceFromAddress, result %d (0x%x)", v3, v4, v5, v6, 0);
  }
}

- (void)_deviceSupportsContactsSync:_withReply:.cold.2()
{
  v0 = logObjectForModule();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6(&_mh_execute_header, v1, v2, "ERROR: Failed BTDeviceGetDeviceType, result %d (0x%x)", v3, v4, v5, v6, 0);
  }
}

- (void)_deviceSupportsContactsSync:_withReply:.cold.3()
{
  v0 = logObjectForModule();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6(&_mh_execute_header, v1, v2, "ERROR: BTDeviceFromAddress did not return a valid device, result %d (0x%x)", v3, v4, v5, v6, 0);
  }
}

- (void)_startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:.cold.12()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)_btDeviceGetMACAddress:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "_btDeviceGetMACAddress: btDevice %p, macAddr %@", &v3, 0x16u);
}

@end