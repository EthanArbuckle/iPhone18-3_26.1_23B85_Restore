void sub_100003F38(id a1)
{
  v1 = dispatch_queue_create("com.apple.Diagnostics.airpodsObservationQueue", 0);
  v2 = qword_100202D08;
  qword_100202D08 = v1;

  v3 = qword_100202D08;

  [BluetoothManager setSharedInstanceQueue:v3];
}

void sub_100003F90(uint64_t a1)
{
  v2 = +[BluetoothManager sharedInstance];
  [*(a1 + 32) setBtManager:v2];
}

void sub_100004088(uint64_t a1)
{
  v2 = [*(a1 + 32) btManager];
  if (!v2 || (v3 = v2, [*(a1 + 32) btManager], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "available"), v4, v3, (v5 & 1) == 0))
  {
    v6 = [*(a1 + 32) btManagerAvailableSemaphore];
    v7 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(v6, v7);
  }

  [*(a1 + 32) _ensureInitialDevicesFetched];
  [*(a1 + 32) _updateHandlers];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) devices];
  (*(v8 + 16))(v8, v9);
}

id sub_100004254(uint64_t a1)
{
  v2 = [*(a1 + 48) copy];
  v3 = objc_retainBlock(v2);
  v4 = [*(a1 + 32) handlers];
  [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 32);

  return [v5 _beginObserving];
}

void sub_100004380(uint64_t a1)
{
  v2 = [*(a1 + 32) handlers];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) handlers];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = *(a1 + 32);

    [v5 _endObserving];
  }
}

void sub_1000054A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_1000054D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000054F0(uint64_t a1, void *a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        v10 = [WeakRetained nanoDevice];
        v11 = [v8 isEqual:v10];

        if (v11)
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_1000057A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 nanoDevice];
  v5 = [v3 isEqual:v4];

  return v5;
}

id sub_1000059E8(id result, int a2)
{
  if (a2)
  {
    v2.receiver = *(result + 4);
    v2.super_class = DADeviceConnectionWatchProxy;
    return objc_msgSendSuper2(&v2, "start");
  }

  return result;
}

id sub_100005A2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 nanoDevice];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_100005C38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained activeDeviceAssertion];
  [v3 invalidate];

  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 activeDeviceAssertion];
    v7 = [v6 device];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully invalidiated Active Device Assertion for Device: %@", &v8, 0xCu);
  }
}

void sub_100005ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005EFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setActiveDeviceAssertion:v6];

  v8 = dispatch_queue_create("com.apple.Diagnostics.quickSwitchQueue", 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006004;
  v12[3] = &unk_1001BC6C0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v5;
  v14 = v9;
  v15 = v10;
  v16 = *(a1 + 48);
  v11 = v5;
  dispatch_async(v8, v12);
}

uint64_t sub_100006004(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = DiagnosticLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100157D48(a1, v2, v5);
    }

    v6 = [*(a1 + 40) state];
    [v6 setPhase:0];

    v7 = [*(a1 + 40) state];
    [v7 addErrorCode:6 userInfo:0];

    v8 = [*(a1 + 40) state];
    [v8 removeErrorCode:6];

    [DSAnalytics sendAnalyticsWithEvent:7 error:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully switched to Watch: %@", &v11, 0xCu);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_100006564(uint64_t a1)
{
  if (NSClassFromString(@"DADeviceLocal"))
  {
    v2 = objc_opt_new();
  }

  else
  {
    v3 = MGCopyAnswer();
    v7 = [[DADeviceRepresentation alloc] initWithSerialNumber:v3 isLocal:1 attributes:&__NSDictionary0__struct];

    v2 = v7;
  }

  v8 = v2;
  v4 = [DADeviceDecoratorWithUI decorateWithDevice:v2];
  v5 = *(a1 + 32);
  v6 = [NSSet setWithObject:v4];
  (*(v5 + 16))(v5, v6);
}

void sub_100006DE8(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchDevices];
  (*(*(a1 + 40) + 16))();
}

id sub_100006F34(uint64_t a1)
{
  v2 = [*(a1 + 48) copy];
  v3 = objc_retainBlock(v2);
  v4 = [*(a1 + 32) handlers];
  [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 32);

  return [v5 _beginObserving];
}

void sub_100007060(uint64_t a1)
{
  v2 = [*(a1 + 32) handlers];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) handlers];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = *(a1 + 32);

    [v5 _endObserving];
  }
}

void sub_10000751C(uint64_t a1)
{
  v2 = [*(a1 + 32) devices];
  v12 = [v2 copy];

  v3 = [*(a1 + 32) _fetchDevices];
  v4 = [*(a1 + 32) devices];
  v5 = [v4 mutableCopy];

  [v5 minusSet:v3];
  v6 = [v3 mutableCopy];
  v7 = [*(a1 + 32) devices];
  [v6 minusSet:v7];

  v8 = [*(a1 + 32) devices];
  [v8 minusSet:v5];

  v9 = [*(a1 + 32) devices];
  [v9 unionSet:v6];

  v10 = [*(a1 + 32) devices];
  v11 = [v12 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    [*(a1 + 32) _updateHandlers];
  }
}

void sub_100007A5C(id a1)
{
  v1 = [NSSet setWithObjects:@"Accessory.SmartBatteryCase", 0];
  v2 = qword_100202D10;
  qword_100202D10 = v1;
}

void sub_100009034(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v12 = [*(a1 + 32) state];
    [v12 setSuiteID:v14];

    v13 = [*(a1 + 32) state];
    [v13 setDiagnosticEventID:v9];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100009578(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) progressForTest];
  [v7 removeObjectForKey:*(a1 + 40)];

  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:*(a1 + 56)];
  [*(a1 + 48) setTestDuration:?];
  if (v5)
  {
    v9 = [v5 statusCode];
    [*(a1 + 48) setStatusCode:v9];

    v10 = [v5 data];
    [*(a1 + 48) setData:v10];

    v11 = [v5 files];

    if (v11)
    {
      v31 = v8;
      v32 = v6;
      v12 = [v5 fileSandboxTokens];
      v13 = [DKSandboxExtension consumeSandboxExtensionsWithTokens:v12];

      v14 = [*(a1 + 32) sandboxExtensionHandles];
      v30 = v13;
      [v14 setObject:v13 forKey:*(a1 + 40)];

      v15 = [v5 files];
      v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v15 count]);

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v16 = [v5 files];
      v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v34;
        do
        {
          v20 = 0;
          do
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v33 + 1) + 8 * v20);
            v22 = objc_opt_new();
            [v22 setFileURL:v21];
            [v11 addObject:v22];

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v18);
      }

      v8 = v31;
      v6 = v32;
    }

    v23 = [v5 uploadStatus];

    if (v23)
    {
      v24 = *(a1 + 48);
      v25 = [v5 uploadStatus];
      [v24 setUploadStatusFromSource:@"DiagnosticsApp" withArray:v25];
    }

    [*(a1 + 48) setFiles:v11];
  }

  else if (v6)
  {
    v26 = [v6 code];
    if (v26 <= -1006)
    {
      if (v26 == -1007)
      {
        v27 = *(a1 + 48);
        v28 = &off_1001CC1D0;
      }

      else
      {
        if (v26 != -1006)
        {
          goto LABEL_27;
        }

        v27 = *(a1 + 48);
        v28 = &off_1001CC1B8;
      }
    }

    else
    {
      switch(v26)
      {
        case -1005:
          v27 = *(a1 + 48);
          v28 = &off_1001CC1A0;
          break;
        case -1000:
          v27 = *(a1 + 48);
          v28 = &off_1001CC1E8;
          break;
        case -1003:
          v27 = *(a1 + 48);
          v28 = &off_1001CC188;
          break;
        default:
          goto LABEL_27;
      }
    }

    [v27 setStatusCode:v28];
  }

LABEL_27:
  v29 = [*(a1 + 32) session];
  [v29 sendTestResult:*(a1 + 48) error:0];
}

void sub_100009A78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  if (*(a1 + 32) && ([*(a1 + 40) isDisconnecting] & 1) == 0)
  {
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100157E10();
    }

    v12 = [*v4 code];
    v13 = 4;
    if (v12 == -1001)
    {
      v13 = 1;
    }

    v14 = v12 != -1000 && v12 != -1001;
    if (v12 == -1000)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13;
    }

    [v3 setPhase:v14];
    v9 = [*v4 userInfo];
    [v3 addErrorCode:v15 userInfo:v9];
  }

  else
  {
    [v3 setErrors:&__NSArray0__struct];
    [v3 setPhase:1];
    v6 = *(a1 + 48);
    v5 = (a1 + 48);
    v7 = [v6 sessionEndReason];
    v8 = v7;
    if (v7 > 4)
    {
      v9 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100157E84(v5, v8, v9);
      }
    }

    else
    {
      v9 = off_1001BC750[v7];
      v10 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100157F00();
      }
    }
  }
}

void sub_100009D58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSuiteName:v3];
  [v4 setSuiteDescription:*(a1 + 40)];
}

void sub_10000A274(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [*(a1 + 32) delegate];
    v10 = *(a1 + 32);
    v11 = [v10 state];
    v12 = [v11 suiteID];
    [v9 deviceConnection:v10 didFinishTestSuite:v12 withEntry:v5 error:v6];
  }

  v13 = [*(a1 + 32) state];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000A3C4;
  v15[3] = &unk_1001BC848;
  v16 = v5;
  v14 = v5;
  [v13 transactionWithBlock:v15];
}

void sub_10000A3C4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    v3 = [v5 history];
    v4 = [v3 arrayByAddingObject:*(a1 + 32)];
    [v5 setHistory:v4];
  }

  [v5 setSuiteID:0];
  [v5 setSuiteName:0];
  [v5 setDiagnosticEventID:0];
}

void sub_10000A468(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100157F70(v7, v10, v11, v12, v13, v14, v15, v16);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [[DAHistoryEntry alloc] initWithTestSuiteName:*(a1 + 32) skipped:*(a1 + 48) results:v5];
    (*(v8 + 16))(v8, v9, 0);
  }
}

uint64_t sub_10000AABC(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000AB54;
  v5[3] = &unk_1001BC8C0;
  v5[4] = a1[5];
  v5[5] = a2;
  [v3 enumerateObjectsUsingBlock:v5];
  return (*(a1[6] + 16))();
}

void sub_10000AB54(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([v8 endpoint] == *(a1 + 40))
  {
    v6 = [v8 suites];
    v7 = [*(a1 + 32) state];
    [v7 setSuitesAvailable:v6];

    *a4 = 1;
  }
}

void sub_10000BCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  if (a2 | a3)
  {
    v12 = [ASTAuthInfoResult authInfoResultWithAttestation:a2 certificate:a3 type:a4 error:a5];
    v13 = *(a1 + 32);
    v25 = v11;
    v14 = [v13 sendAuthInfoResult:v12 error:&v25];
    v15 = v25;

    if ((v14 & 1) == 0)
    {
      v16 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1001581B4(v15, v16);
      }
    }
  }

  else
  {
    v17 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100158144(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    [*(a1 + 32) sendAuthInfoResult:0 error:0];
    v15 = v11;
  }
}

void sub_10000CDCC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000CDF4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10000CE14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000CE30(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id sub_10000CFA4(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10000CFD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = DiagnosticLogHandleForCategory();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Checking for Enhanced Logging Session response", buf, 2u);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000D14C;
      v8[3] = &unk_1001BC960;
      v6 = *(a1 + 32);
      v8[4] = WeakRetained;
      v8[5] = v6;
      [WeakRetained checkEnhancedLoggingStateWithReply:v8];
      xpc_transaction_exit_clean();
    }

    else
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No reply completion is present in dispatch block for checkAvailabilityWithReply", buf, 2u);
      }
    }
  }

  else
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Lost reference to self when entering dispatch block for checkAvailabilityWithReply", buf, 2u);
    }
  }
}

void sub_10000D14C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DiagnosticLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending ELSResponse %@ in reply to checkAvailabilityWithReply", &v8, 0xCu);
    }

    (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No ELS response. Getting session ID", &v8, 2u);
    }

    v6 = [*(a1 + 32) getSessionID];
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Session ID is %@, sending in reply to checkAvailabilityWithReply", &v8, 0xCu);
    }

    (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  }
}

void sub_10000D4BC(uint64_t a1)
{
  v2 = [*(a1 + 32) serialNumbers];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [ASTIdentity identityWithSerialNumber:*(*(&v18 + 1) + 8 * v8)];
        [v3 addObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking for sessions with identities %@", buf, 0xCu);
  }

  v11 = *(a1 + 56);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000D704;
  v14[3] = &unk_1001BC9D8;
  v15 = v4;
  v12 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 64);
  v13 = v4;
  [ASTSession sessionStatusForIdentities:v3 ticketNumber:v12 timeout:v14 completionHandler:v11];
}

void sub_10000D704(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100158420(a1, v8, v9);
    }
  }

  (*(*(a1 + 40) + 16))();
  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    v12[0] = 67109120;
    v12[1] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Complete with check for session... exitWhenDone: %d", v12, 8u);
  }

  if (*(a1 + 48) == 1)
  {
    xpc_transaction_exit_clean();
  }
}

void sub_10000DC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10000DC68(uint64_t a1, int a2)
{
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "checkAvailabilityWithTicketNumber finished. Success: %d", v6, 8u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_10000DE3C(uint64_t a1, void *a2)
{
  [a2 status];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_10000E154(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000E1EC;
  v4[3] = &unk_1001BCA98;
  v5 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v4];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10000E1EC(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 state];
  if (v3)
  {
    v4 = v3;
    v5 = [v12 state];
    v6 = [v5 serialNumber];
    if (v6)
    {
      v7 = v6;
      v8 = [v12 state];
      v9 = [v8 serialNumber];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_6;
      }

      v11 = *(a1 + 32);
      v4 = [v12 state];
      v5 = [v4 serialNumber];
      [v11 addObject:v5];
    }
  }

LABEL_6:
}

void sub_10000E558(uint64_t a1)
{
  v1 = [*(a1 + 32) connection];
  [v1 end];
}

void sub_10000E6F4(uint64_t a1)
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[DADeviceWatchProxy] Requesting assessment mode", v4, 2u);
  }

  v3 = [*(a1 + 32) connection];
  [v3 requestAssessmentMode];
}

id sub_10000F3A4(void *a1)
{
  v1 = a1;
  v2 = [ASTLocalization localizedStringForKey:v1];
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1001586C8(v1, v2, v3);
  }

  if (!v2 || [v2 isEqualToString:v1])
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v1 value:&stru_1001C9EA8 table:0];

    v2 = v5;
    if (!v5)
    {
      v2 = v1;
    }
  }

  return v2;
}

id sub_10000F490(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v11 = a2;
  v12 = sub_10000F3A4(v10);
  v13 = v10;
  v14 = v13;
  if (v12)
  {
    v14 = v13;
    if (([v12 isEqualToString:v13] & 1) == 0)
    {
      v18[1] = &a9;
      v15 = [NSString alloc];
      v16 = +[NSLocale currentLocale];
      v18[0] = 0;
      v14 = [v15 initWithValidatedFormat:v12 validFormatSpecifiers:v11 locale:v16 arguments:&a9 error:v18];
    }
  }

  if (!v14)
  {
    v14 = v13;
  }

  return v14;
}

void sub_10000F5D4(id a1)
{
  v1 = objc_alloc_init(DANvramUtil);
  v2 = qword_100202D30;
  qword_100202D30 = v1;
}

void sub_1000101F8(id a1)
{
  v1 = objc_alloc_init(DADiagnosticResponder);
  v2 = qword_100202D40;
  qword_100202D40 = v1;
}

