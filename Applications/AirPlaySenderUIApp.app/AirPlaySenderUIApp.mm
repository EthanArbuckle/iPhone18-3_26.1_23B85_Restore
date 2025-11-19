uint64_t sub_100001824(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000183C(uint64_t a1)
{
  v33 = objc_alloc_init(NSMutableSet);
  if (dword_1000222E0 <= 30 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000B274(a1);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [*(a1 + 40) availableOutputDevices];
  v2 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v42;
    v5 = @"IsDiscoveredWithBroker";
    do
    {
      v6 = 0;
      do
      {
        if (*v42 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v41 + 1) + 8 * v6);
        v8 = [v7 deviceID];
        v9 = [v8 isEqualToString:*(a1 + 48)];

        v10 = [v7 airPlayProperties];
        v11 = [v10 objectForKeyedSubscript:v5];

        if (v11)
        {
          if (*(*(a1 + 32) + 48))
          {
            v12 = [IRCandidate alloc];
            v13 = [v7 deviceID];
            v14 = [v12 initWithCandidateIdentifier:v13];

            v35 = objc_alloc_init(IRNode);
            v15 = [v7 deviceID];
            [v35 setAvOutpuDeviceIdentifier:v15];

            v16 = [NSSet setWithObject:v35];
            [v14 updateNodes:v16];

            v17 = [IRMediaEvent alloc];
            if (v9)
            {
              v18 = 9;
            }

            else
            {
              v18 = 10;
            }

            v19 = [v17 initWithEventType:v18 eventSubType:0];
            v20 = *(a1 + 32);
            v21 = v9;
            v22 = a1;
            v23 = v3;
            v24 = v4;
            v25 = v5;
            v26 = *(v20 + 24);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10000B094;
            block[3] = &unk_10001C4F0;
            block[4] = v20;
            v39 = v19;
            v40 = v14;
            v27 = v14;
            v28 = v19;
            v29 = v26;
            v5 = v25;
            v4 = v24;
            v3 = v23;
            a1 = v22;
            v9 = v21;
            dispatch_async(v29, block);
            [v33 addObject:v27];
          }

          if (v9 && !*(*(*(a1 + 64) + 8) + 40))
          {
            if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
            {
              sub_10000B2E4((a1 + 32), (a1 + 48));
            }

            objc_storeStrong((*(*(a1 + 64) + 8) + 40), v7);
            dispatch_semaphore_signal(*(a1 + 56));
          }
        }

        v6 = v6 + 1;
      }

      while (v3 != v6);
      v30 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      v3 = v30;
    }

    while (v30);
  }

  if ([v33 count])
  {
    v31 = *(a1 + 32);
    v32 = *(v31 + 24);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000B158;
    v36[3] = &unk_10001C518;
    v36[4] = v31;
    v37 = v33;
    dispatch_async(v32, v36);
  }
}

void sub_100001C74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6727 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100001FC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 status];
  if (v4 == 2)
  {
    if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000B56C(a1);
    }

    v5 = 0;
  }

  else
  {
    if (dword_1000222E0 <= 90 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000B490(a1, v3);
    }

    v6 = [v3 cancellationReason];
    v7 = [v6 isEqualToString:AVOutputContextDestinationChangeCancellationReasonAuthorizationSkipped];

    if (v7)
    {
      v5 = -6754;
    }

    else
    {
      v5 = -6700;
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 16);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002154;
    v10[3] = &unk_10001C5B8;
    v11 = v8;
    v13 = v4 == 2;
    v12 = v5;
    dispatch_async(v9, v10);
  }
}

void sub_100002154(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 44);
  v3 = *(a1 + 40);
  if (v3)
  {
    v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v3 userInfo:0];
    (*(v1 + 16))(v1, v2, v6);
  }

  else
  {
    v4 = *(v1 + 16);
    v5 = *(a1 + 32);

    v4(v5, v2, 0);
  }
}

void sub_100002348(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000B6F4(a1);
    }

    v10 = 0;
  }

  else
  {
    if (dword_1000222E0 <= 90 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000B624(a1);
    }

    if ([v9 isEqualToString:AVOutputDeviceCommunicationChannelOpenCancellationReasonAuthorizationSkipped])
    {
      v10 = -6754;
    }

    else
    {
      v10 = -6700;
    }
  }

  [v7 close];
  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 16);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000024E0;
    v13[3] = &unk_10001C5B8;
    v14 = v11;
    v16 = v7 != 0;
    v15 = v10;
    dispatch_async(v12, v13);
  }
}

