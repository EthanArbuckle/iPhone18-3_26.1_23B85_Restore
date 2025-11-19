@interface BTServiceCallback
@end

@implementation BTServiceCallback

void ___BTServiceCallback_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _btDeviceGetMACAddress:*(a1 + 40)];
  if ([*(a1 + 32) pairingStarted])
  {
    v3 = [*(a1 + 32) macAddr];
    v4 = v3;
    if (v3)
    {
      v5 = v2 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
    }

    else
    {
      v6 = [*(a1 + 32) macAddr];
      v7 = [v6 isEqualToData:v2];

      if (v7)
      {
        [*(a1 + 32) setPairingStarted:0];
        [*(a1 + 32) setPairingResult:*(a1 + 48) == 0];
        [*(a1 + 32) setPairingResultValid:1];
        [*(a1 + 32) setMacAddr:0];
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
          v13 = &_os_log_default;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v14 = [*(a1 + 32) pairingResult];
          v23 = 67109120;
          LODWORD(v24) = v14;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "_BTServiceCallback: BT_SERVICE_CONNECT: pairing started, result=%d, call completionHandler if available", &v23, 8u);
        }

        v15 = [*(a1 + 32) pairingCompletionHandler];

        if (v15)
        {
          v16 = [*(a1 + 32) pairingCompletionHandler];
          (v16)[2](v16, [*(a1 + 32) pairingResult]);

          [*(a1 + 32) setPairingCompletionHandler:0];
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

        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v19 = "fail";
          v20 = *(a1 + 52);
          if (!*(a1 + 48))
          {
            v19 = "success";
          }

          v23 = 136315394;
          v24 = v19;
          v25 = 1024;
          v26 = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "_BTServiceCallback: Pairing %s! disconnect BT device. service 0x%x", &v23, 0x12u);
        }

        v21 = *(a1 + 40);
        BTDeviceDisconnect();
        [*(a1 + 32) BTPairingAgent];
        v22 = *(a1 + 40);
        BTPairingAgentClearOOBDataForDevice();
        goto LABEL_23;
      }
    }
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects < 6;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v11 = &_os_log_default;
    v10 = &_os_log_default;
  }

  else
  {
    v11 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 52);
    v23 = 67109120;
    LODWORD(v24) = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "_BTServiceCallback: BT_SERVICE_CONNECT: pairing not started or not expected macAddr, ignore. service 0x%x", &v23, 8u);
  }

LABEL_23:
}

@end