void sub_10001030C(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 connectedScenes];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 _setSystemVolumeHUDEnabled:{*(a1 + 32), v10}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1000104FC(uint64_t a1)
{
  BKSDisplayBrightnessGetCurrent();
  v3 = v2;
  v4 = [*(a1 + 32) screenBrightnessUserSetting];

  if (!v4)
  {
    *&v5 = v3;
    v6 = [NSNumber numberWithFloat:v5];
    [*(a1 + 32) setScreenBrightnessUserSetting:v6];
  }

  [*(a1 + 32) setAutoBrightness:0];
  if (*(a1 + 44) == 1)
  {
    v7 = *(a1 + 40);
    if (v3 >= v7)
    {
      if (v3 > v7)
      {
        v11 = 0.0002;
        do
        {
          v12 = dispatch_time(0, (v11 * 1000000000.0));
          v13 = dispatch_get_global_queue(-2, 0);
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_10001080C;
          v16[3] = &unk_1001BCCC8;
          v17 = v3;
          dispatch_after(v12, v13, v16);

          v11 = v11 + 0.0002;
          v3 = v3 + -0.01;
        }

        while (v3 > *(a1 + 40));
      }
    }

    else
    {
      v8 = 0.0002;
      do
      {
        v9 = dispatch_time(0, (v8 * 1000000000.0));
        v10 = dispatch_get_global_queue(-2, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100010788;
        block[3] = &unk_1001BCCC8;
        v19 = v3;
        dispatch_after(v9, v10, block);

        v8 = v8 + 0.0002;
        v3 = v3 + 0.01;
      }

      while (v3 < *(a1 + 40));
    }
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100010890;
    v14[3] = &unk_1001BCCC8;
    v15 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v14);
  }
}

void sub_100010788(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010800;
  block[3] = &unk_1001BCCC8;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10001080C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010884;
  block[3] = &unk_1001BCCC8;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100010B48(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting screen brightness", buf, 2u);
    }

    BKSDisplayBrightnessSet();
  }

  if (*(a1 + 49) == 1)
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting auto screen brightness", v5, 2u);
    }

    BKSDisplayBrightnessSetAutoBrightnessEnabled();
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100010CF4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100202D50;
  qword_100202D50 = v1;
}

void sub_100010E30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"deviceClass"];
  v3 = [NSString stringWithFormat:@"%@", v2];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"deviceType"];
  v5 = [NSString stringWithFormat:@"%@", v4];

  v6 = +[UIScreen mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"deviceEnclosureColor"];
  v10 = +[NSNull null];
  v11 = v10;
  if (v9 == v10)
  {

    v13 = 0;
    goto LABEL_5;
  }

  v12 = [*(a1 + 32) objectForKeyedSubscript:@"deviceEnclosureColor"];

  if (v12)
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:@"deviceEnclosureColor"];
    v13 = [NSString stringWithFormat:@"%@", v9];
LABEL_5:

    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:
  v14 = [*(a1 + 32) objectForKeyedSubscript:@"deviceColor"];
  v15 = +[NSNull null];
  v16 = v15;
  if (v14 == v15)
  {

    v19 = 0;
    goto LABEL_11;
  }

  v17 = [*(a1 + 32) objectForKeyedSubscript:@"deviceColor"];

  if (v17)
  {
    v14 = [*(a1 + 32) objectForKeyedSubscript:@"deviceColor"];
    v19 = [NSString stringWithFormat:@"%@", v14];
LABEL_11:

    goto LABEL_13;
  }

  v19 = 0;
LABEL_13:
  v20 = v8;
  *&v18 = v20;
  v21 = [WeakRetained imageURLForDeviceClass:v3 deviceModel:v5 deviceColor:v19 deviceEnclosureColor:v13 scale:v18];
  *&v22 = v20;
  v23 = [WeakRetained imageURLForDeviceClass:v3 deviceModel:v5 deviceColor:0 deviceEnclosureColor:0 scale:v22];
  [WeakRetained downloadAndSetImageForURL:v21 fallbackUrl:v23 andCompletionHandler:*(a1 + 40)];
}

uint64_t sub_100011384(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10001139C(void *a1, uint64_t a2)
{
  v3 = [UIImage imageWithData:a2];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = a1[5];
  v7 = *(*(a1[6] + 8) + 40);
  v8 = a1[4];

  return [v8 setDeviceImage:v7 withCompletion:v6];
}

void sub_100011404(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 statusCode] == 200 && (+[UIImage imageWithData:](UIImage, "imageWithData:", v16), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v10 = [NSMutableURLRequest requestWithURL:*(a1 + 32)];
    [v10 setHTTPMethod:@"GET"];
    v11 = [*(a1 + 40) getImageFromCacheWithRequest:v10];
    v12 = *(*(a1 + 72) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(*(*(a1 + 72) + 8) + 40);
    if (v14)
    {
      [*(a1 + 40) setDeviceImage:v14 withCompletion:*(a1 + 64)];
    }

    v15 = [*(a1 + 48) dataTaskWithRequest:v10 completionHandler:*(a1 + 56)];
    [v15 resume];
  }
}

void sub_100011778(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [UIImage imageNamed:@"DeviceImagePlaceholder"];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = [UIImageView alloc];
  v6 = [*(*(*(a1 + 40) + 8) + 40) scaledImageToHeight:70.0];
  v8 = [v5 initWithImage:v6];

  [v8 setContentMode:4];
  v7 = +[UIColor clearColor];
  [v8 setBackgroundColor:v7];

  (*(*(a1 + 32) + 16))();
}

void sub_100011FE0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10015878C();
  }

  [DSAnalytics sendAnalyticsWithEvent:5 error:v2];
}

void sub_10001212C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10015880C();
  }

  [DSAnalytics sendAnalyticsWithEvent:5 error:v2];
}

void sub_10001246C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_sync_exit(v20);
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001249C(uint64_t a1)
{
  v2 = [*(a1 + 32) messageReceiverQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000125B4;
  v9[3] = &unk_1001BCE68;
  objc_copyWeak(&v12, (a1 + 72));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v13 = *(a1 + 80);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  dispatch_async(v2, v9);

  objc_destroyWeak(&v12);
}

void sub_1000125B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained receiver];
  [v2 receiveMessage:*(a1 + 32) data:*(a1 + 40) fromDestination:*(a1 + 48) expectsResponse:*(a1 + 72) response:*(a1 + 56)];
}

void sub_1000128E0(id a1)
{
  v1 = [NSError errorWithDomain:@"com.apple.iosdiagnosticsd" code:0 userInfo:0];
  [DSAnalytics sendAnalyticsWithEvent:3 error:v1];
}

void sub_100012954(id a1)
{
  v1 = [NSError errorWithDomain:@"com.apple.iosdiagnosticsd" code:0 userInfo:0];
  [DSAnalytics sendAnalyticsWithEvent:4 error:v1];
}

void sub_100012A0C(id a1)
{
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v15, v14, v13, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0];
  v12 = qword_100202D60;
  qword_100202D60 = v11;
}

void sub_100013378(uint64_t a1)
{
  v2 = [*(a1 + 32) diagnosticsManager];
  [v2 cancelAllDiagnostics];

  v3 = [*(a1 + 32) reportManager];
  [v3 cancelAllReports];

  v4 = [*(a1 + 32) connection];
  [v4 end];
}

void sub_100013678(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a3;
  v7 = a2;
  v5(v4, v7, v6);
  v8 = [v7 statusCode];

  [DADiagnosticAnalyticsManager recordExecuteTestFinishedWith:v8 error:v6];
}

void sub_100013DD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v4 = +[NSMutableArray array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          v11 = [v10 identifier];
          v12 = [v10 version];
          v13 = [ASTTestAttributes attributesWithTestId:v11 version:v12];
          [v4 addObject:v13];
        }

        v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    v14 = [*(a1 + 32) profile];
    [v14 setTests:v4];

    v3 = v22;
  }

  else
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001588D8(v4, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100013FB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error: %@, Report: %@", &v17, 0x16u);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if (v5)
    {
      v8 = [v5 arrayForJSON];
      v9 = [*(a1 + 32) profile];
      [v9 setProperties:v8];
    }

    else
    {
      v8 = [*(a1 + 32) profile];
      [v8 setProperties:&__NSArray0__struct];
    }
  }

  else
  {
    v8 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100158910(v8, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100014604(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100158948(a1, v4);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100015070(id a1)
{
  v3 = objc_alloc_init(NSMutableArray);
  [v3 addObjectsFromArray:&off_1001CCD38];
  [v3 addObjectsFromArray:&off_1001CCD50];
  v1 = [[DKDiagnosticAllowList alloc] initWithIdentifiers:v3 contactMessage:@"Please reach out to Embedded Field Diagnostics for onboarding with new DiagnosticsKit extensions."];
  v2 = qword_100202D70;
  qword_100202D70 = v1;
}

void sub_100015D7C(uint64_t a1)
{
  byte_100202D80 = 0;
  v4 = [*(a1 + 32) traitCollection];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) traitCollection];
    v3 = [v2 forceTouchCapability];

    if (v3 == 2)
    {
      byte_100202D80 = 1;
    }
  }

  else
  {
  }
}

void sub_100016EA8(id a1)
{
  v1 = objc_alloc_init(MIBUClient);
  v9 = 0;
  v2 = [v1 isInBoxUpdateMode:&v9];
  v3 = v9;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "In-box update mode is active.", v8, 2u);
    }

    byte_100202D90 = 1;
  }

  else if (v3)
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001589EC(v4, v6);
    }
  }
}

void sub_100017494(id a1)
{
  v1 = objc_alloc_init(DAUserInterruptAlertFactory);
  v2 = qword_100202DA0;
  qword_100202DA0 = v1;
}

void sub_100017800(id a1)
{
  v1 = objc_alloc_init(DARemoteRunnerManager);
  v2 = qword_100202DB0;
  qword_100202DB0 = v1;
}

void sub_100017DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, char a19)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100017E2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100017E44(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Connection %@ broke with error %@", &v8, 0x16u);
    }
  }
}

void sub_100018590(uint64_t a1, void *a2)
{
  v18 = a1;
  v2 = a2;
  v3 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v2 tests];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v26[0] = @"version";
        v10 = [v9 version];
        v26[1] = @"testId";
        v27[0] = v10;
        v11 = [v9 testId];
        v27[1] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v6);
  }

  v13 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "System report has finished. Sending to remote runner controlling process", buf, 2u);
  }

  v14 = *(v18 + 32);
  v24[0] = @"properties";
  v15 = [v2 properties];
  v24[1] = @"tests";
  v25[0] = v15;
  v16 = [v3 copy];
  v25[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  (*(v14 + 16))(v14, v17);
}

void sub_100018B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018B54(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 state];
    [v8 transactionWithBlock:&stru_1001BD0B0];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100018C08(id a1, DADeviceState *a2)
{
  v7 = a2;
  v2 = [(DADeviceState *)v7 history];
  v3 = [DAHistoryEntry alloc];
  v4 = [(DADeviceState *)v7 suiteName];
  v5 = [(DAHistoryEntry *)v3 initWithTestSuiteName:v4 skipped:0];
  v6 = [v2 arrayByAddingObject:v5];
  [(DADeviceState *)v7 setHistory:v6];

  [(DADeviceState *)v7 setSuiteName:0];
}

void sub_100018CCC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSuiteName:v3];
  [v4 setSuiteDescription:*(a1 + 40)];
}

void sub_10001951C(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9 || (a2 & 1) != 0)
  {
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) _updateState:v12];
      }
    }
  }

  else
  {
    v13 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to recieve message on connect for device state with response: %@. Error: %@", &v14, 0x16u);
    }
  }
}

void sub_100019700(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  if (v15 && (a2 & 1) == 0)
  {
    v11 = [*(a1 + 32) state];
    [v11 setPhase:0];

    v12 = [*(a1 + 32) state];
    [v12 addErrorCode:objc_msgSend(v15 userInfo:{"code"), 0}];

    v13 = [*(a1 + 32) state];
    [v13 removeErrorCode:{objc_msgSend(v15, "code")}];
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))();
  }
}

void sub_1000198D0(uint64_t a1, char a2, void *a3)
{
  v8 = a3;
  if (v8 && (a2 & 1) == 0)
  {
    v5 = [*(a1 + 32) state];
    [v5 setPhase:1];

    v6 = [*(a1 + 32) state];
    [v6 addErrorCode:objc_msgSend(v8 userInfo:{"code"), 0}];

    v7 = [*(a1 + 32) state];
    [v7 removeErrorCode:{objc_msgSend(v8, "code")}];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100019A20(uint64_t a1, char a2, void *a3)
{
  if (a3 && (a2 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    v6 = [v4 state];
    [v6 setPhase:1];

    v7 = [*(a1 + 32) state];
    [v7 addErrorCode:objc_msgSend(v5 userInfo:{"code"), 0}];

    v9 = [*(a1 + 32) state];
    v8 = [v5 code];

    [v9 removeErrorCode:v8];
  }
}

void sub_100019B94(uint64_t a1, char a2, void *a3)
{
  if (a3 && (a2 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    v6 = [v4 state];
    [v6 setPhase:1];

    v7 = [*(a1 + 32) state];
    [v7 addErrorCode:objc_msgSend(v5 userInfo:{"code"), 0}];

    v9 = [*(a1 + 32) state];
    v8 = [v5 code];

    [v9 removeErrorCode:v8];
  }
}

void sub_100019CE0(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  if (!v9 || (a2 & 1) != 0)
  {
    if ([a4 isEqualToString:@"messageReceived"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) _updateState:v10];
      }
    }
  }

  else
  {
    v11 = [*(a1 + 32) state];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100019E28;
    v14[3] = &unk_1001BC848;
    v12 = v9;
    v15 = v12;
    [v11 transactionWithBlock:v14];

    v13 = [*(a1 + 32) state];
    [v13 removeErrorCode:{objc_msgSend(v12, "code")}];
  }
}

void sub_100019E28(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPhase:1];
  [v3 addErrorCode:objc_msgSend(*(a1 + 32) userInfo:{"code"), 0}];
}

void sub_10001A3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001A3D0(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10001A404(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) isCommunicationAvailable] & 1) != 0 || (*(a1 + 64))
  {
    v3 = *(a1 + 48);
    v4 = dispatch_semaphore_create(0);
    v5 = +[NSDate date];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10001A764;
    v28[3] = &unk_1001BD1B8;
    v6 = *(a1 + 40);
    v28[4] = *(a1 + 32);
    v7 = v6;
    v8 = *(a1 + 56);
    v29 = v7;
    v32 = v8;
    v9 = v5;
    v30 = v9;
    v10 = v4;
    v31 = v10;
    v11 = objc_retainBlock(v28);
    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = [*(a1 + 32) destination];
      *buf = 138412546;
      v34 = v13;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending message: %@ to destination: %@", buf, 0x16u);
    }

    v15 = v3 != 0;

    v16 = [*(a1 + 32) messenger];
    v17 = *(a1 + 40);
    v18 = [*(a1 + 32) destination];
    [v16 sendMessage:v17 data:0 toDestination:v18 forceLocalDelivery:0 expectsResponse:v15 response:v11];

    v19 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v10, v19) >= 1)
    {
      v20 = [*(a1 + 32) messageReceivingQueue];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10001AC3C;
      v24[3] = &unk_1001BD1E0;
      v21 = *(a1 + 40);
      v22 = *(a1 + 32);
      v25 = v21;
      v26 = v22;
      v27 = *(a1 + 56);
      dispatch_sync(v20, v24);
    }
  }

  else
  {
    v23 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100158B18(v2);
    }

    v10 = [NSError errorWithDomain:@"com.apple.Diagnostics.DADeviceConnectionIDSProxy" code:6 userInfo:0];
    (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
    [DSAnalytics sendAnalyticsWithEvent:7 error:v10];
  }
}

void sub_10001A764(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) messageReceivingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A8D0;
  block[3] = &unk_1001BD190;
  v23 = v10;
  v24 = v11;
  v29 = a2;
  v25 = v9;
  v13 = *(a1 + 40);
  v28 = *(a1 + 64);
  *&v14 = v13;
  *(&v14 + 1) = *(a1 + 32);
  v21 = v14;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  v26 = v21;
  v27 = v17;
  v18 = v9;
  v19 = v11;
  v20 = v10;
  dispatch_async(v12, block);
}