void sub_1000024E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 44);
  v3 = *(a1 + 40);
  if (v3)
  {
    v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v3 userInfo:0];
    (*(v1 + 16))(v1, v2, v6);
  }

  else
  {
    v4 = *(v1 + 16);
    v5 = *(a1 + 32);

    v4(v5, v2, 0);
  }
}

void sub_1000028BC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = dispatch_time(0, 30000000000);
  v4 = dispatch_semaphore_wait(v2, v3);
  v14 = *(a1 + 32);
  objc_sync_enter(v14);
  if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    v5 = *(a1 + 32);
    v6 = "timed out waiting for";
    if (!v4)
    {
      v6 = "received";
    }

    v12 = v6;
    v13 = *(v5 + 40);
    v10 = *(a1 + 32);
    v11 = *(v5 + 48);
    LogPrintF();
  }

  v7 = *(a1 + 32);
  if (v4 || *(v7 + 40))
  {
    [*(v7 + 48) setDelegate:{0, v10, v11, v12, v13}];
    [*(*(a1 + 32) + 48) invalidate];
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = 0;
  }

  objc_sync_exit(v14);
}

uint64_t sub_100002A90()
{

  return LogPrintF();
}

uint64_t sub_100002AA8()
{

  return LogPrintF();
}

void sub_100002E9C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v3)
  {
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v3 userInfo:0];
    (*(v2 + 16))(v2, v7, *(a1 + 32));
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(v2 + 16);
    v6 = *(a1 + 40);

    v5(v6, 0, v4);
  }
}

void sub_10000301C(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:@"BrokerGroupID"];
  }

  v5 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000030F8;
  v6[3] = &unk_10001C680;
  v6[4] = v5;
  v7 = *(a1 + 48);
  [v5 _sendBrokerRequest:@"GetInfo" params:v3 timeout:4 completion:v6];
}

void sub_100003350(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v3)
  {
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v3 userInfo:0];
    (*(v2 + 16))(v2, v7, *(a1 + 32));
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(v2 + 16);
    v6 = *(a1 + 40);

    v5(v6, 0, v4);
  }
}

void sub_1000034F0(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"BrokerAuthString"];
  v3 = *(a1 + 40);
  if (v3)
  {
    [v2 setObject:v3 forKeyedSubscript:@"BrokerGroupID"];
  }

  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000035DC;
  v5[3] = &unk_10001C680;
  v5[4] = v4;
  v6 = *(a1 + 56);
  [v4 _sendBrokerRequest:@"Authenticate" params:v2 timeout:25 completion:v5];
}

void sub_1000036E8(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  [*(*(a1 + 32) + 24) setObject:v4 forKeyedSubscript:v3];
  objc_sync_exit(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = +[NSMutableDictionary dictionary];
  }

  v8 = v7;
  [v7 setObject:*(a1 + 48) forKeyedSubscript:@"RequestType"];
  [v8 setObject:v3 forKeyedSubscript:@"RequestUUID"];
  if (dword_100022470 <= 50 && (dword_100022470 != -1 || _LogCategory_Initialize()))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v23 = IsAppleInternalBuild() == 0;
    v24 = v8;
    v20 = v9;
    v21 = v10;
    v22 = v3;
    LogPrintF();
  }

  v11 = APSXPCClientSendCommandCreatingReply();
  if (dword_100022470 <= 50 && (dword_100022470 != -1 || _LogCategory_Initialize()))
  {
    v21 = *(a1 + 48);
    v22 = v11;
    v20 = *(a1 + 32);
    LogPrintF();
  }

  if (v11)
  {
    sub_10000B960();
  }

  else
  {
    v12 = [v4 semaphore];
    v13 = dispatch_time(0, 1000000000 * *(a1 + 64));
    v14 = dispatch_semaphore_wait(v12, v13);

    if (v14)
    {
      if (dword_100022470 <= 90 && (dword_100022470 != -1 || _LogCategory_Initialize()))
      {
        v22 = v3;
        v23 = *(a1 + 64);
        v20 = *(a1 + 32);
        v21 = *(a1 + 48);
        LogPrintF();
      }

      v11 = 4294960574;
    }

    else
    {
      v11 = 0;
    }
  }

  v15 = *(a1 + 32);
  objc_sync_enter(v15);
  if (v11 || !v4)
  {
    if (dword_100022470 <= 90 && (dword_100022470 != -1 || _LogCategory_Initialize()))
    {
      v21 = v3;
      v22 = v11;
      v20 = *(a1 + 32);
      LogPrintF();
    }

    v17 = 0;
  }

  else
  {
    v16 = v4;
    objc_sync_enter(v16);
    LODWORD(v11) = [v16 status];
    v17 = [v16 response];
    objc_sync_exit(v16);
  }

  [*(*(a1 + 32) + 24) removeObjectForKey:{v3, v20, v21, v22, v23, v24}];
  objc_sync_exit(v15);

  v18 = *(a1 + 56);
  if (v18)
  {
    v19 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003B34;
    block[3] = &unk_10001C6F8;
    v28 = v18;
    v26 = v3;
    v29 = v11;
    v27 = v17;
    dispatch_async(v19, block);
  }
}