void sub_10001A8D0(uint64_t a1)
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 96);
    v6 = *(a1 + 48);
    *buf = 138413058;
    v42 = v3;
    v43 = 2112;
    v44 = v4;
    v45 = 1024;
    v46 = v5;
    v47 = 2112;
    v48 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received response message: %@; data: %@; success: %d; error: %@;", buf, 0x26u);
  }

  if (*(a1 + 96) == 1)
  {
    v7 = [*(a1 + 32) isEqual:@"deviceIsLocked"];
    if (v7)
    {
      v8 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100158C30(a1, v8, v9, v10, v11, v12, v13, v14);
      }

      v15 = [NSError errorWithDomain:@"com.apple.Diagnostics.DADeviceConnectionIDSProxy" code:5 userInfo:0];
    }

    else
    {
      v15 = 0;
    }

    if ([*(a1 + 32) isEqual:@"destinationMismatch"])
    {
      v24 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100158CA0(a1, v24, v25, v26, v27, v28, v29, v30);
      }

      v31 = [NSError errorWithDomain:@"com.apple.Diagnostics.DADeviceConnectionIDSProxy" code:8 userInfo:0];

      v23 = 0;
      v15 = v31;
    }

    else
    {
      v23 = v7 ^ 1;
    }
  }

  else
  {
    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100158BC0(a1, v16, v17, v18, v19, v20, v21, v22);
    }

    v15 = [NSError errorWithDomain:@"com.apple.Diagnostics.DADeviceConnectionIDSProxy" code:6 userInfo:0];
    v23 = 0;
  }

  v32 = *(*(*(a1 + 88) + 8) + 40);
  if (v32)
  {
    (*(v32 + 16))(v32, v23, v15, *(a1 + 32), *(a1 + 40));
    v33 = *(*(a1 + 88) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = 0;
  }

  else
  {
    v34 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_100158D10(a1);
    }
  }

  if (v15)
  {
    [DSAnalytics sendAnalyticsWithEvent:7 error:v15];
  }

  v35 = +[NSDate date];
  [v35 timeIntervalSinceDate:*(a1 + 72)];
  v37 = [NSNumber numberWithDouble:v36 * 1000.0, kDSAnalyticsIDSDurationKey];
  v40 = v37;
  v38 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  [DSAnalytics sendAnalyticsWithEvent:6 payloadDict:v38];

  [*(a1 + 64) setCommunicationAvailable:1];
  dispatch_semaphore_signal(*(a1 + 80));
}

void sub_10001AC3C(uint64_t a1)
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100158DA4(a1);
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v3 = [NSError errorWithDomain:@"com.apple.Diagnostics.DADeviceConnectionIDSProxy" code:6 userInfo:0];
    (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    [DSAnalytics sendAnalyticsWithEvent:7 error:v3];
    [*(a1 + 40) setCommunicationAvailable:0];
  }

  else
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100158E34(a1);
    }
  }
}

void sub_10001AF7C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001B020;
  v3[3] = &unk_1001BD230;
  v3[4] = *(a1 + 32);
  v2 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v3 block:30.0];
  [*(a1 + 32) setDeviceStatePingTimer:v2];
}

id sub_10001B020(uint64_t a1)
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) destination];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending ping message to device: %@", &v5, 0xCu);
  }

  return [*(a1 + 32) _ping];
}

void sub_10001B264(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10001B910(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_nanoRegistryDevicePaired:" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:"_nanoRegistryDeviceUnpaired:" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];
}

void sub_10001BA7C(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];

  if (v3)
  {
    v4 = [*(a1 + 40) _createDeviceWithNanoDevice:v3];
    if (v4)
    {
      v5 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v4 state];
        v7 = [v6 serialNumber];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Nano device connected", &v9, 0xCu);
      }

      v8 = [*(a1 + 40) devices];
      [v8 addObject:v4];

      [*(a1 + 40) _updateHandlers];
    }
  }
}

void sub_10001BC80(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];

  if (v3)
  {
    v4 = [*(a1 + 40) _createDeviceWithNanoDevice:v3];
    if (v4)
    {
      v5 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v4 state];
        v7 = [v6 serialNumber];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Nano device disconnected", &v9, 0xCu);
      }

      v8 = [*(a1 + 40) devices];
      [v8 removeObject:v4];

      [*(a1 + 40) _updateHandlers];
    }
  }
}

void sub_10001BF54(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32)];
}

void sub_10001C034(uint64_t a1)
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getPairedDevices];

  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = +[NRPairedDeviceRegistry pairedDevicesSelectorBlock];
  v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];

  if ([v6 count])
  {
    v7 = [v3 arrayByAddingObjectsFromArray:v6];

    v3 = v7;
  }

  v25 = v6;
  v8 = [*(a1 + 32) devices];
  v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v8 count]);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(a1 + 32) _createDeviceWithNanoDevice:*(*(&v26 + 1) + 8 * i)];
        v16 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v15 state];
          v18 = [v17 serialNumber];
          *buf = 138412290;
          v31 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Nano device connected", buf, 0xCu);
        }

        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v12);
  }

  v19 = [*(a1 + 32) devices];
  v20 = [v19 mutableCopy];

  [v20 minusSet:v9];
  v21 = [v9 mutableCopy];
  v22 = [*(a1 + 32) devices];
  [v21 minusSet:v22];

  v23 = [*(a1 + 32) devices];
  [v23 minusSet:v20];

  v24 = [*(a1 + 32) devices];
  [v24 unionSet:v21];

  [*(a1 + 32) _updateHandlers];
}

void sub_10001C604(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100202DC0;
  qword_100202DC0 = v1;
}

void sub_10001C714(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"imageName"];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10001C9CC;
  v20 = sub_10001C9DC;
  v21 = 0;
  if (v3)
  {
    v4 = [UIImage imageNamed:v3];
    v5 = v17[5];
    v17[5] = v4;

    if (!v17[5])
    {
      v6 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting device image for [%@]", buf, 0xCu);
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10001C9E4;
      v12[3] = &unk_1001BD278;
      v15 = &v16;
      v13 = v3;
      v7 = v2;
      v14 = v7;
      [ASTSession requestAsset:v13 completionHandler:v12];
      v8 = dispatch_time(0, 15000000000);
      dispatch_semaphore_wait(v7, v8);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CB4C;
  block[3] = &unk_1001BCDD8;
  v11 = &v16;
  v10 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);

  _Block_object_dispose(&v16, 8);
}

void sub_10001C9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001C9CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001C9E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = +[UIScreen mainScreen];
    [v8 scale];
    v9 = [UIImage imageWithData:v5 scale:?];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not download device image: [%@]", &v17, 0xCu);
    }

    v14 = [UIImage imageNamed:*(a1 + 32)];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10001CB4C(uint64_t a1)
{
  v3 = [[UIImageView alloc] initWithImage:*(*(*(a1 + 40) + 8) + 40)];
  [v3 setContentMode:4];
  v2 = +[UIColor clearColor];
  [v3 setBackgroundColor:v2];

  (*(*(a1 + 32) + 16))();
}

void sub_10001D164(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "New devices: %@", &v7, 0xCu);
  }

  [WeakRetained setDevices:v3];
  v6 = [WeakRetained delegate];
  [v6 observerDidChangeDevices:WeakRetained];
}

void sub_10001D3CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10001D3F0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDevices:v3];
  v4 = [WeakRetained delegate];
  [v4 observerDidChangeDevices:WeakRetained];

  (*(*(a1 + 32) + 16))();
}

void sub_10001DB74(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v3 = dispatch_group_create();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = a1;
  v4 = [*(a1 + 32) observers];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        dispatch_group_enter(v3);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_10001DD40;
        v11[3] = &unk_1001BCAC0;
        v12 = v2;
        v13 = v3;
        [v9 oneshotWithHandler:v11];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  (*(*(v10 + 40) + 16))();
}

void sub_10001DD40(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(a1 + 32);
  v5 = [v6 allObjects];
  [v4 addObjectsFromArray:v5];

  objc_sync_exit(v3);
  dispatch_group_leave(*(a1 + 40));
}

void sub_10001E77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001E7C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001E7DC(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 32) purgeSecurityKey];
    [*(a1 + 32) setDeviceIdentityKey:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "referenceKey")}];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10001EE20(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf, int a14, __int16 a15, __int16 a16, void *a17)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    v18 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v17 name];
      v20 = [v17 reason];
      v21 = [v17 userInfo];
      v22 = [v21 description];
      LODWORD(buf) = 138412802;
      *(&buf + 4) = v19;
      WORD6(buf) = 2112;
      *(&buf + 14) = v20;
      a16 = 2112;
      a17 = v22;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Exception raised while taking SHA256 of file: %@: %@ (%@)", &buf, 0x20u);
    }

    objc_end_catch();
    JUMPOUT(0x10001EDD0);
  }

  _Unwind_Resume(a1);
}

void sub_10001F470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F494(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  }

  else
  {
    [*(a1 + 32) setDeviceIdentityKey:a2];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10001F778(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = objc_opt_new();
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001F85C;
  v6[3] = &unk_1001BD3B8;
  v9 = *(a1 + 64);
  v5 = *(a1 + 48);
  v4 = v5;
  v8 = v5;
  v7 = *(a1 + 32);
  [v2 issueClientCertificateWithCompletionOnQueue:0 withOptions:v3 completion:v6];
}

void sub_10001F85C(uint64_t a1, int a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  if (!a2)
  {
    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100159398();
    }

    v14 = (*(*(a1 + 56) + 8) + 40);
    v15 = a4;
    goto LABEL_9;
  }

  v10 = [v8 certificates];
  if (v10)
  {
    v11 = v10;
    v12 = [v8 certificates];
    if ([v12 count] == 2)
    {
      v13 = [v8 referenceKey];

      if (v13)
      {
        v14 = (*(*(a1 + 48) + 8) + 40);
        v15 = a3;
LABEL_9:
        objc_storeStrong(v14, v15);
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v17 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100159400();
  }

LABEL_14:
  (*(*(a1 + 40) + 16))();
  dispatch_group_leave(*(a1 + 32));
}

void sub_10001F9F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_1000206C0(id a1)
{
  v1 = objc_alloc_init(DADeviceConnectionConfigurator);
  v2 = qword_100202DD0;
  qword_100202DD0 = v1;
}

void sub_100021E6C(id a1)
{
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0];
  v9 = qword_100202DE0;
  qword_100202DE0 = v8;
}

void sub_1000227E8(uint64_t a1)
{
  v1 = [*(a1 + 32) connection];
  [v1 end];
}

void sub_100022B84(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a3;
  v7 = a2;
  v5(v4, v7, v6);
  v8 = [v7 statusCode];

  [DADiagnosticAnalyticsManager recordExecuteTestFinishedWith:v8 error:v6];
}

void sub_1000231B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error: %@, Report: %@", &v10, 0x16u);
  }

  if (v5)
  {
    v8 = [v5 arrayForJSON];
    v9 = [*(a1 + 32) profile];
    [v9 setProperties:v8];
  }

  else
  {
    v8 = [*(a1 + 32) profile];
    [v8 setProperties:&__NSArray0__struct];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100023580(id a1)
{
  v1 = objc_alloc_init(DALauncherServiceManager);
  v2 = qword_100202DF0;
  qword_100202DF0 = v1;
}

void sub_100023B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, char a19)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100023B60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100023B78(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Connection %@ broke with error %@", &v8, 0x16u);
    }
  }
}

void sub_100023F80(uint64_t a1)
{
  if (NSClassFromString(@"DADeviceLocal"))
  {
    v2 = objc_opt_new();
  }

  else
  {
    v3 = MGCopyAnswer();
    v6 = [[DADeviceRepresentation alloc] initWithSerialNumber:v3 isLocal:1 attributes:&__NSDictionary0__struct];

    v2 = v6;
  }

  v4 = *(a1 + 32);
  v7 = v2;
  v5 = [NSSet setWithObject:v2];
  (*(v4 + 16))(v4, v5);
}

id sub_100024504(uint64_t a1)
{
  v2 = [*(a1 + 32) onSavePDFData];
  v2[2]();

  v3 = *(a1 + 32);

  return [v3 setOnSavePDFData:0];
}

id sub_1000249EC(uint64_t a1)
{
  v2 = [*(a1 + 32) onSavePDFData];

  if (v2)
  {
    v3 = [*(a1 + 32) onSavePDFData];
    v3[2]();
  }

  v4 = *(a1 + 32);

  return [v4 setOnSavePDFData:0];
}

void sub_100026960(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"info";
  v7 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"com.apple.Diagnostics.deviceStateChangedNotification" object:v4 userInfo:v5];
}

void sub_100027BFC(uint64_t a1)
{
  v1 = [*(a1 + 32) connection];
  [v1 end];
}

void sub_100027FB4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a3;
  v7 = a2;
  v5(v4, v7, v6);
  v8 = [v7 statusCode];

  [DADiagnosticAnalyticsManager recordExecuteTestFinishedWith:v8 error:v6];
}

void sub_100028678(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v2;
  v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v18)
  {
    v17 = *v25;
    do
    {
      v4 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = v4;
        v5 = *(*(&v24 + 1) + 8 * v4);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v6 = [v5 supportedDevices];
        v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v21;
          do
          {
            v10 = 0;
            do
            {
              if (*v21 != v9)
              {
                objc_enumerationMutation(v6);
              }

              if ([*(*(&v20 + 1) + 8 * v10) isEqualToString:@"AirPods"])
              {
                v11 = [v5 identifier];
                v12 = [v5 version];
                v13 = [ASTTestAttributes attributesWithTestId:v11 version:v12];
                [v3 addObject:v13];
              }

              v10 = v10 + 1;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v8);
        }

        v4 = v19 + 1;
      }

      while ((v19 + 1) != v18);
      v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v18);
  }

  v14 = [*(a1 + 32) profile];
  [v14 setTests:v3];

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000288C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error: %@, Report: %@", &v10, 0x16u);
  }

  if (v5)
  {
    v8 = [v5 arrayForJSON];
    v9 = [*(a1 + 32) profile];
    [v9 setProperties:v8];
  }

  else
  {
    v8 = [*(a1 + 32) profile];
    [v8 setProperties:&__NSArray0__struct];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100028DF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100158948(a1, v4);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100029AE4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);
  v13 = @"DADeviceAirPodsDeviceKey";
  v4 = [v3 airpodsDevice];
  v14 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v2 postNotificationName:@"com.apple.Diagnostics.airPodsSessionWillStart" object:v3 userInfo:v5];

  v6 = [*(a1 + 32) airpodsDevice];
  LOBYTE(v3) = [v6 connected];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) connect];
  }

  v7 = [*(a1 + 32) airpodsDevice];
  v8 = [v7 connected];

  if (v8)
  {
    v12.receiver = *(a1 + 32);
    v12.super_class = DADeviceConnectionAirPods;
    objc_msgSendSuper2(&v12, "start");
  }

  else
  {
    v9 = [*(a1 + 32) state];
    [v9 setPhase:0];

    v10 = [*(a1 + 32) state];
    [v10 addErrorCode:11 userInfo:0];

    v11 = [*(a1 + 32) state];
    [v11 removeErrorCode:11];
  }
}

id sub_100029D0C(uint64_t a1)
{
  v2 = [*(a1 + 32) airpodsDevice];
  v3 = [v2 connected];

  if (v3)
  {
    [*(a1 + 32) disconnect];
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = DADeviceConnectionAirPods;
  return objc_msgSendSuper2(&v5, "end");
}

void sub_100029E60(uint64_t a1)
{
  [*(a1 + 32) end];
  v2 = dispatch_time(0, 2000000000);
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029F20;
  block[3] = &unk_1001BC580;
  block[4] = *(a1 + 32);
  dispatch_after(v2, v3, block);
}

void sub_10002A0E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained btManager];
  [v3 setDevicePairingEnabled:1];

  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 airpodsDevice];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requesting unpair of AirPods %@...", &v11, 0xCu);
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 airpodsDevice];
  [v8 unpair];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 btManager];
  [v10 setDevicePairingEnabled:0];
}

void sub_10002AD30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_10002B648(uint64_t a1)
{
  v2 = [*(a1 + 32) original];
  [v2 end];

  v3 = *(a1 + 32);

  return [v3 _reset];
}

void sub_10002BA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002BA78(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (a2)
  {
    BKSDisplayBrightnessGetCurrent();
    [*(a1 + 32) setOriginalScreenBrightness:?];
    [WeakRetained setIgnoreButtonEvents:1];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:WeakRetained selector:"testViewPresented:" name:@"com.apple.Diagnostics.DKViewControllerPresented" object:0];

    v6 = [*(a1 + 32) buttonEventMonitor];
    v7 = [v6 hasTarget:*(a1 + 32)];

    if ((v7 & 1) == 0)
    {
      [*(a1 + 32) _startInterceptingButtonEvents];
    }

    v8 = [WeakRetained original];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002BC40;
    v13[3] = &unk_1001BD0D8;
    objc_copyWeak(&v15, (a1 + 64));
    v14 = *(a1 + 56);
    [v8 executeTestWithTestAttributes:v9 parameters:v10 completion:v13];

    objc_destroyWeak(&v15);
  }

  else
  {
    v11 = *(a1 + 56);
    v12 = [NSError errorWithDomain:DKErrorDomain code:-1003 userInfo:0];
    (*(v11 + 16))(v11, 0, v12);

    [WeakRetained idle];
  }
}

void sub_10002BC40(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reset];

  (*(*(a1 + 32) + 16))();
}

void sub_10002BE5C(uint64_t a1)
{
  v2 = [*(a1 + 32) original];
  v3 = [v2 state];
  v4 = [v3 suiteName];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002BF4C;
  v5[3] = &unk_1001BC698;
  objc_copyWeak(&v6, (a1 + 40));
  [DAUserInterruptAlertFactory activateAlertForSuiteName:v4 withHandler:v5];

  objc_destroyWeak(&v6);
}

void sub_10002BF4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained diagnosticsManager];
  [v1 cancelAllDiagnostics];
}

void sub_10002C05C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10002C080(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained buttonEventMonitor];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 addTarget:v3 action:"handleButtonEvent:" forButtonEvents:0xFFFFFFFFLL propagate:0];
}

void sub_10002C230(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonEventMonitor];
  [v2 removeTarget:*(a1 + 32)];
}

void sub_10002C284(uint64_t a1)
{
  [*(a1 + 32) originalScreenBrightness];
  BKSDisplayBrightnessSet();
  v1 = +[UIApplication sharedApplication];
  v2 = [v1 connectedScenes];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 _setSystemVolumeHUDEnabled:{1, v9}];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_10002D154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_sync_exit(v19);
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002D184(id *a1)
{
  if ([a1[4] isEqualToString:@"requestAssessmentMode"] && (v2 = objc_loadWeakRetained(a1 + 6), objc_msgSend(v2, "delegate"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, v2, (v4 & 1) != 0))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v5 = [WeakRetained delegate];
    v6 = [a1[5] original];
    [v5 device:v6 didRequestOperationMode:1];
  }

  else
  {
    if (![a1[4] isEqualToString:@"requestSuiteFinish"])
    {
      return;
    }

    v7 = objc_loadWeakRetained(a1 + 6);
    v8 = [v7 delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v5 = [WeakRetained delegate];
    v6 = [a1[5] original];
    [v5 device:v6 didRequestSuiteFinishWithCompletionHandler:0];
  }
}

void sub_10002D680(uint64_t a1)
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Syncing Device State: %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) messenger];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) destination];
  [v4 sendMessage:@"deviceState" data:v5 toDestination:v6 forceLocalDelivery:1 expectsResponse:0 response:&stru_1001BD698];
}

void sub_10002D78C(id a1, BOOL a2, NSError *a3, NSString *a4, DAIDSMessageObject *a5)
{
  v5 = a2;
  v6 = DiagnosticLogHandleForCategory();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Synced device state.", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1001596B4(v7);
  }
}

void sub_10002DB84(id a1)
{
  v1 = objc_alloc_init(DAPlatform_iOS_Swift);
  v2 = qword_100202E00;
  qword_100202E00 = v1;
}

void sub_10002DD24(uint64_t a1)
{
  v2 = [UIAlertController alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002DEB4;
  v9[3] = &unk_1001BD6E0;
  v3 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v4 = [UIAlertAction actionWithTitle:v3 style:2 handler:v9];
  [v2 addAction:v4];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002DEF8;
  v7[3] = &unk_1001BD708;
  v5 = *(a1 + 64);
  v8 = *(a1 + 56);
  v6 = [UIAlertAction actionWithTitle:v5 style:1 handler:v7];
  [v2 addAction:v6];

  [v2 showOnTopWithAnimated:1 completion:0];
}

uint64_t sub_10002DEB4(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, 0, v6);

  return 0;
}

uint64_t sub_10002E004(void (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  a1(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_10002E050()
{
  if (sub_100157724(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_10002E1B4()
{
  if (sub_100157724(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10002E3B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v8 = *(a4 - 8);
  __chkstk_darwin(a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _TagTraitWritingModifier();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a4, v13);
  (*(v8 + 32))(v15, v10, a4);
  v15[*(v11 + 36)] = a2;
  View.modifier<A>(_:)();
  return (*(v12 + 8))(v15, v11);
}

BOOL sub_10002E588(void *a1, uint64_t *a2)
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

void *sub_10002E614@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_10002E640@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_10002E704@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10002E71C(uint64_t a1, uint64_t a2)
{
  result = static Float._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_10002E770(uint64_t a1, uint64_t a2)
{
  v3 = static Float._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_10002E7C8@<X0>(_DWORD *a1@<X8>)
{
  result = static Float._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_10002E7F0()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int sub_10002E870()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002E8E4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10002E928()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_10002E9B0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_10002EAC0(_DWORD *a1, int *a2)
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

uint64_t sub_10002EB18(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10002EB90(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10002EC10@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10002EC60@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100073344();

  *a1 = v2;
  return result;
}

uint64_t sub_10002ECAC()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

_DWORD *sub_10002ED34@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_10002ED44@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_10002ED50()
{
  sub_10002F910(&qword_1001FCCC0, type metadata accessor for UILayoutPriority);
  sub_10002F910(&qword_1001FCCC8, type metadata accessor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

Swift::Int sub_10002EEC8()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002EF2C()
{
  sub_10002F910(&qword_1001FCCD0, type metadata accessor for URLResourceKey);
  sub_10002F910(&qword_1001FCCD8, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10002EFE8()
{
  sub_10002F910(&qword_1001FCCF0, type metadata accessor for ELSDeviceSelection);
  sub_10002F910(&qword_1001FCCF8, type metadata accessor for ELSDeviceSelection);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10002F0A4()
{
  sub_10002F910(&qword_1001FCD00, type metadata accessor for ELSDeviceSelectionRequirementType);
  sub_10002F910(&qword_1001FCD08, type metadata accessor for ELSDeviceSelectionRequirementType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10002F160()
{
  sub_10002F910(&qword_1001FCD20, type metadata accessor for ELSPlatform);
  sub_10002F910(&qword_1001FCD28, type metadata accessor for ELSPlatform);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10002F21C()
{
  sub_10002F910(&qword_1001FCD10, type metadata accessor for ELSDeviceSelectionMapKey);
  sub_10002F910(&qword_1001FCD18, type metadata accessor for ELSDeviceSelectionMapKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10002F2D8()
{
  sub_10002F910(&qword_1001FCB00, type metadata accessor for CIContextOption);
  sub_10002F910(&qword_1001FCB08, type metadata accessor for CIContextOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10002F394()
{
  sub_10002F910(&qword_1001FCCE0, type metadata accessor for Key);
  sub_10002F910(&qword_1001FCCE8, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10002F450@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10002F498()
{
  sub_10002F910(&qword_1001FCD58, type metadata accessor for OptionKey);
  sub_10002F910(&unk_1001FCD60, type metadata accessor for OptionKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void sub_10002F55C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t sub_10002F5B4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10002F5F0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10002F644()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

__n128 sub_10002F6F8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002F704(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002F724(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_10002F804(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10002F810(uint64_t a1, int a2)
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

uint64_t sub_10002F830(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10002F910(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100030350(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

Swift::Int sub_1000304E8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10003055C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id sub_1000305A0()
{
  result = [objc_allocWithZone(type metadata accessor for SetupViewController()) init];
  qword_10020A358 = result;
  return result;
}

char *sub_1000305F0()
{
  v1 = OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___termsAndConditionsViewController;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___termsAndConditionsViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___termsAndConditionsViewController);
  }

  else
  {
    v4 = sub_100030654(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_100030654(uint64_t a1)
{
  v2 = sub_10011AD18(0xD000000000000010, 0x8000000100189180);
  if (!v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [objc_opt_self() systemImageNamed:v3];

    if (v4)
    {
      v5 = [objc_opt_self() configurationPreferringMulticolor];
      v2 = [v4 imageWithConfiguration:v5];
    }

    else
    {
      v2 = 0;
    }
  }

  v6 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow;
  if ([*(a1 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 >= 6)
  {
    v8 = v2;
  }

  else
  {
    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() _systemImageNamed:v7];
  }

  v9 = [*(a1 + v6) destination];
  if (v9 == 1 || v9 == 2 || v9 == 3)
  {
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002DLL, 0x80000001001891C0);
    v12 = "ASSESSMENT_TARGET_TERMS_AND_CONDITIONS_TEXT";
LABEL_26:
    v16 = (v12 - 32);
    v17 = 0xD00000000000002BLL;
    goto LABEL_35;
  }

  v13 = [*(a1 + v6) destination];
  if (v13 == 6 || v13 == 4 || v13 == 5)
  {
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002DLL, 0x8000000100189220);
    v12 = "ASSESSMENT_HELPER_TERMS_AND_CONDITIONS_TEXT";
    goto LABEL_26;
  }

  if ([objc_opt_self() isSSRBootIntentSet])
  {
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x80000001001892C0);
  }

  else
  {
    v19 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    if (v19)
    {
      v20._countAndFlagsBits = 4342623;
      v20._object = 0xE300000000000000;
      String.append(_:)(v20);
    }

    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x474149445F4E5552, 0xEF53434954534F4ELL);
  }

  v21 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  v16 = "R_TERMS_AND_CONDITIONS_TEXT";
  if (v21)
  {
    v16 = "TERMS_AND_CONDITIONS_MULTI";
    v17 = 0xD000000000000017;
  }

  else
  {
    v17 = 0xD00000000000001ALL;
  }

LABEL_35:
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v17, (v16 | 0x8000000000000000));
  v22 = type metadata accessor for TermsAndConditionsViewController();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC11Diagnostics32TermsAndConditionsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v23[OBJC_IVAR____TtC11Diagnostics32TermsAndConditionsViewController_disagreeButton] = 0;
  v24 = String._bridgeToObjectiveC()();

  v25 = String._bridgeToObjectiveC()();

  v28.receiver = v23;
  v28.super_class = v22;
  v26 = objc_msgSendSuper2(&v28, "initWithTitle:detailText:icon:contentLayout:", v24, v25, v8, 3);

  *&v26[OBJC_IVAR____TtC11Diagnostics32TermsAndConditionsViewController_delegate + 8] = &off_1001BE878;
  swift_unknownObjectWeakAssign();
  return v26;
}

id sub_100030B10()
{
  v1 = OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___storageFullscreenAlertViewController;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___storageFullscreenAlertViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___storageFullscreenAlertViewController);
LABEL_5:
    v12 = v2;
    return v3;
  }

  v4 = type metadata accessor for FullscreenAlertViewController();
  v5 = objc_allocWithZone(v4);
  result = [objc_allocWithZone(_UIContentUnavailableView) initWithFrame:0 title:0 style:{0.0, 0.0, 0.0, 0.0}];
  if (result)
  {
    *&v5[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_contentUnavailableView] = result;
    v7 = &v5[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert];
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
    v7[48] = 2;
    sub_10003C49C(&unk_1001FD020);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10017EBF0;
    type metadata accessor for AlertAction();
    v9 = swift_allocObject();
    v9[2] = 0xD000000000000026;
    v9[3] = 0x8000000100189150;
    v9[4] = 0;
    v9[5] = sub_1000D71D8;
    v9[6] = 0;
    *(v8 + 32) = v9;
    *&v5[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_privateAlertAction] = v8;
    v13.receiver = v5;
    v13.super_class = v4;
    v10 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", 0, 0);
    v11 = *(v0 + v1);
    *(v0 + v1) = v10;
    v3 = v10;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_100030CBC(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    a2(0);
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100030D34()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v1 - 8);
  v10 = v1;
  __chkstk_darwin();
  v8 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  *&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController_transitionDuration] = 0x3FD8000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController_retryInterval] = 0x4014000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController_assessmentStartingProgress] = 1028443341;
  *&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___loadingViewController] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___termsAndConditionsViewController] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___noSessionNavigationController] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___storageFullscreenAlertViewController] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___diagnosticsCompletedNavigationController] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController_onScreenErrors] = &_swiftEmptySetSingleton;
  v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController_entryReason] = 0;
  v3 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow;
  *&v0[v3] = [objc_opt_self() defaultFlow];
  v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted] = 0;
  v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController_localizedStringsPrepared] = 0;
  v7 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_localizedStringsPreparedQueue;
  sub_10003E110(0, &qword_1001FD040);
  static DispatchQoS.unspecified.getter();
  v12 = &_swiftEmptyArrayStorage;
  sub_10003E230(&unk_1001FD740, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10003C49C(&unk_1001FCEA0);
  sub_10003E278(&qword_1001FD750, &unk_1001FCEA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v9 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  *&v0[v7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentViewController] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController_retryTimer] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController_stateChangeToken] = 0;
  v4 = type metadata accessor for SetupViewController();
  v11.receiver = v0;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
}

void sub_100031178()
{
  [v0 setModalInPresentation:1];
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor:v3];

  v4 = sub_1000305D0();
  v5 = [v4 view];

  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v5 setAlpha:0.0];

  v6 = OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___loadingViewController;
  [*&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___loadingViewController] willMoveToParentViewController:v0];
  [v0 addChildViewController:*&v0[v6]];
  v7 = [*&v0[v6] view];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v0 view];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame:{v12, v14, v16, v18}];
  v19 = [*&v0[v6] view];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  [v19 setAutoresizingMask:18];

  v21 = [v0 view];
  if (!v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = v21;
  v23 = [*&v0[v6] view];
  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v23;
  [v22 addSubview:v23];

  [*&v0[v6] didMoveToParentViewController:v0];
  v25 = [*&v0[v6] view];
  if (!v25)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v31 = v25;
  [v25 alpha];
  if (v26 == 0.0)
  {
    v27 = swift_allocObject();
    *(v27 + 16) = v31;
    v28 = objc_opt_self();
    aBlock[4] = sub_10003D8B8;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001BEB80;
    v29 = _Block_copy(aBlock);
    v30 = v31;

    [v28 animateWithDuration:0x10000 delay:v29 options:0 animations:0.375 completion:0.0];
    _Block_release(v29);
  }

  else
  {
  }
}

uint64_t sub_100031520(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SetupViewController();
  v28.receiver = v2;
  v28.super_class = v14;
  objc_msgSendSuper2(&v28, "viewWillAppear:", a1 & 1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v15 = [v2 navigationController];
    if (v15)
    {
      v16 = v15;
      [v15 setNavigationBarHidden:1];
    }
  }

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 16) = sub_10003218C();
  sub_10003E110(0, &qword_1001FD040);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
  v18 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v2;
  aBlock[4] = sub_10003E1A0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001BF620;
  v20 = _Block_copy(aBlock);

  v21 = v2;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v25 + 8))(v6, v4);
  (*(v23 + 8))(v9, v24);
}

uint64_t sub_10003194C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = v10;
    OS_dispatch_semaphore.wait()();
  }

  sub_10003E110(0, &qword_1001FD040);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  aBlock[4] = sub_10003E1A8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001BF670;
  v14 = _Block_copy(aBlock);
  v15 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v18);
}

void sub_100031C5C(unsigned __int8 *a1)
{
  v2 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_entryReason;
  v3 = a1[OBJC_IVAR____TtC11Diagnostics19SetupViewController_entryReason];
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v7 = sub_100030C9C();
      sub_100039B84(v7, 1, 0, 0);

      v8 = swift_allocObject();
      *(v8 + 16) = a1;
      v9 = swift_allocObject();
      v9[2] = &off_1001BD908;
      v9[3] = sub_10003E454;
      v9[4] = v8;
      v9[5] = a1;
      v10 = a1;

      sub_1000E6380(0, 0, sub_10003E368, v9);

LABEL_16:

      return;
    }

LABEL_9:
    v12 = sub_1000305D0();
    sub_100039B84(v12, 1, 0, 0);

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    v14 = a1;
    sub_1000F018C(sub_10003E4CC, v13);
    goto LABEL_16;
  }

  if (a1[OBJC_IVAR____TtC11Diagnostics19SetupViewController_entryReason] <= 4u)
  {
    if (v3 == 3)
    {
      if (qword_1001FC6A0 != -1)
      {
        swift_once();
        v2 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_entryReason;
      }

      *(qword_10020A358 + v2) = 3;
      v4 = sub_100030C9C();
      v5 = swift_allocObject();
      *(v5 + 16) = a1;
      v6 = a1;
      sub_100039B84(v4, 0, sub_10003E1B0, v5);

      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (v3 == 5)
  {
    v11 = sub_1000305D0();
    sub_100039B84(v11, 1, 0, 0);

    if (qword_1001FC730 != -1)
    {
      swift_once();
    }

    *(qword_10020A3C8 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8) = &off_1001BE838;

    swift_unknownObjectWeakAssign();
  }

  else
  {
    v15 = sub_100030AF0();
    sub_100039B84(v15, 1, 0, 0);
  }
}

uint64_t sub_100031FA8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_100032040(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SetupViewController();
  objc_msgSendSuper2(&v6, "viewWillDisappear:", a1 & 1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [v1 navigationController];
    if (v3)
    {
      v4 = v3;
      [v3 setNavigationBarHidden:0];
    }
  }

  result = [objc_opt_self() isSSRBootIntentSet];
  if (result)
  {
    if (qword_1001FC730 != -1)
    {
      swift_once();
    }

    *(qword_10020A3C8 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8) = &off_1001BE838;
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void *sub_10003218C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = vdupq_n_s64([*(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination]);
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_1001BD8E8, v10), vceqq_s64(unk_1001BD8F8, v10)))))
  {
    v11 = [objc_allocWithZone(CWFInterface) init];
    [v11 activate];
    if ([v11 powerOn])
    {
      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      v23 = v6;
      v24 = v5;
      v25 = v2;
      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      v12 = dispatch_semaphore_create(0);
      v13 = *(v9 + 16);
      *(v9 + 16) = v12;

      sub_10003E110(0, &qword_1001FD040);
      v22 = static OS_dispatch_queue.main.getter();
      v14 = swift_allocObject();
      *(v14 + 16) = v9;
      *(v14 + 24) = v11;
      aBlock[4] = sub_10003E100;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001BF530;
      v15 = _Block_copy(aBlock);

      v21 = v11;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
      sub_10003C49C(&unk_1001FD050);
      sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v16 = v22;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v15);

      (*(v25 + 8))(v4, v1);
      (*(v23 + 8))(v8, v24);
    }
  }

  swift_beginAccess();
  v17 = *(v9 + 16);
  v18 = v17;

  return v17;
}

void sub_10003262C(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = a2;
  v6 = sub_1000B8724(sub_10003E108, v4);

  [v6 showOnTopWithAnimated:1 completion:0];
}

void sub_1000326DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = v6;
    OS_dispatch_semaphore.signal()();
  }

  sub_10003E110(0, &qword_1001FDF50);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
    v19 = 0;
    v10 = [a4 setPower:1 error:&v19];
    v11 = v19;
    if (v10)
    {

      v12 = v11;
    }

    else
    {
      v14 = v19;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static os_log_type_t.error.getter();
      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      sub_10003C49C(&unk_1001FEAD0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_10017EC00;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = v17;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = sub_10003DFBC();
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      os_log(_:dso:log:_:_:)();

      sub_1000F74E8(0x10u);
    }
  }

  else
  {
    if (qword_1001FC840 != -1)
    {
      swift_once();
    }

    v13 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
    if (v13)
    {
      [v13 setResultCode:-1];
    }

    sub_1000F6FF8(8);
  }
}

void sub_100032994(uint64_t a1)
{
  if ([*(a1 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 >= 6)
  {
    sub_1000390C8();
  }

  else
  {

    sub_1000F74E8(0x10u);
  }
}

uint64_t sub_1000329FC(unsigned __int8 a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, char *a5)
{
  result = sub_100089BF8(a1, a2);
  if (result)
  {
    return a3();
  }

  if (a1 - 1 >= 2)
  {
    if (!a1)
    {
      return a3();
    }
  }

  else
  {
    v9 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_retryTimer;
    v10 = *&a5[OBJC_IVAR____TtC11Diagnostics19SetupViewController_retryTimer];
    if (v10)
    {
      [v10 invalidate];
      v11 = *&a5[v9];
      *&a5[v9] = 0;
    }

    v12 = swift_allocObject();
    *(v12 + 16) = a5;
    v13 = a5;
    sub_1000F018C(sub_10003D8B4, v12);
  }

  return result;
}

char *sub_100032AE0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v4 = (&v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = type metadata accessor for DispatchTime();
  v44 = *(v51 - 8);
  v5 = __chkstk_darwin(v51);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v14 - 8);
  v50 = v14;
  __chkstk_darwin(v14);
  v46 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v47 = *(v16 - 8);
  v48 = v16;
  __chkstk_darwin(v16);
  v45 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (os_variant_has_internal_content() && (v18 = [objc_opt_self() standardUserDefaults], v19 = String._bridgeToObjectiveC()(), v20 = objc_msgSend(v18, "BOOLForKey:", v19), v18, v19, v20))
  {
    sub_10003E110(0, &qword_1001FD040);
    v21 = static OS_dispatch_queue.main.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = v1;
    v57 = sub_10003E0E0;
    v58 = v22;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_100031FA8;
    v56 = &unk_1001BF418;
    v23 = _Block_copy(&aBlock);
    v24 = v1;

    v25 = v45;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
    v26 = v46;
    v27 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v49 + 8))(v26, v27);
    return (*(v47 + 8))(v25, v48);
  }

  else
  {
    v1[OBJC_IVAR____TtC11Diagnostics19SetupViewController_localizedStringsPrepared] = 0;
    v29 = objc_opt_self();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = sub_10003E0D0;
    v58 = v30;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_1000334AC;
    v56 = &unk_1001BF3A0;
    v31 = _Block_copy(&aBlock);

    [v29 prepareLocalizedStringsWithCompletionHandler:v31];
    _Block_release(v31);
    result = [*&v1[OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow] destination];
    if ((result - 1) <= 5)
    {
      sub_10003E110(0, &qword_1001FD040);
      (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
      v41 = static OS_dispatch_queue.global(qos:)();
      (*(v11 + 8))(v13, v10);
      static DispatchTime.now()();
      *v4 = 5;
      v33 = v42;
      v32 = v43;
      (*(v42 + 104))(v4, enum case for DispatchTimeInterval.seconds(_:), v43);
      + infix(_:_:)();
      (*(v33 + 8))(v4, v32);
      v44 = *(v44 + 8);
      (v44)(v7, v51);
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v57 = sub_10003E0D8;
      v58 = v34;
      aBlock = _NSConcreteStackBlock;
      v54 = 1107296256;
      v55 = sub_100031FA8;
      v56 = &unk_1001BF3C8;
      v35 = _Block_copy(&aBlock);

      v36 = v45;
      static DispatchQoS.unspecified.getter();
      v52 = _swiftEmptyArrayStorage;
      sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
      sub_10003C49C(&unk_1001FD050);
      sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
      v37 = v46;
      v38 = v50;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v39 = v41;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v35);

      (*(v49 + 8))(v37, v38);
      (*(v47 + 8))(v36, v48);
      (v44)(v9, v51);
    }
  }

  return result;
}

void sub_10003336C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) == 1)
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    sub_100033C7C();
  }

  else
  {
    v1 = sub_1000305F0();
    sub_100039B84(v1, 1, 0, 0);
  }
}