void sub_100003B0C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_100003B34(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  if (v4)
  {
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v4 userInfo:0];
    (*(v2 + 16))(v2, v3, v8, *(a1 + 40));
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(v2 + 16);
    v7 = *(a1 + 48);

    v6(v7, v3, 0, v5);
  }
}

uint64_t sub_100003EA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = qword_100022958;
  qword_100022958 = v2;

  return _APSXPCClientAddEventHandler(@"com.apple.airplay.discoverybroker", @"BrokerResponse", sub_100003EFC);
}

uint64_t sub_100003EFC(__CFString *a1, uint64_t a2)
{
  v4 = +[APUIBrokerHelper sharedInstance];
  v5 = v4;
  v7 = v4;
  if (a1 == @"BrokerResponse" || a1 && (v4 = CFEqual(a1, @"BrokerResponse"), v5 = v7, v4))
  {
    v4 = [v5 _handleBrokerResponse:a2];
LABEL_5:
    v5 = v7;
    goto LABEL_10;
  }

  if (dword_100022470 <= 90)
  {
    if (dword_100022470 != -1 || (v4 = _LogCategory_Initialize(), v5 = v7, v4))
    {
      v4 = LogPrintF();
      goto LABEL_5;
    }
  }

LABEL_10:

  return _objc_release_x1(v4, v5);
}

uint64_t sub_100004898(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100004FF0(id a1)
{
  if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
  {
    sub_10000BF48();
  }
}

void sub_100005288(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(*(a1 + 32) + 32);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100005510;
  v16 = &unk_10001C7F8;
  objc_copyWeak(&v18, &location);
  v4 = v2;
  v17 = v4;
  [v3 setEventHandler:&v13];
  v5 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v4, v5))
  {
    if (dword_100022610 <= 90 && (dword_100022610 != -1 || _LogCategory_Initialize()))
    {
      v11 = *(a1 + 32);
      v12 = 10;
      LogPrintF();
    }

    v20 = NSLocalizedDescriptionKey;
    v7 = [NSBundle mainBundle:v11];
    v8 = [v7 localizedStringForKey:@"WiFi has no valid IP" value:&stru_10001CEA8 table:0];
    v21 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v6 = [NSError errorWithDomain:@"UserErrorDomain" code:301028 userInfo:v9];
  }

  else
  {
    v6 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v6);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void sub_1000054E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005510(uint64_t a1, void *a2)
{
  v23 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    v6 = [v23 type];
    if (v6 == 19)
    {
      v15 = [v5 IPv4Addresses];
      if (![v15 count])
      {

LABEL_25:
        goto LABEL_26;
      }

      v16 = [v5 IPv4SubnetMasks];
      v17 = [v16 count];

      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = [v5 IPv4Addresses];
      v19 = [v18 objectAtIndexedSubscript:0];
      v20 = [v5 IPv4SubnetMasks];
      v21 = [v20 objectAtIndexedSubscript:0];
      v22 = [v19 isValidIPv4AddressWithSubnetMask:v21];

      if (!v22)
      {
        goto LABEL_25;
      }

      if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
      {
        sub_10000C1A4(v5);
      }
    }

    else
    {
      if (v6 != 20)
      {
        goto LABEL_25;
      }

      v7 = [v5 IPv6Addresses];
      v8 = [v7 count];

      if (!v8)
      {
        goto LABEL_25;
      }

      v9 = 0;
      while (1)
      {
        v10 = [v5 IPv6Addresses];
        v11 = [v10 objectAtIndexedSubscript:v9];
        v12 = [v11 isValidIPv6Address];

        if (v12)
        {
          break;
        }

        ++v9;
        v13 = [v5 IPv6Addresses];
        v14 = [v13 count];

        if (v9 >= v14)
        {
          goto LABEL_25;
        }
      }

      if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
      {
        sub_10000C0B0(v5, v9);
      }
    }

    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_25;
  }

  if (dword_100022610 <= 60 && (dword_100022610 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C328();
  }

LABEL_26:
}