void sub_100033450(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10003BDC8(a1 & 1);
  }
}

void sub_1000334AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_100033524()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10003BDC8(0);
  }
}

void sub_10003357C(uint64_t a1, char a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (*(Strong + OBJC_IVAR____TtC11Diagnostics19SetupViewController_localizedStringsPrepared))
    {
LABEL_3:

      return;
    }

    *(Strong + OBJC_IVAR____TtC11Diagnostics19SetupViewController_localizedStringsPrepared) = 1;
    if ((a2 & 1) == 0)
    {
      if (qword_1001FC7A8 != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      os_log(_:dso:log:type:_:)();
      if ([*&v12[OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow] destination] - 1 <= 5)
      {
        sub_1000F74E8(0x10u);
        goto LABEL_3;
      }
    }

    v19 = v4;
    sub_10003E110(0, &qword_1001FD040);
    v18 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    aBlock[4] = sub_10003E0F4;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001BF4B8;
    v17 = _Block_copy(aBlock);
    v14 = v12;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v17;
    v15 = v18;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v19 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }
}

void sub_10003394C(void *a1)
{
  v1 = qword_1001FC7B0;
  if (*(a1 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) == 1)
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    sub_100033C7C();
  }

  else
  {
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = off_100200F00;
    if (*(off_100200F00 + 2) && (v4 = sub_100064AFC(0x6C6172656E6567, 0xE700000000000000), (v5 & 1) != 0))
    {
      v6 = *(v3[7] + v4);
      swift_endAccess();
      if (v6 != 3)
      {
        v7 = sub_1000305F0();
        sub_100039B84(v7, 1, 0, 0);
      }
    }

    else
    {
      swift_endAccess();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      if (qword_1001FC7E8 != -1)
      {
        swift_once();
      }

      if (SessionManager.currentSession.getter())
      {
        Session.status.getter();
        v8 = SessionStatus.rawValue.getter();
        if (v8 == SessionStatus.rawValue.getter())
        {
          v9 = sub_1000305F0();
          sub_100039B84(v9, 1, 0, 0);
        }

        else
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v12 = off_100200F00;
          off_100200F00 = 0x8000000000000000;
          sub_100142160(3, 0x6C6172656E6567, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
          off_100200F00 = v12;
          swift_endAccess();
        }
      }

      else
      {
        v10 = sub_1000305F0();
        sub_100039B84(v10, 1, 0, 0);
      }
    }
  }
}