void sub_100005C3C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
    {
      sub_10000C440(a1, v6);
    }

    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = [v6 objectAtIndexedSubscript:0];
    [v7 _associateWithNetworkWithPassPhrase:v8 captivePortalAuthToken:v9 scanResults:v10 completion:a1[7]];

    v11 = 0;
  }

  else
  {
    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v16 = NSLocalizedDescriptionKey;
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"No results found in Wi-Fi scan" value:&stru_10001CEA8 table:0];
      v17 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:301021 userInfo:v14];
    }

    v15 = a1[7];
    if (v15)
    {
      (*(v15 + 16))(v15, 0, v11);
    }
  }
}

void sub_100005F68(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
    {
      sub_10000C4FC(a1, v3);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, v3);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000060DC;
    v11 = &unk_10001C870;
    v12 = v6;
    v13 = v5[1];
    [v6 _monitorWiFiIPAddressConfigurationWithCompletion:&v8];
    [*v5 _startMonitoringWiFiEvents];
    v7 = [*(*v5 + 4) currentKnownNetworkProfile];
    if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
    {
      sub_10000C56C(v5, v7);
    }

    [*v5 tagAirPlayNetwork];
  }
}

uint64_t sub_1000060DC(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5 && dword_100022610 <= 90 && (dword_100022610 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C684(a1);
  }

  [*(a1 + 32) _stopMonitoringWiFiEvents];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v5 == 0, v5);
  }

  return _objc_release_x2();
}

void sub_100006838(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2 == 3)
  {
    v7 = v6;
    [v6 handleWiFiInterfaceChangedWithEventInfo:a3];
  }

  else
  {
    if (a2 != 4)
    {
      goto LABEL_6;
    }

    v7 = v6;
    [v6 handleUSBInterfaceChangedWithEventInfo:a3];
  }

  v6 = v7;
LABEL_6:
}

uint64_t sub_1000069AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = qword_100022968;
  qword_100022968 = v2;

  return _objc_release_x1(v2, v3);
}

id sub_1000072D4(uint64_t a1)
{
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C95C(a1);
  }

  v2 = *(a1 + 32);

  return [v2 setDiscoveryMode:0];
}

intptr_t sub_100007644(void *a1)
{
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    v4 = a1[5];
    v5 = a1[6];
    LogPrintF();
  }

  v2 = a1[4];

  return dispatch_semaphore_signal(v2);
}

void sub_100007A80(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) _setupAirPlayConnectingProxCardManagerWithSetupPayload:*(a1 + 40) withTitle:*(a1 + 48) withSubTitle:*(a1 + 56) withImageName:*(a1 + 64) andCompletion:*(a1 + 72)];
  v3 = *(a1 + 72);
  if (v3)
  {
    (*(v3 + 16))(v3, v6);
  }

  v4 = [*(a1 + 32) proxCardNavigationController];
  v5 = [*(a1 + 32) connectingProxCardController];
  [v4 pushViewController:v5 animated:0];
}

uint64_t sub_100007E48(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000081B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000082F8;
  v10[3] = &unk_10001C978;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = [AirPlayAlertViewController alertWithTitle:v2 withMessage:v3 actions:v4 withCompletion:v10];
  [*(a1 + 32) setAirPlayAlertController:v7];

  [*(a1 + 32) setShouldSkipInvalidateOnProxCardFlowDidDismiss:1];
  v8 = [*(a1 + 32) proxCardNavigationController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008408;
  v9[3] = &unk_10001C630;
  v9[4] = *(a1 + 32);
  [v8 dismissViewControllerAnimated:1 completion:v9];
}

id sub_1000082F8(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    v3 = +[LSApplicationWorkspace defaultWorkspace];
    v4 = [NSURL URLWithString:@"prefs:root=WIFI"];
    [v3 openSensitiveURL:v4 withOptions:0];
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000CA44(a1);
    }
  }

  else if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000CA04(a1);
  }

  v5 = *(a1 + 40);

  return [v5 invalidate];
}

void sub_100008408(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 airPlayAlertController];
  [v1 presentViewController:v2 animated:1 completion:0];
}

void sub_100008680(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000879C;
  v8[3] = &unk_10001C9C8;
  v8[4] = *(a1 + 32);
  v5 = [AirPlayAlertViewController alertWithTitle:v2 withMessage:v3 actions:v4 withCompletion:v8];
  [*(a1 + 32) setAirPlayAlertController:v5];

  [*(a1 + 32) setShouldSkipInvalidateOnProxCardFlowDidDismiss:1];
  v6 = [*(a1 + 32) proxCardNavigationController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008824;
  v7[3] = &unk_10001C630;
  v7[4] = *(a1 + 32);
  [v6 dismissViewControllerAnimated:1 completion:v7];
}

void sub_10000879C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000CA84(a1);
  }

  [*(a1 + 32) invalidate];
}