void sub_100033C7C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = __chkstk_darwin(v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted] & 1) == 0)
  {

    sub_1000F6FF8(1);
    return;
  }

  v49 = v7;
  v50 = v2;
  v51 = v1;
  v52 = v6;
  v10 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow;
  if ([*&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow] destination] - 1 <= 5 && sub_1000660CC())
  {
    if (os_variant_has_internal_content())
    {
      v11 = [objc_opt_self() standardUserDefaults];
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 BOOLForKey:v12];

      if (v13)
      {
        sub_10006D118();
        if ((v15 & 1) == 0)
        {

          sub_10006631C(v14);
          return;
        }
      }
    }
  }

  v16 = [*&v0[v10] destination];
  if (v16 == 1 || v16 == 2 || v16 == 3)
  {
    v19 = [*&v0[v10] serialNumber];
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = String.lowercased()();
      countAndFlagsBits = v21._countAndFlagsBits;
      object = v21._object;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    v24 = MobileGestalt_get_current_device();
    if (v24)
    {
      v25 = v24;
      v26 = MobileGestalt_copy_serialNumber_obj();

      if (v26)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = String.lowercased()();

        if (object)
        {
          if (countAndFlagsBits == v27._countAndFlagsBits && object == v27._object)
          {

            goto LABEL_29;
          }

          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v28)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }

        if (qword_1001FC7B0 != -1)
        {
          swift_once();
        }

        static os_log_type_t.fault.getter();
        os_log(_:dso:log:type:_:)();
        v30 = v51;
        if (qword_1001FC6C8 != -1)
        {
          swift_once();
        }

        v31 = objc_allocWithZone(type metadata accessor for AssessmentVerifyDeviceViewController());
        v32 = sub_100130DD4();
        sub_10003E110(0, &qword_1001FD040);
        v33 = static OS_dispatch_queue.main.getter();
        v34 = swift_allocObject();
        *(v34 + 16) = v32;
        *(v34 + 24) = 1;
        *(v34 + 32) = 0;
        *(v34 + 40) = 0;
        v57 = sub_10003E3E0;
        v58 = v34;
        aBlock = _NSConcreteStackBlock;
        v54 = 1107296256;
        v55 = sub_100031FA8;
        v56 = &unk_1001BF328;
        v35 = _Block_copy(&aBlock);
        v36 = v32;

        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
        sub_10003C49C(&unk_1001FD050);
        sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v35);

        goto LABEL_38;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_29:
  if (([*&v0[v10] destination] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    if (qword_1001FC6C0 != -1)
    {
      swift_once();
    }

    v29 = *&v0[v10];
    sub_100051B70(v29);

    v44 = sub_100052250();
    if (qword_1001FC6C8 != -1)
    {
      swift_once();
    }

    sub_10003E110(0, &qword_1001FD040);
    v33 = static OS_dispatch_queue.main.getter();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = 1;
    *(v45 + 32) = 0;
    *(v45 + 40) = 0;
    v57 = sub_10003E3E0;
    v58 = v45;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_100031FA8;
    v56 = &unk_1001BF378;
    v46 = _Block_copy(&aBlock);
    v47 = v44;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
    v30 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v46);

LABEL_38:
    (*(v50 + 8))(v4, v30);
    (*(v49 + 8))(v9, v52);
    return;
  }

  v37 = sub_1000305D0();
  sub_100039B84(v37, 1, 0, 0);

  v38 = qword_1001FC7B0;
  v39 = v0;
  if (v38 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  if (qword_1001FC7C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v40 = off_100200F00;
  if (*(off_100200F00 + 2) && (v41 = sub_100064AFC(0x6C6172656E6567, 0xE700000000000000), (v42 & 1) != 0))
  {
    v43 = *(v40[7] + v41);
    swift_endAccess();
    sub_1000371BC(v43);
  }

  else
  {
    swift_endAccess();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v39 = v39;
    sub_1000E746C(0, 0, v39);
  }
}

uint64_t sub_1000347B0(unsigned __int8 a1)
{
  result = sub_100089BF8(a1, &off_1001BD930);
  if (result)
  {
    v4 = [objc_opt_self() defaultCenter];
    v5 = objc_opt_self();
    v6 = @"com.apple.Diagnostics.deviceStateChangedNotification";
    v7 = [v5 mainQueue];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = a1;
    v12[4] = sub_10003DB3C;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100060B2C;
    v12[3] = &unk_1001BF120;
    v10 = _Block_copy(v12);

    v11 = [v4 addObserverForName:v6 object:0 queue:v7 usingBlock:v10];
    _Block_release(v10);

    *(v1 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_stateChangeToken) = v11;
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10003495C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_10003C49C(&qword_1001FCE90);
  v5 = __chkstk_darwin(v4 - 8);
  v165 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v167 = &v143 - v7;
  v166 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v8 = *(v166 - 8);
  __chkstk_darwin(v166);
  v164 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v169 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v168 = *(v13 - 8);
  __chkstk_darwin(v13);
  v170 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v15 - 8);
  v17 = &v143 - v16;
  v18 = sub_10003C49C(&qword_1001FCE98);
  __chkstk_darwin(v18);
  v20 = &v143 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = Notification.userInfo.getter();
    if (v23)
    {
      v24 = v23;
      v163 = v12;
      v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v177 = v25;
      AnyHashable.init<A>(_:)();
      if (*(v24 + 16) && (v26 = sub_100064B74(&v178), (v27 & 1) != 0))
      {
        sub_10003E010(*(v24 + 56) + 32 * v26, &aBlock);
        sub_10003DB48(&v178);

        if (*(&v173 + 1))
        {
          sub_10003E110(0, &unk_100201860);
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }

          v157 = v13;
          v158 = v10;
          v28 = v178;
          v29 = [v178 snapshot];
          v150 = v28;
          if (([v28 changedProperties] & 0x10) != 0)
          {
            if (qword_1001FC740 != -1)
            {
              swift_once();
            }

            v30 = [v29 sessionSettings];
            sub_10009DFD4(v30);
          }

          v161 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow;
          v31 = [*&v22[OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow] destination];
          v152 = v29;
          if ((v31 - 1) <= 5)
          {
            v32 = [*&v22[v161] serialNumber];
            if (v32)
            {
              v33 = v32;
              object = static String._unconditionallyBridgeFromObjectiveC(_:)();

              v34 = String.lowercased()();
              countAndFlagsBits = v34._countAndFlagsBits;
              object = v34._object;
            }

            else
            {
              countAndFlagsBits = 0;
              object = 0xE000000000000000;
            }

            v37 = [v152 serialNumber];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v38 = String.lowercased()();

            v159 = v38._countAndFlagsBits;
            v39 = object;
            v40 = countAndFlagsBits;
            if ((countAndFlagsBits != v38._countAndFlagsBits || object != v38._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              static os_log_type_t.info.getter();
              sub_10003C49C(&unk_1001FEAD0);
              v134 = swift_allocObject();
              *(v134 + 16) = xmmword_10017EC10;
              *(v134 + 56) = &type metadata for String;
              v135 = sub_10003DFBC();
              *(v134 + 32) = v40;
              *(v134 + 40) = v39;
              *(v134 + 96) = &type metadata for String;
              *(v134 + 104) = v135;
              v136 = v159;
              *(v134 + 64) = v135;
              *(v134 + 72) = v136;
              *(v134 + 80) = v38._object;
              sub_10003E110(0, &qword_1001FD6F0);
              v137 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)();

              return;
            }

            v29 = v152;
          }

          if ([v29 phase] == 1)
          {
            v41 = *&v22[OBJC_IVAR____TtC11Diagnostics19SetupViewController_stateChangeToken];
            if (v41)
            {
              v42 = objc_opt_self();
              swift_unknownObjectRetain();
              v43 = [v42 defaultCenter];
              [v43 removeObserver:v41];
              swift_unknownObjectRelease();
            }

            if (a3 != 1)
            {
              if (a3 == 2)
              {
                sub_1000E66D8(0, 0);
              }

              goto LABEL_142;
            }

            v119 = v161;
            v120 = vdupq_n_s64([*&v22[v161] destination]);
            if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_1001BD9D8, v120), vceqq_s64(unk_1001BD9E8, v120)))) & 1) == 0)
            {
              goto LABEL_142;
            }

            v121 = [*&v22[v119] destination];
            if ((v121 - 2) >= 2)
            {
              a3 = v170;
              if (v121 == 1)
              {
                if (!sub_1000660CC())
                {
                  sub_10003E110(0, &qword_1001FD040);
                  v132 = static OS_dispatch_queue.main.getter();
                  *(&v180 + 1) = sub_100036A78;
                  v181 = 0;
                  v178 = _NSConcreteStackBlock;
                  *&v179 = 1107296256;
                  v133 = &unk_1001BF1E8;
                  goto LABEL_144;
                }

                goto LABEL_140;
              }

              if (v121 != 6)
              {
                goto LABEL_142;
              }

              v122 = [v29 errors];
              sub_10003C49C(&qword_100201C30);
              v123 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v124 = *(v123 + 16);
              if (v124)
              {
                a3 = 0;
                while (a3 < *(v123 + 16))
                {
                  swift_errorRetain();
                  v125 = _convertErrorToNSError(_:)();
                  v126 = [v125 code];

                  if ((v126 & 0xFFFFFFFFFFFFFFFELL) == 6)
                  {

                    v142 = sub_1000B8BDC(sub_10003E4C8, 0);
                    [v142 showOnTopWithAnimated:1 completion:0];

                    return;
                  }

                  ++a3;
                  v29 = v152;
                  if (v124 == a3)
                  {
                    goto LABEL_132;
                  }
                }

LABEL_151:
                __break(1u);
LABEL_152:
                __break(1u);
LABEL_153:
                __break(1u);
LABEL_154:
                __break(1u);
                goto LABEL_155;
              }

LABEL_132:
            }

            v127 = sub_1000660CC();
            a3 = v170;
            if (!v127)
            {
              if ([*&v22[v161] destination] == 3)
              {
                if (qword_1001FC848 == -1)
                {
LABEL_136:
                  v128 = sub_10003DAAC(v18, qword_10020A600);
                  swift_beginAccess();
                  sub_10003DD14(v128, v20);
                  v129 = type metadata accessor for AssessmentError();
                  if ((*(*(v129 - 8) + 48))(v20, 1, v129) == 1)
                  {
                    sub_10003DD84(v20, &qword_1001FCE98);
                    v130 = type metadata accessor for TaskPriority();
                    (*(*(v130 - 8) + 56))(v17, 1, 1, v130);
                    v131 = swift_allocObject();
                    *(v131 + 16) = 0;
                    *(v131 + 24) = 0;
                    sub_1000EC574(0, 0, v17, &unk_10017ED40, v131);

                    sub_10003E110(0, &qword_1001FD040);
                    v132 = static OS_dispatch_queue.main.getter();
                    *(&v180 + 1) = sub_100037080;
                    v181 = 0;
                    v178 = _NSConcreteStackBlock;
                    *&v179 = 1107296256;
                    v133 = &unk_1001BF238;
LABEL_144:
                    *(&v179 + 1) = sub_100031FA8;
                    *&v180 = v133;
                    v139 = _Block_copy(&v178);
                    static DispatchQoS.unspecified.getter();
                    v178 = _swiftEmptyArrayStorage;
                    sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
                    sub_10003C49C(&unk_1001FD050);
                    sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
                    v140 = v163;
                    v141 = v158;
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    OS_dispatch_queue.async(group:qos:flags:execute:)();

                    _Block_release(v139);
                    (*(v169 + 8))(v140, v141);
                    (*(v168 + 8))(a3, v157);
                    return;
                  }

                  v35 = &qword_1001FCE98;
                  p_aBlock = v20;
                  goto LABEL_18;
                }

LABEL_155:
                swift_once();
                goto LABEL_136;
              }

              static os_log_type_t.error.getter();
              sub_10003E110(0, &qword_1001FD6F0);
              v138 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)();

LABEL_142:
LABEL_149:

              return;
            }

LABEL_140:
            type metadata accessor for RootViewController();
            sub_100060770(15);
            goto LABEL_142;
          }

          v44 = [v29 errors];
          sub_10003C49C(&qword_100201C30);
          v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v46 = sub_10014B558(v45);

          v47 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_onScreenErrors;
          swift_beginAccess();
          v149 = v47;
          v48 = *&v22[v47];
          if ((v48 & 0xC000000000000001) != 0)
          {
            if (v48 < 0)
            {
              v49 = v48;
            }

            else
            {
              v49 = v48 & 0xFFFFFFFFFFFFFF8;
            }

            v50 = __CocoaSet.count.getter();
            v48 = sub_100108050(v49, v50);
          }

          else
          {
          }

          sub_100105AE8(v46, v48);
          v178 = v46;

          sub_10007449C(countAndFlagsBits);
          v18 = v178;
          if (v178 >> 62)
          {
            v17 = _CocoaArrayWrapper.endIndex.getter();
            if (v17)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v17 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v17)
            {
LABEL_40:
              if (v17 < 1)
              {
                __break(1u);
                goto LABEL_151;
              }

              v20 = 0;
              v146 = 0;
              object = (v18 & 0xC000000000000001);
              v156 = v18 + 32;
              v155 = &v173;
              v154 = (v169 + 8);
              v153 = (v168 + 8);
              v148 = countAndFlagsBits & 0xC000000000000001;
              v151 = countAndFlagsBits + 56;
              v145 = (v8 + 56);
              v144 = (v8 + 48);
              v147 = xmmword_10017EC00;
              v159 = v18;
              v168 = v17;
              while (1)
              {
                if (object)
                {
                  v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v61 = *(v156 + 8 * v20);
                }

                v62 = v61;
                v63 = [v61 code];
                if (v63 > 4)
                {
                  if ((v63 - 6) < 2)
                  {
                    if ([*&v22[v161] destination] - 1 >= 6)
                    {
                      goto LABEL_86;
                    }

                    v66 = sub_1000B8BDC(sub_10003E4C8, 0);
                  }

                  else
                  {
                    if (v63 != 5)
                    {
                      if (v63 == 13)
                      {
                        static os_log_type_t.info.getter();
                        sub_10003E110(0, &qword_1001FD6F0);
                        v64 = static OS_os_log.default.getter();
                        os_log(_:dso:log:_:_:)();

                        if ([*&v22[v161] destination] - 1 < 6)
                        {
                          if (qword_1001FC840 != -1)
                          {
                            swift_once();
                          }

                          v65 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
                          if (v65)
                          {
                            [v65 setResultCode:-4];
                          }

                          sub_1000F6FF8(14);

                          goto LABEL_43;
                        }

                        goto LABEL_86;
                      }

LABEL_63:
                      v67 = v63;
                      static os_log_type_t.error.getter();
                      sub_10003C49C(&unk_1001FEAD0);
                      v68 = swift_allocObject();
                      *(v68 + 16) = v147;
                      *(v68 + 56) = &type metadata for Int;
                      *(v68 + 64) = &protocol witness table for Int;
                      *(v68 + 32) = v67;
                      sub_10003E110(0, &qword_1001FD6F0);
                      v69 = static OS_os_log.default.getter();
                      os_log(_:dso:log:_:_:)();

LABEL_85:

LABEL_86:
                      goto LABEL_43;
                    }

                    if ([*&v22[v161] destination] - 1 >= 6)
                    {
                      goto LABEL_86;
                    }

                    v66 = sub_1000B8F1C(sub_100037124, 0);
                  }

                  v69 = v66;
                  [v66 showOnTopWithAnimated:1 completion:0];
                  goto LABEL_85;
                }

                if (v63 < 2)
                {
                  goto LABEL_42;
                }

                if (v63 != 3)
                {
                  break;
                }

                sub_10003E110(0, &qword_100202990);
                if (v148)
                {
                  v70 = v62;
                  v71 = __CocoaSet.contains(_:)();

                  if (v71)
                  {
                    goto LABEL_66;
                  }
                }

                else
                {
                  v82 = countAndFlagsBits;
                  if (*(countAndFlagsBits + 16))
                  {
                    v83 = NSObject._rawHashValue(seed:)(*(countAndFlagsBits + 40));
                    v84 = -1 << *(v82 + 32);
                    v17 = v83 & ~v84;
                    if ((*(v151 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
                    {
                      v85 = ~v84;
                      while (1)
                      {
                        v86 = *(*(countAndFlagsBits + 48) + 8 * v17);
                        v87 = static NSObject.== infix(_:_:)();

                        if (v87)
                        {
                          break;
                        }

                        v17 = (v17 + 1) & v85;
                        if (((*(v151 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
                        {
                          goto LABEL_92;
                        }
                      }

LABEL_66:
                      if (qword_10020A3C0)
                      {
                        v72 = qword_1001FC838;
                        v73 = qword_10020A3C0;
                        v29 = v152;
                        if (v72 != -1)
                        {
                          swift_once();
                        }

                        swift_beginAccess();
                        v74 = qword_1001FDBA0;
                        if (qword_1001FDBA0)
                        {
                          type metadata accessor for SelfServiceDestinationPickerViewController();
                          if (!swift_dynamicCastClass())
                          {
                            type metadata accessor for AssessmentQRCodeViewController();
                            if (!swift_dynamicCastClass())
                            {
                              v99 = v74;
                              goto LABEL_110;
                            }
                          }
                        }

                        if (qword_1001FC6D0 != -1)
                        {
                          swift_once();
                        }

                        v75 = [qword_10020A388 viewControllers];
                        sub_10003E110(0, &qword_1001FDE30);
                        v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                        if (v76 >> 62)
                        {
                          v77 = _CocoaArrayWrapper.endIndex.getter();
                          if (!v77)
                          {
                            goto LABEL_107;
                          }

LABEL_76:
                          v78 = __OFSUB__(v77, 1);
                          v79 = v77 - 1;
                          if (v78)
                          {
                            goto LABEL_152;
                          }

                          if ((v76 & 0xC000000000000001) != 0)
                          {
                            v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                          }

                          else
                          {
                            if ((v79 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_153;
                            }

                            if (v79 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
                            {
                              goto LABEL_154;
                            }

                            v80 = *(v76 + 8 * v79 + 32);
                          }

                          v81 = v80;
                        }

                        else
                        {
                          v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          if (v77)
                          {
                            goto LABEL_76;
                          }

LABEL_107:

                          if (qword_1001FC6C8 != -1)
                          {
                            swift_once();
                          }

                          v99 = qword_10020A380;
LABEL_110:
                          v81 = v99;
                        }

                        v100 = [v81 presentedViewController];

                        v18 = v159;
                        if (v100)
                        {
                          sub_10003E110(0, &qword_1001FCE88);
                          if (static NSObject.== infix(_:_:)())
                          {
                            sub_10003E110(0, &qword_1001FD040);
                            v169 = static OS_dispatch_queue.main.getter();
                            v101 = swift_allocObject();
                            *(v101 + 16) = 0;
                            *(v101 + 24) = 1;
                            *(v101 + 32) = v73;
                            *(v101 + 40) = 1;
                            *(v101 + 48) = 0;
                            *(v101 + 56) = 0;
                            v174 = sub_10003DCFC;
                            v175 = v101;
                            *&aBlock = _NSConcreteStackBlock;
                            *(&aBlock + 1) = 1107296256;
                            *&v173 = sub_100031FA8;
                            *(&v173 + 1) = &unk_1001BF1C0;
                            v143 = _Block_copy(&aBlock);
                            v102 = v73;

                            static DispatchQoS.unspecified.getter();
                            *&aBlock = _swiftEmptyArrayStorage;
                            sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
                            sub_10003C49C(&unk_1001FD050);
                            sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
                            v103 = v163;
                            a3 = v158;
                            dispatch thunk of SetAlgebra.init<A>(_:)();
                            v104 = v143;
                            v105 = v169;
                            OS_dispatch_queue.async(group:qos:flags:execute:)();
                            v106 = v104;
                            v18 = v159;
                            _Block_release(v106);

                            (*v154)(v103, a3);
                            (*v153)(v170, v157);
                            goto LABEL_120;
                          }
                        }

                        v107 = v73;

                        v109 = v146;
                        v110 = sub_10012BA70(v108, v107);
                        v146 = v109;

                        v111 = _HashTable.startBucket.getter();
                        v112 = 1;
                        v113 = v167;
                        if (v111 != 1 << *(v110 + 32))
                        {
                          sub_10012B22C(v111, *(v110 + 36), v110, v167);
                          v112 = 0;
                        }

                        v114 = v166;
                        (*v145)(v113, v112, 1, v166);

                        if ((*v144)(v113, 1, v114) == 1)
                        {
                          sub_10003DD84(v113, &qword_1001FCE90);
                        }

                        else
                        {
                          v115 = v164;
                          sub_10003DBF4(v113, v164);
                          v116 = v165;
                          sub_100127920(v115, v165);
                          sub_10003DD84(v116, &qword_1001FCE90);
                          sub_10003DC58(v115);
                        }

LABEL_120:
                        swift_endAccess();
                        v117 = qword_10020A3C0;
                        qword_10020A3C0 = 0;
                      }

                      else
                      {
                        v29 = v152;
                      }

                      v17 = v168;
                      swift_beginAccess();
                      v118 = sub_100127BBC(v62);
                      swift_endAccess();

                      goto LABEL_43;
                    }
                  }
                }

LABEL_92:
                v88 = *&v22[v149];
                if ((v88 & 0xC000000000000001) != 0)
                {
                  v89 = v62;

                  v90 = __CocoaSet.contains(_:)();

                  if ((v90 & 1) == 0)
                  {
                    goto LABEL_102;
                  }
                }

                else
                {
                  if (!*(v88 + 16))
                  {
                    goto LABEL_102;
                  }

                  v91 = *(v88 + 40);

                  v92 = NSObject._rawHashValue(seed:)(v91);
                  v93 = -1 << *(v88 + 32);
                  v94 = v92 & ~v93;
                  if (((*(v88 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94) & 1) == 0)
                  {
LABEL_101:

LABEL_102:
                    v29 = v152;
                    v18 = v159;
                    v17 = v168;
                    swift_beginAccess();
                    v97 = v62;
                    sub_100108684(&v171, v97);
                    v98 = v171;
                    swift_endAccess();

                    v178 = 1;
                    v179 = 0u;
                    v180 = 0u;
                    v181 = 0;
                    v182 = 2;
                    sub_100088E48(0, 0);

                    goto LABEL_43;
                  }

                  a3 = ~v93;
                  while (1)
                  {
                    v95 = *(*(v88 + 48) + 8 * v94);
                    v96 = static NSObject.== infix(_:_:)();

                    if (v96)
                    {
                      break;
                    }

                    v94 = (v94 + 1) & a3;
                    if (((*(v88 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94) & 1) == 0)
                    {
                      goto LABEL_101;
                    }
                  }
                }

                v29 = v152;
                v18 = v159;
                v17 = v168;
LABEL_43:
                if (++v20 == v17)
                {
                  goto LABEL_148;
                }
              }

              if (v63 != 4)
              {
                goto LABEL_63;
              }

LABEL_42:
              sub_10003E110(0, &qword_1001FD040);
              v51 = static OS_dispatch_queue.main.getter();
              v52 = swift_allocObject();
              *(v52 + 16) = v22;
              v174 = sub_10003DB9C;
              v175 = v52;
              *&aBlock = _NSConcreteStackBlock;
              *(&aBlock + 1) = 1107296256;
              *&v173 = sub_100031FA8;
              *(&v173 + 1) = &unk_1001BF170;
              v53 = _Block_copy(&aBlock);
              v54 = v22;

              v169 = v20;
              v55 = v22;
              v56 = v62;
              v57 = v170;
              static DispatchQoS.unspecified.getter();
              *&aBlock = _swiftEmptyArrayStorage;
              sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
              a3 = v29;
              sub_10003C49C(&unk_1001FD050);
              sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
              v58 = v158;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              v59 = v53;
              v18 = v159;
              _Block_release(v59);

              v22 = v55;
              v20 = v169;

              v60 = v58;
              v17 = v168;
              (*v154)(v163, v60);
              (*v153)(v57, v157);
              goto LABEL_43;
            }
          }

LABEL_148:

          goto LABEL_149;
        }
      }

      else
      {

        sub_10003DB48(&v178);
        aBlock = 0u;
        v173 = 0u;
      }
    }

    else
    {

      aBlock = 0u;
      v173 = 0u;
    }

    v35 = &unk_1001FD720;
    p_aBlock = &aBlock;
LABEL_18:
    sub_10003DD84(p_aBlock, v35);
  }
}

uint64_t sub_100036678(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  __chkstk_darwin(v12);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_10003E06C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001BF288;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v13 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v12);
}

void sub_100036950(char a1)
{
  if (a1 == 1)
  {
    v1 = sub_1000B925C(sub_100036A14, 0);
    [v1 showOnTopWithAnimated:1 completion:0];
  }

  else
  {
    if (qword_1001FC6C8 != -1)
    {
      swift_once();
    }

    sub_100066800(4, 1);
  }
}

void sub_100036A14()
{
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_100066800(4, 1);
}

uint64_t sub_100036A78()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v14 = *(v3 - 8);
  v15 = v3;
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  v6 = objc_allocWithZone(type metadata accessor for AssessmentCompleteViewController());
  v7 = sub_10009A744(0);
  sub_10003E110(0, &qword_1001FD040);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = 1;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  aBlock[4] = sub_10003E3E0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001BF2D8;
  v10 = _Block_copy(aBlock);
  v11 = v7;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v16 + 8))(v2, v0);
  return (*(v14 + 8))(v5, v15);
}

uint64_t sub_100036DCC()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection);
  v0[2] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_100036EE0;

    return sub_1000DA5F4();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100036EE0()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10003701C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10003701C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100037080()
{
  v0 = objc_allocWithZone(type metadata accessor for AssessmentCompleteViewController());
  v1 = sub_10009A744(1);
  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  [qword_10020A388 pushViewController:? animated:?];
}

void sub_10003712C(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v4 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (v4)
  {
    [v4 setResultCode:-1];
  }

  sub_1000F6FF8(a3);
}

uint64_t sub_1000371BC(unsigned __int8 a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000347B0(a1);
  sub_10003E110(0, &qword_1001FD040);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_10003DA7C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001BEEA0;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

void sub_1000374AC(unsigned __int8 a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v119 = v9;
      v120 = v4;
      v121 = v8;
      v18 = v14;
      v19 = [objc_opt_self() sharedInstance];
      [v19 overrideSessionModeWithMode:2];

      if (qword_1001FC730 != -1)
      {
        swift_once();
      }

      v20 = qword_10020A3C8;
      *(qword_10020A3C8 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8) = &off_1001BE838;
      swift_unknownObjectWeakAssign();
      sub_10003E110(0, &qword_1001FD040);
      (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v18);
      v21 = static OS_dispatch_queue.global(qos:)();
      (*(v13 + 8))(v16, v18);
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      v129 = sub_10003DAE4;
      v130 = v22;
      aBlock = _NSConcreteStackBlock;
      v126 = 1107296256;
      v127 = sub_100031FA8;
      v128 = &unk_1001BF030;
      v23 = _Block_copy(&aBlock);
      v24 = v20;
      static DispatchQoS.unspecified.getter();
      v122 = _swiftEmptyArrayStorage;
      sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
      sub_10003C49C(&unk_1001FD050);
      sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
      v25 = v120;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v23);

      (*(v5 + 8))(v7, v25);
      (*(v119 + 8))(v11, v121);

      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      os_log(_:dso:log:type:_:)();
      return;
    }
  }

  else if (!a1)
  {
    sub_10003E110(0, &qword_1001FD6F0);
    v17 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if ([*(a2 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 >= 6)
    {
      sub_1000390C8();
    }

    else
    {

      sub_1000F74E8(0x10u);
    }

    return;
  }

  v117 = v11;
  v118 = v7;
  v119 = v5;
  v120 = v4;
  v26 = [objc_opt_self() sharedInstance];
  [v26 overrideSessionModeWithMode:1];

  v27 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow;
  v28 = [*(a2 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination];
  if ((v28 - 1) >= 3)
  {
    if (v28 == 6)
    {
      goto LABEL_35;
    }

    v121 = v8;
    v55 = [objc_allocWithZone(type metadata accessor for DashboardViewController()) initWithStyle:1];
    v56 = *&v55[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager];
    v56[OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly] = 0;
    v57 = v55;
    v58 = v56;
    sub_100151130();

    goto LABEL_66;
  }

  if (qword_1001FC730 != -1)
  {
    swift_once();
  }

  v29 = qword_10020A3C8;
  *(qword_10020A3C8 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint) = 1;
  if (qword_1001FC6D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DKViewControllerDelegateResponder();
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    v31 = v30;
    swift_unknownObjectRetain();
    v32 = sub_1000462E8(16, 0);
    v33 = v31 + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__presentationTransitionStyle;
    *v33 = v32;
    *(v33 + 8) = v34 & 1;
    v35 = sub_1000462E8(16, 0);
    v36 = v31 + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__dismissalTransitionStyle;
    *v36 = v35;
    *(v36 + 8) = v37 & 1;
    *v33 = sub_1000462E8(16, 0);
    *(v33 + 8) = v38 & 1;
    *v36 = sub_1000462E8(16, 0);
    *(v36 + 8) = v39 & 1;
    swift_unknownObjectRelease();
  }

  if ([*(&v27->isa + a2) destination] == 1)
  {
    v40 = [objc_opt_self() sharedApplication];
    v41 = [v40 delegate];

    if (v41)
    {
      type metadata accessor for AppDelegate();
      v42 = swift_dynamicCastClass();
      if (v42)
      {
        v43 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor;
        v44 = v42;
        [*(v42 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor) startWithPriority:200 completion:0];
        v45 = *(v44 + v43);
        swift_unknownObjectRelease();
        v46 = type metadata accessor for ButtonEventsConsumer();
        v47 = objc_allocWithZone(v46);
        v48 = &v47[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
        *v48 = 0;
        *(v48 + 1) = 0;
        v123.receiver = v47;
        v123.super_class = v46;
        v49 = v45;
        v50 = objc_msgSendSuper2(&v123, "init");
        v51 = &v50[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
        v52 = *&v50[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
        *v51 = sub_100038988;
        v51[1] = 0;
        v53 = v8;
        v54 = v50;
        sub_10003C52C(v52);

        [v49 addTarget:v54 action:"consume:" forButtonEvents:48 propagate:0];
        v8 = v53;
LABEL_56:
        v121 = v8;
        if (qword_1001FC6B8 != -1)
        {
          swift_once();
        }

        v99 = qword_10020A368;
        v27 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
        v100 = swift_allocObject();
        *(v100 + 16) = v99;
        a2 = swift_allocObject();
        *(a2 + 16) = sub_10003E468;
        *(a2 + 24) = v100;
        v129 = sub_10003E41C;
        v130 = a2;
        aBlock = _NSConcreteStackBlock;
        v126 = 1107296256;
        v127 = sub_100060C48;
        v128 = &unk_1001BEFE0;
        v101 = _Block_copy(&aBlock);
        v102 = v99;

        dispatch_sync(v27, v101);
        _Block_release(v101);
        LOBYTE(v101) = swift_isEscapingClosureAtFileLocation();

        if ((v101 & 1) == 0)
        {
          v103 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
          v102[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = 1;
          v104 = sub_100050814();
          [v104 setNearbySharingEnabled:(v102[v103] & 1) == 0];

          sub_1000508A4();
          sub_100050C28();
          v105 = objc_allocWithZone(type metadata accessor for SuiteInProgressViewController());
          v57 = sub_1000ECABC(v29, 0);

          goto LABEL_60;
        }

        __break(1u);
        goto LABEL_71;
      }

      swift_unknownObjectRelease();
    }

    v49 = 0;
    goto LABEL_56;
  }

  if ([*(&v27->isa + a2) destination] == 2 || objc_msgSend(*(&v27->isa + a2), "destination") == 3)
  {
    v121 = v8;
    if (qword_1001FC840 == -1)
    {
LABEL_29:
      v59 = *(&v27->isa + a2);
      sub_100136BA0(v59);

      v57 = sub_100137090();
LABEL_60:
      v106 = v117;
      if (qword_1001FC738 != -1)
      {
        swift_once();
      }

      sub_1000925B4(qword_1001FEED0, qword_1001FEED8, 0);
      goto LABEL_67;
    }

LABEL_71:
    swift_once();
    goto LABEL_29;
  }

  if (qword_1001FC7C8 != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v60 = type metadata accessor for Logger();
    sub_10003DAAC(v60, qword_10020A510);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Bad launch URL parameters, defaulting to no session view controller", v63, 2u);
    }

    type metadata accessor for RootViewController();
    sub_100060770(16);
LABEL_35:
    if (qword_1001FC730 != -1)
    {
      swift_once();
    }

    v64 = qword_10020A3C8;
    *(qword_10020A3C8 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint) = 1;
    if (qword_1001FC6D8 != -1)
    {
      swift_once();
    }

    type metadata accessor for DKViewControllerDelegateResponder();
    v65 = swift_dynamicCastClass();
    if (v65)
    {
      v66 = v65;
      swift_unknownObjectRetain();
      v67 = sub_1000462E8(16, 0);
      v68 = v66 + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__presentationTransitionStyle;
      *v68 = v67;
      *(v68 + 8) = v69 & 1;
      v70 = sub_1000462E8(16, 0);
      v71 = v66 + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__dismissalTransitionStyle;
      *v71 = v70;
      *(v71 + 8) = v72 & 1;
      swift_unknownObjectRelease();
    }

    if (qword_1001FC738 != -1)
    {
      swift_once();
    }

    sub_1000925B4(qword_1001FEED0, qword_1001FEED8, 0);
    LOBYTE(v122) = 29;
    v73 = [*(&v27->isa + a2) serialNumber];
    if (!v73)
    {
      v98 = 16;
LABEL_53:
      LOBYTE(v122) = v98;
      sub_1000389F0(&v122);
      return;
    }

    v74 = v73;
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    if ((sub_100093180(v75, v77, 1uLL) & 1) == 0)
    {

      v98 = 19;
      goto LABEL_53;
    }

    v121 = v8;
    if (qword_1001FC6B8 != -1)
    {
      swift_once();
    }

    v78 = qword_10020A368;
    v79 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
    v27 = swift_allocObject();
    v27[2].isa = v78;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_10003DA8C;
    *(v8 + 24) = v27;
    v129 = sub_10003DAA4;
    v130 = v8;
    aBlock = _NSConcreteStackBlock;
    v126 = 1107296256;
    v127 = sub_100060C48;
    v128 = &unk_1001BEF68;
    v80 = _Block_copy(&aBlock);
    v81 = v78;

    dispatch_sync(v79, v80);
    _Block_release(v80);
    a2 = 1;
    LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

    if ((v80 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_73:
    swift_once();
  }

  v82 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
  *(v81 + OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled) = 1;
  v83 = sub_100050814();
  [v83 setNearbySharingEnabled:(*(v81 + v82) & 1) == 0];

  sub_1000508A4();
  sub_100050C28();
  v84 = [objc_opt_self() sharedApplication];
  v85 = [v84 delegate];

  if (v85)
  {
    type metadata accessor for AppDelegate();
    v86 = swift_dynamicCastClass();
    if (v86)
    {
      v87 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor;
      v88 = v86;
      [*(v86 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor) startWithPriority:200 completion:0];
      v89 = *(v88 + v87);
      swift_unknownObjectRelease();
      v90 = type metadata accessor for ButtonEventsConsumer();
      v91 = objc_allocWithZone(v90);
      v92 = &v91[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
      *v92 = 0;
      *(v92 + 1) = 0;
      v124.receiver = v91;
      v124.super_class = v90;
      v93 = v89;
      v94 = objc_msgSendSuper2(&v124, "init");
      v95 = &v94[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
      v96 = *&v94[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
      *v95 = sub_100038E04;
      v95[1] = 0;
      v97 = v94;
      sub_10003C52C(v96);

      [v93 addTarget:v97 action:"consume:" forButtonEvents:48 propagate:0];
      goto LABEL_65;
    }

    swift_unknownObjectRelease();
  }

  v93 = 0;
LABEL_65:
  v107 = objc_allocWithZone(type metadata accessor for SuiteInProgressViewController());
  v57 = sub_1000ECABC(v64, 0);

  v108 = &v57[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_serialNumber];
  *v108 = v75;
  v108[1] = v77;

  sub_1000389F0(&v122);
LABEL_66:
  v106 = v117;
LABEL_67:
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_10003E110(0, &qword_1001FD040);
  v109 = static OS_dispatch_queue.main.getter();
  v110 = swift_allocObject();
  *(v110 + 16) = v57;
  *(v110 + 24) = 1;
  *(v110 + 32) = 0;
  *(v110 + 40) = 0;
  v129 = sub_10003E3E0;
  v130 = v110;
  aBlock = _NSConcreteStackBlock;
  v126 = 1107296256;
  v127 = sub_100031FA8;
  v128 = &unk_1001BEEF0;
  v111 = _Block_copy(&aBlock);
  v112 = v57;

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  v113 = v106;
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  v114 = v118;
  v115 = v120;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v111);

  (*(v119 + 8))(v114, v115);
  (*(v9 + 8))(v113, v121);
}

uint64_t sub_100038924()
{
  if (qword_1001FC738 != -1)
  {
    swift_once();
  }

  return sub_1000925B4(qword_1001FEED0, qword_1001FEED8, 0);
}

uint64_t sub_1000389F0(unsigned __int8 *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (v11 != 29)
  {
    v15 = result;
    v16 = v3;
    if (v11 == 19)
    {
      if (qword_1001FC7B0 == -1)
      {
        goto LABEL_9;
      }
    }

    else if (v11 == 16)
    {
      if (qword_1001FC7B0 == -1)
      {
        goto LABEL_9;
      }
    }

    else if (qword_1001FC7B0 == -1)
    {
LABEL_9:
      static os_log_type_t.fault.getter();
      os_log(_:dso:log:type:_:)();
      sub_10003E110(0, &qword_1001FD040);
      v12 = static OS_dispatch_queue.main.getter();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      aBlock[4] = sub_10003DAFC;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001BF0D0;
      v14 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
      sub_10003C49C(&unk_1001FD050);
      sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v14);

      (*(v16 + 8))(v5, v2);
      return (*(v7 + 8))(v10, v15);
    }

    swift_once();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_100038E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v7 = *(v13 - 8);
  __chkstk_darwin(v13);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v10 = static OS_dispatch_queue.main.getter();
  aBlock[4] = a1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = a2;
  v11 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v14 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v13);
}

uint64_t sub_1000390F0(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  v3[2] = _swiftEmptyArrayStorage;
  v3[3] = sub_10003DA3C;
  v3[4] = v2;
  v3[5] = a1;
  v4 = a1;

  sub_1000E6380(0, 0, sub_10003E368, v3);
}

uint64_t sub_1000391E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_1000394B4(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = a2();
  sub_100039B84(v6, 1, 0, 0);

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  sub_100039758(a4, v7);
}

uint64_t sub_100039544(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  v3[2] = &off_1001BD9F8;
  v3[3] = sub_10003E454;
  v3[4] = v2;
  v3[5] = a1;
  v4 = a1;

  sub_1000E6380(0, 0, sub_10003E368, v3);
}

uint64_t sub_100039610(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = swift_allocObject();
  v4[2] = &off_1001BDA20;
  v4[3] = sub_10003D84C;
  v4[4] = v3;
  v4[5] = a2;
  v5 = a2;

  sub_1000E6380(0, 0, sub_10003D870, v4);
}

void sub_100039704()
{
  v0 = sub_100030B10();
  sub_100039B84(v0, 1, 0, 0);
}

void sub_100039758(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_retryTimer;
  if (!*(v2 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_retryTimer))
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v11[4] = sub_10003D960;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100072168;
    v11[3] = &unk_1001BEC70;
    v8 = _Block_copy(v11);

    v9 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:5.0];
    _Block_release(v8);
    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
  }
}

void sub_100039904()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SetupViewController();
  objc_msgSendSuper2(&v16, "applicationDidResume");
  v2 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentViewController;
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentViewController];
  v4 = v3;
  v5 = sub_100030AF0();
  v6 = v5;
  if (v3)
  {
    sub_10003E110(0, &qword_1001FDE30);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
LABEL_7:
      v13 = sub_1000305D0();
      v14 = swift_allocObject();
      *(v14 + 16) = v1;
      v15 = v1;
      sub_100039B84(v13, 1, sub_10003E158, v14);

      return;
    }
  }

  else
  {
  }

  v8 = *&v1[v2];
  v9 = v8;
  v10 = sub_100030C9C();
  v11 = v10;
  if (v8)
  {
    sub_10003E110(0, &qword_1001FDE30);
    v12 = static NSObject.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_100039A70(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = swift_allocObject();
  v4[2] = _swiftEmptyArrayStorage;
  v4[3] = sub_10003E4BC;
  v4[4] = v3;
  v4[5] = a2;
  v5 = a2;

  sub_1000E6380(0, 0, sub_10003E368, v4);
}

void sub_100039B84(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentViewController;
  v8 = *&v4[OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentViewController];
  if (v8)
  {
    v9 = v4;
    sub_10003E110(0, &qword_1001FDE30);
    v40 = v8;
    if (static NSObject.== infix(_:_:)())
    {
      if (a3)
      {
        a3(1);
      }

      return;
    }

    v12 = [v40 parentViewController];
    if (!v12 || (v13 = v12, v14 = v4, v15 = static NSObject.== infix(_:_:)(), v13, v14, (v15 & 1) == 0))
    {
      [v9 addChildViewController:v40];
    }

    v16 = [a1 view];
    if (v16)
    {
      v17 = v16;
      [v16 setAlpha:0.0];

      v18 = *&v9[v7];
      *&v9[v7] = a1;
      v19 = a1;

      [v40 willMoveToParentViewController:0];
      [v9 addChildViewController:v19];
      v20 = [v19 view];
      if (v20)
      {
        v21 = v20;
        v22 = [v9 view];
        if (v22)
        {
          v23 = v22;
          [v22 bounds];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;

          [v21 setFrame:{v25, v27, v29, v31}];
          v32 = [v19 view];
          if (v32)
          {
            v33 = v32;
            [v32 setAutoresizingMask:18];

            if (a2)
            {
              v34 = 0.375;
            }

            else
            {
              v34 = 0.0;
            }

            v35 = swift_allocObject();
            v35[2] = v19;
            v35[3] = v40;
            v35[4] = v9;
            v35[5] = a3;
            v35[6] = a4;
            aBlock[4] = sub_10003D918;
            aBlock[5] = v35;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100084F94;
            aBlock[3] = &unk_1001BEBD0;
            v36 = _Block_copy(aBlock);
            v37 = v40;
            v38 = v9;
            v39 = v19;
            sub_10003C48C(a3);

            [v38 transitionFromViewController:v37 toViewController:v39 duration:5242880 options:0 animations:v36 completion:v34];
            _Block_release(v36);

            return;
          }

LABEL_25:
          __break(1u);
          return;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if (a3)
  {
    a3(0);
  }
}

id sub_100039F18(char a1, id a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = [a2 view];
  if (result)
  {
    v11 = result;
    [result alpha];
    if (v12 == 0.0)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      aBlock[4] = sub_10003E440;
      aBlock[5] = v13;
      v16 = objc_opt_self();
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001BEC20;
      v14 = _Block_copy(aBlock);
      v15 = v11;

      [v16 animateWithDuration:0x10000 delay:v14 options:0 animations:0.375 completion:0.0];
      _Block_release(v14);
    }

    else
    {
    }

    [a3 removeFromParentViewController];
    result = [a2 didMoveToParentViewController:a4];
    if (a5)
    {
      return a5(a1 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003A118()
{

  return swift_unknownObjectRelease();
}

id sub_10003A1E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetupViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for SetupViewController.EntryReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SetupViewController.EntryReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003A490()
{
  result = qword_1001FCE80;
  if (!qword_1001FCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FCE80);
  }

  return result;
}

uint64_t sub_10003A4E4(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v26 = *(v13 - 8);
  v27 = v13;
  __chkstk_darwin(v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(type metadata accessor for SuiteInProgressViewController());
  v16 = a2;
  v17 = sub_1000ECABC(a1, a2);
  v18 = &v17[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear];
  v19 = *&v17[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear];
  *v18 = a3;
  v18[1] = a4;
  sub_10003C48C(a3);
  sub_10003C52C(v19);
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_10003E110(0, &qword_1001FD040);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  *(v21 + 24) = 1;
  *(v21 + 25) = a5 & 1;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  aBlock[4] = sub_10003C53C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001BE900;
  v22 = _Block_copy(aBlock);
  v23 = v17;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v28 + 8))(v12, v10);
  return (*(v26 + 8))(v15, v27);
}

void sub_10003A874(char a1, void *a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (a1 & 1) != 0)
  {
    v15 = qword_1001FC738;
    v16 = a2;
    v23 = v16;
    if (v15 != -1)
    {
      swift_once();
      v16 = v23;
    }

    sub_100094488(qword_1001FEED0, qword_1001FEED8, v16, 0);
    v17 = v23;
  }

  else
  {
    v23 = v12;
    sub_10003E110(0, &qword_1001FD040);
    v22 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    aBlock[4] = sub_10003CCE8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001BE9F0;
    v19 = _Block_copy(aBlock);
    v20 = a3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v14, v23);
  }
}

uint64_t sub_10003ABEC(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(type metadata accessor for SelfServiceSuitePickerViewController());
  v9 = sub_1000B2720(a1);
  v10 = OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_hidesBackButton;
  v9[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_hidesBackButton] = 1;
  v11 = [v9 navigationItem];
  [v11 setHidesBackButton:v9[v10]];

  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_10003E110(0, &qword_1001FD040);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = 1;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  aBlock[4] = sub_10003E3E0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001BEA40;
  v14 = _Block_copy(aBlock);
  v15 = v9;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v20 + 8))(v4, v2);
  return (*(v18 + 8))(v7, v19);
}

void sub_10003AF68(char a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (a1 & 1) != 0)
  {
    v13 = qword_1001FC730;
    v14 = a2;
    v22 = v14;
    if (v13 != -1)
    {
      swift_once();
      v14 = v22;
    }

    if (qword_1001FC738 != -1)
    {
      swift_once();
      v14 = v22;
    }

    sub_100094488(qword_1001FEED0, qword_1001FEED8, v14, 1);
    v15 = v22;
  }

  else
  {
    v22 = v10;
    sub_10003E110(0, &qword_1001FD040);
    v21 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    aBlock[4] = sub_10003CCF0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001BEA68;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v21;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v12, v22);
  }
}

void sub_10003B340()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 navigationController];
    if (v2)
    {
      v3 = v2;
      if (qword_1001FC730 != -1)
      {
        swift_once();
      }

      v4 = qword_10020A3C8;
      v5 = objc_allocWithZone(type metadata accessor for SelfServiceSuitePickerViewController());
      v6 = sub_1000B2720(v4);
      v7 = [v1 navigationController];

      if (v7)
      {
        [v7 pushViewController:v6 animated:1];
      }

      v8 = v1;
      v9 = [v3 viewControllers];
      sub_10003E110(0, &qword_1001FDE30);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = v10;
      v11 = sub_10003CE0C(&v14);

      if (v14 >> 62)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (v12 >= v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12 >= v11)
        {
LABEL_9:
          sub_10003D1AC(v11, v12);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v3 setViewControllers:isa];

          return;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_10003B550(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v21 = *(v11 - 8);
  v22 = v11;
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(type metadata accessor for SelfServiceDestinationPickerViewController());

  v14 = sub_100132FE8(a1, a2, a3, a4);
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_10003E110(0, &qword_1001FD040);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = 1;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  aBlock[4] = sub_10003E3E0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001BEAB8;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v10, v8);
  return (*(v21 + 8))(v13, v22);
}

uint64_t sub_10003B8E0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_10003B9C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void sub_10003BA24()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v1 - 8);
  v8 = v1;
  __chkstk_darwin();
  v6 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_transitionDuration) = 0x3FD8000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_retryInterval) = 0x4014000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_assessmentStartingProgress) = 1028443341;
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___loadingViewController) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___termsAndConditionsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___noSessionNavigationController) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___storageFullscreenAlertViewController) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController____lazy_storage___diagnosticsCompletedNavigationController) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_onScreenErrors) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_entryReason) = 0;
  v3 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow;
  *(v0 + v3) = [objc_opt_self() defaultFlow];
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_localizedStringsPrepared) = 0;
  v5 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_localizedStringsPreparedQueue;
  sub_10003E110(0, &qword_1001FD040);
  static DispatchQoS.unspecified.getter();
  v9 = &_swiftEmptyArrayStorage;
  sub_10003E230(&unk_1001FD740, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10003C49C(&unk_1001FCEA0);
  sub_10003E278(&qword_1001FD750, &unk_1001FCEA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  *(v0 + v5) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentViewController) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_retryTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_stateChangeToken) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10003BDC8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v16 = *(v7 - 8);
  v17 = v7;
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_localizedStringsPreparedQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10003E0E8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001BF468;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v18 + 8))(v6, v4);
  (*(v16 + 8))(v9, v17);
}