void sub_100008824(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 airPlayAlertController];
  [v1 presentViewController:v2 animated:1 completion:0];
}

void sub_100008A3C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008B58;
  v8[3] = &unk_10001C9C8;
  v8[4] = *(a1 + 32);
  v5 = [AirPlayAlertViewController alertWithTitle:v2 withMessage:v3 actions:v4 withCompletion:v8];
  [*(a1 + 32) setAirPlayAlertController:v5];

  [*(a1 + 32) setShouldSkipInvalidateOnProxCardFlowDidDismiss:1];
  v6 = [*(a1 + 32) proxCardNavigationController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008BE0;
  v7[3] = &unk_10001C630;
  v7[4] = *(a1 + 32);
  [v6 dismissViewControllerAnimated:1 completion:v7];
}

void sub_100008B58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000CAC4(a1);
  }

  [*(a1 + 32) invalidate];
}

void sub_100008BE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 airPlayAlertController];
  [v1 presentViewController:v2 animated:1 completion:0];
}

void sub_100009004(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) updateWiFiRTCDictionaryAlreadyAssociated:0 associationSucessful:a2 error:?];
  if (a2)
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000CC1C((a1 + 32));
    }

    if ([v5 code] == -71157 && dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000CCD0((a1 + 32), v5);
    }

    [*(a1 + 32) _performBrokerAuthenticationWithSetupPayload:*(a1 + 40) switchWiFiIfFailed:0];
  }

  else
  {
    if (dword_1000226F0 <= 90 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000CBB8((a1 + 32), v5);
    }

    [*(a1 + 32) _presentUnableToConnectToWiFiAlertWithSetupPayload:*(a1 + 40)];
  }
}

void sub_1000092A4(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    if (dword_1000226F0 <= 90 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      v10 = a1[4];
      v6 = [v12 localizedDescription];
      LogPrintF();
      v9 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000CD34(a1, v5);
    }

    if ([v5 count])
    {
      v6 = [v5 allKeys];
      v7 = [v6 firstObject];
      v8 = [v5 objectForKeyedSubscript:v7];
      v9 = [v8 objectForKeyedSubscript:@"supportedWiFiNetworkSSIDs"];

LABEL_7:
      goto LABEL_14;
    }
  }

  v9 = 0;
LABEL_14:
  v11 = a1[6];
  if (v11)
  {
    (*(v11 + 16))(v11, [v9 containsObject:a1[5]]);
  }
}

void sub_100009534(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = (a1 + 32);
  [*(a1 + 32) updateBrokerRTCDictionaryBrokerConnectionSuccess:v9 == 0 error:?];
  if (v9)
  {
    if (dword_1000226F0 <= 90 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000CD94((a1 + 32), v9);
    }

    if (*(a1 + 48) == 1)
    {
      if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
      {
        sub_10000CEAC((a1 + 32));
      }

      [*(a1 + 32) _joinWiFiAndConnectToReceiverWithSetupPayload:*(a1 + 40)];
    }

    else
    {
      v8 = *(a1 + 40);
      v7 = (a1 + 40);
      if ([v8 routeToReceiver])
      {
        if ([v9 code] == -6754)
        {
          if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
          {
            sub_10000CDF8(v6);
          }

          [*v6 _presentInvalidCodeAlertWithSetupPayload:*v7];
        }

        else
        {
          [*v6 _presentUnableToConnectToDeviceAlertWithSetupPayload:*v7];
        }
      }

      else
      {
        [*v6 _presentSetupCompletedProxCard:*v7 isAirPlaySetUp:0];
      }
    }
  }

  else
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000CF60((a1 + 32));
    }

    [*(a1 + 32) _connectToAirPlayReceiverWithDeviceID:v5 andSetupPayload:*(a1 + 40)];
  }
}

void sub_10000980C(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  [*(a1 + 32) updateReceiverRTCDictionaryReceiverConnectionSuccess:a2 error:?];
  if (a2)
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D0D4((a1 + 32));
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 1;
    goto LABEL_6;
  }

  if (dword_1000226F0 <= 90 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000CFBC((a1 + 32), v9);
  }

  if (NSErrorToOSStatus() == -6754)
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D020((a1 + 32));
    }

    [*(a1 + 32) _presentInvalidCodeAlertWithSetupPayload:*(a1 + 40)];
  }

  else
  {
    v8 = [*(a1 + 40) routeToReceiver];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (!v8)
    {
      v7 = 0;
LABEL_6:
      [v5 _presentSetupCompletedProxCard:v6 isAirPlaySetUp:v7];
      goto LABEL_17;
    }

    [v5 _presentUnableToConnectToDeviceAlertWithSetupPayload:v6];
  }