uint64_t sub_10003C0CC(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC730 != -1)
  {
    swift_once();
  }

  v12 = qword_10020A3C8;
  sub_10003E110(0, &qword_1001FD040);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a1;
  v15 = v21;
  *(v14 + 32) = a3;
  *(v14 + 40) = v15;
  *(v14 + 48) = a2 & 1;
  aBlock[4] = sub_10003C464;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001BE8B0;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v18 = a1;
  sub_10003C48C(a3);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v23 + 8))(v9, v7);
  return (*(v20 + 8))(v11, v22);
}

uint64_t sub_10003C414()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10003C474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003C48C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003C49C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10003C4E4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10003C52C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_10003C540(unint64_t a1, char **a2, char **a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC730 != -1)
  {
LABEL_50:
    swift_once();
  }

  v14 = qword_10020A3C8;
  if ([objc_opt_self() isSSRBootIntentSet])
  {
    v33 = v3;
    v34 = v14;
    v3 = a3;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    a3 = &selRef_btManagerAvailableSemaphore;
    while (v7 != v10)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v15 = *(a1 + 8 * v10 + 32);
      }

      v9 = v15;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v13 = [v15 endpoint];

      ++v10;
      if (v13 == 2)
      {
        (a2)(2);
        v23 = swift_allocObject();
        v24 = v34;
        *(v23 + 16) = v34;
        v25 = qword_1001FC738;
        v26 = v24;
        if (v25 != -1)
        {
          swift_once();
        }

        v27 = qword_1001FEED0;
        v28 = qword_1001FEED8;
        v29 = sub_10003CCE0;
        v30 = 2;
        goto LABEL_43;
      }
    }

    (a2)(0);
    if (qword_1001FC738 != -1)
    {
      swift_once();
    }

    sub_100093FD8(qword_1001FEED0, qword_1001FEED8);

    sub_100033C7C();
  }

  else if (*(v3 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_entryReason) == 5)
  {
    v33 = a2;
    v34 = v14;
    a2 = a3;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    a3 = &selRef_btManagerAvailableSemaphore;
    do
    {
      if (v7 == v10)
      {
        if (qword_1001FC738 != -1)
        {
          swift_once();
        }

        sub_100093FD8(qword_1001FEED0, qword_1001FEED8);

        sub_1000390C8();
        return;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v16 = *(a1 + 8 * v10 + 32);
      }

      v9 = v16;
      if (__OFADD__(v10, 1))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v13 = [v16 endpoint];

      ++v10;
    }

    while (v13 != 1);
    (v33)(1);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    if (qword_1001FC738 != -1)
    {
      swift_once();
    }

    v27 = qword_1001FEED0;
    v28 = qword_1001FEED8;
    v29 = sub_10003CCD8;
    v30 = 1;
LABEL_43:
    sub_1000959E0(v30, v27, v28, v29);
  }

  else
  {
    sub_10003E110(0, &qword_1001FD040);
    v32 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    v17[2] = v14;
    v17[3] = a1;
    v17[4] = a2;
    v17[5] = a3;
    aBlock[4] = sub_10003CC94;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001BE950;
    v18 = _Block_copy(aBlock);
    v19 = v14;
    v20 = v18;
    v21 = v19;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v32;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (v33[1])(v9, v7);
    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10003CC4C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003CCA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10003CCF8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_10003E110(0, &qword_1001FCE88);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_10003CE0C(unint64_t *a1)
{
  v3 = *a1;
  result = sub_10003CCF8(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &qword_1001FCE88;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_10003E110(0, v8);
    v12 = static NSObject.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_10003B9C0(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_10003B9C0(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10003D09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_10003E110(0, &qword_1001FDE30);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10003D1AC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_10003B8E0(result);

  return sub_10003D09C(v4, v2, 0);
}

unint64_t sub_10003D284(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10003D33C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1000D4D64(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10003D284(v6, a2, 0);
  *v2 = v4;
  return result;
}

char *sub_10003D410(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_10003E110(0, a5);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_10003D548(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = (v14 + v13);
  if (!v15)
  {
    sub_10003B8E0(result);
    return sub_10003D410(v8, v7, 1, v6, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10003D640(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for CardState();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_10003D760(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_10003B8E0(result);

  return sub_10003D640(v6, v5, 1, v3);
}

uint64_t sub_10003D87C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003D8C0()
{
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003D928()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DA44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DAAC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10003DB04()
{

  return _swift_deallocObject(v0, 25, 7);
}

void sub_10003DB9C()
{
  if ([*(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 <= 5)
  {

    sub_1000F74E8(0x10u);
  }
}

uint64_t sub_10003DBF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}