LABEL_17:
}

void sub_100009AD0(uint64_t a1)
{
  v2 = +[APUIConnectivityManager sharedInstance];
  v3 = [v2 currentNetworkSSID];

  v4 = [*(a1 + 32) wifiSSID];
  v5 = [v4 isEqualToString:v3];

  v6 = *(a1 + 40);
  if ([objc_opt_class() isMultipleWifiFeatureEnabled])
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100009CC0;
    v10[3] = &unk_10001CA90;
    v10[4] = v7;
    v11 = v3;
    v12 = *(a1 + 32);
    [v7 _getSupportedNetworks:v11 withSetupPayload:v8 completion:v10];
  }

  else if (v5)
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D1AC((a1 + 40));
    }

    [*(a1 + 40) updateWiFiRTCDictionaryAlreadyAssociated:1 associationSucessful:0 error:0];
    v9 = +[APUIConnectivityManager sharedInstance];
    [v9 tagAirPlayNetwork];

    [*(a1 + 40) _performBrokerAuthenticationWithSetupPayload:*(a1 + 32) switchWiFiIfFailed:0];
  }

  else
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D150((a1 + 40));
    }

    [*(a1 + 40) _joinWiFiAndConnectToReceiverWithSetupPayload:*(a1 + 32)];
  }

  [*(*(a1 + 40) + 16) startIntelligentRoutingLocationSensing];
}

id sub_100009CC0(uint64_t a1, char a2)
{
  if (a2)
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D270(a1);
    }

    [*(a1 + 32) updateWiFiRTCDictionaryAlreadyAssociated:1 associationSucessful:0 error:0];
    v3 = +[APUIConnectivityManager sharedInstance];
    [v3 tagAirPlayNetwork];

    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    return [v4 _performBrokerAuthenticationWithSetupPayload:v5 switchWiFiIfFailed:0];
  }

  else
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D208(a1);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 48);

    return [v7 _joinWiFiAndConnectToReceiverWithSetupPayload:v8];
  }
}

void sub_100009EE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009F9C;
  v7[3] = &unk_10001CAE0;
  v7[4] = v2;
  [v2 _initializeSetupCompletionProxCardManagerWithSetupPayload:v3 isAirPlaySetUp:v4 andCompletion:v7];
  v5 = [*(a1 + 32) proxCardNavigationController];
  v6 = [*(a1 + 32) completedProxCardController];
  [v5 pushViewController:v6 animated:0];
}

void sub_100009F9C(uint64_t a1)
{
  v2 = [*(a1 + 32) proxCardNavigationController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000A030;
  v3[3] = &unk_10001C630;
  v3[4] = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

uint64_t sub_10000A030(uint64_t result)
{
  if (dword_1000226F0 <= 50)
  {
    v1 = result;
    if (dword_1000226F0 != -1)
    {
      return sub_10000D2D8(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000D2D8(v1);
    }
  }

  return result;
}

uint64_t sub_10000A264(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (dword_1000226F0 <= 90)
  {
    v6 = v3;
    if (dword_1000226F0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      sub_10000D390(a1, v6);
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_10000A560(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (dword_1000226F0 <= 90)
  {
    v6 = v3;
    if (dword_1000226F0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      sub_10000D434(a1, v6);
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

void *sub_10000B094(void *result)
{
  v1 = result[4];
  if (!*(v1 + 48))
  {
    return result;
  }

  v2 = result;
  if (dword_1000222E0 <= 30)
  {
    if (dword_1000222E0 == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[4];
      if (!v3)
      {
        goto LABEL_6;
      }

      v7 = *(v1 + 48);
    }

    v8 = v2[5];
    v9 = v2[6];
    LogPrintF();
    v1 = v2[4];
  }

LABEL_6:
  v4 = *(v1 + 48);
  v5 = v2[5];
  v6 = v2[6];

  return [v4 addEvent:v5 forCandidate:v6];
}

void *sub_10000B158(void *result)
{
  v1 = result[4];
  if (!*(v1 + 48))
  {
    return result;
  }

  v2 = result;
  if (dword_1000222E0 <= 30)
  {
    if (dword_1000222E0 == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[4];
      if (!v3)
      {
        goto LABEL_6;
      }

      v6 = *(v1 + 48);
    }

    [v2[5] count];
    LogPrintF();
    v1 = v2[4];
  }

LABEL_6:
  v4 = *(v1 + 48);
  v5 = v2[5];

  return [v4 updateCandidates:v5];
}

void sub_10000B274(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) availableOutputDevices];
  LogPrintF();
}

uint64_t sub_10000B2E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a2 && IsAppleInternalBuild())
  {
    v4 = *a2;
  }

  return sub_100002A90();
}

uint64_t sub_10000B350(uint64_t a1)
{
  if (a1)
  {
    IsAppleInternalBuild();
  }

  return sub_100002A90();
}

void sub_10000B3D8(void *a1)
{
  v3 = [a1 deviceID];
  if (v3 && !IsAppleInternalBuild())
  {
    sub_100002A90();
  }

  else
  {
    v2 = [a1 deviceID];
    sub_100002A90();
  }
}

void sub_10000B490(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v8 = [*(a1 + 40) deviceID];
  if (v8 && !IsAppleInternalBuild())
  {
    v6 = 0;
    v5 = @"#Redacted#";
  }

  else
  {
    v5 = [*(a1 + 40) deviceID];
    v6 = 1;
  }

  [a2 status];
  v7 = [a2 cancellationReason];
  sub_100002AA8();

  if (v6)
  {
  }
}

void sub_10000B56C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) deviceID];
  if (v4 && !IsAppleInternalBuild())
  {
    sub_100002A90();
  }

  else
  {
    v3 = [*(a1 + 40) deviceID];
    sub_100002A90();
  }
}

void sub_10000B624(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) deviceID];
  if (v4 && !IsAppleInternalBuild())
  {
    sub_100002AA8();
  }

  else
  {
    v3 = [*(a1 + 40) deviceID];
    sub_100002AA8();
  }
}

void sub_10000B6F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) deviceID];
  if (v4 && !IsAppleInternalBuild())
  {
    sub_100002A90();
  }

  else
  {
    v3 = [*(a1 + 40) deviceID];
    sub_100002A90();
  }
}

uint64_t sub_10000B7AC(uint64_t a1, void *a2, void *a3)
{
  APSLogErrorAt();
  if (dword_1000222E0 > 90)
  {
    return 1;
  }

  if (dword_1000222E0 != -1 || _LogCategory_Initialize())
  {
    sub_100002AA8();
  }

  result = 0;
  *a3 = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_10000B9E8(uint64_t a1, uint64_t a2, void *a3)
{
  if (dword_100022470 <= 90)
  {
    if (dword_100022470 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a3 = a2;
  return result;
}

uint64_t sub_10000BA80(uint64_t a1, void *a2)
{
  if (dword_100022470 <= 90)
  {
    if (dword_100022470 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

void sub_10000BFB8(void *a1)
{
  v1 = [a1 description];
  LogPrintF();
}

void sub_10000C014(void *a1)
{
  v1 = [a1 description];
  LogPrintF();
}

void sub_10000C0B0(void *a1, uint64_t a2)
{
  v7 = [a1 IPv6Addresses];
  v4 = [v7 objectAtIndexedSubscript:a2];
  if (v4 && !IsAppleInternalBuild())
  {
    sub_100006BF0();
    LogPrintF();
  }

  else
  {
    v5 = [a1 IPv6Addresses];
    v6 = [v5 objectAtIndexedSubscript:a2];
    sub_100006BF0();
    LogPrintF();
  }
}

void sub_10000C1A4(void *a1)
{
  v10 = [a1 IPv4Addresses];
  v3 = [v10 objectAtIndexedSubscript:0];
  if (v3 && !IsAppleInternalBuild())
  {
    v5 = 0;
    v4 = @"#Redacted#";
  }

  else
  {
    v1 = [a1 IPv4Addresses];
    v4 = [v1 objectAtIndexedSubscript:0];
    v5 = 1;
  }

  v6 = [a1 IPv4SubnetMasks];
  v7 = [v6 objectAtIndexedSubscript:0];
  if (v7 && !IsAppleInternalBuild())
  {
    sub_100006BF0();
    LogPrintF();
  }

  else
  {
    v8 = [a1 IPv4SubnetMasks];
    v9 = [v8 objectAtIndexedSubscript:0];
    sub_100006BF0();
    LogPrintF();
  }

  if (v5)
  {
  }
}

uint64_t sub_10000C440(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  [a2 count];
  if (a2)
  {
    IsAppleInternalBuild();
  }

  sub_100006BF0();
  return LogPrintF();
}

void sub_10000C4FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localizedDescription];
  sub_100006BF0();
  LogPrintF();
}

void sub_10000C56C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = [a2 networkName];
  if (v4 && !IsAppleInternalBuild())
  {
    v6 = 0;
    v5 = @"#Redacted#";
  }

  else
  {
    v5 = [a2 networkName];
    v6 = 1;
  }

  v7 = [a2 captiveProfile];
  if (v7 && !IsAppleInternalBuild())
  {
    sub_100006BF0();
    LogPrintF();
  }

  else
  {
    v8 = [a2 captiveProfile];
    sub_100006BF0();
    LogPrintF();
  }

  if (v6)
  {
  }
}

uint64_t sub_10000C7C0(uint64_t a1)
{
  if (a1)
  {
    IsAppleInternalBuild();
  }

  return LogPrintF();
}

void sub_10000C824(void *a1)
{
  v1 = [a1 scheme];
  LogPrintF();
}

void sub_10000C898(void *a1)
{
  v1 = [a1 host];
  LogPrintF();
}

void sub_10000C95C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  sub_100002A90();
}

void sub_10000CBB8(uint64_t *a1, uint64_t a2)
{
  [sub_10000AA7C(a1 a2)];
  objc_claimAutoreleasedReturnValue();
  sub_10000AA70();
  sub_100002AA8();
}

void sub_10000CC1C(uint64_t *a1)
{
  sub_10000AA64(a1);
  v3 = [*(v2 + 40) wifiSSID];
  if (v3 && !IsAppleInternalBuild())
  {
    sub_100002A90();
  }

  else
  {
    [v1[5] wifiSSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000AA88();
    sub_100002A90();
  }
}

void sub_10000CCD0(uint64_t *a1, uint64_t a2)
{
  [sub_10000AA7C(a1 a2)];
  objc_claimAutoreleasedReturnValue();
  sub_10000AA70();
  sub_100002A90();
}

uint64_t sub_10000CD34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    IsAppleInternalBuild();
  }

  return sub_100002A90();
}

void sub_10000CD94(uint64_t *a1, uint64_t a2)
{
  [sub_10000AA7C(a1 a2)];
  objc_claimAutoreleasedReturnValue();
  sub_10000AA70();
  sub_100002AA8();
}

void sub_10000CDF8(uint64_t *a1)
{
  sub_10000AA64(a1);
  v3 = [*v2 brokerToken];
  if (v3 && !IsAppleInternalBuild())
  {
    sub_100002A90();
  }

  else
  {
    [*v1 brokerToken];
    objc_claimAutoreleasedReturnValue();
    sub_10000AA88();
    sub_100002A90();
  }
}

void sub_10000CEAC(uint64_t *a1)
{
  sub_10000AA64(a1);
  v3 = [*(v2 + 40) wifiSSID];
  if (v3 && !IsAppleInternalBuild())
  {
    sub_100002A90();
  }

  else
  {
    [v1[5] wifiSSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000AA88();
    sub_100002A90();
  }
}

uint64_t sub_10000CF60(uint64_t *a1)
{
  sub_10000AA64(a1);
  if (v1)
  {
    IsAppleInternalBuild();
  }

  return sub_100002A90();
}

void sub_10000CFBC(uint64_t *a1, uint64_t a2)
{
  [sub_10000AA7C(a1 a2)];
  objc_claimAutoreleasedReturnValue();
  sub_10000AA70();
  sub_100002AA8();
}

void sub_10000D020(uint64_t *a1)
{
  sub_10000AA64(a1);
  v3 = [*(v2 + 40) receiverToken];
  if (v3 && !IsAppleInternalBuild())
  {
    sub_100002A90();
  }

  else
  {
    [v1[5] receiverToken];
    objc_claimAutoreleasedReturnValue();
    sub_10000AA88();
    sub_100002A90();
  }
}

uint64_t sub_10000D150(uint64_t *a1)
{
  sub_10000AA64(a1);
  if (v1)
  {
    IsAppleInternalBuild();
  }

  return sub_100002A90();
}

uint64_t sub_10000D1AC(uint64_t *a1)
{
  sub_10000AA64(a1);
  if (v1)
  {
    IsAppleInternalBuild();
  }

  return sub_100002A90();
}

uint64_t sub_10000D208(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) && IsAppleInternalBuild())
  {
    v3 = *(a1 + 40);
  }

  return sub_100002A90();
}

uint64_t sub_10000D270(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) && IsAppleInternalBuild())
  {
    v3 = *(a1 + 40);
  }

  return sub_100002A90();
}

void sub_10000D390(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 localizedDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10000AA70();
  sub_100002AA8();
}

void sub_10000D434(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 localizedDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10000AA70();
  sub_100002AA8();
}

void sub_10000D49C(void *a1)
{
  v1 = [a1 URL];
  LogPrintF();
}

void sub_10000D4FC(void *a1)
{
  v1 = [a1 URL];
  LogPrintF();
}