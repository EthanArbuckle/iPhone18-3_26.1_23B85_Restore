void sub_100001084(id a1)
{
  qword_100011A70 = objc_alloc_init(DAOpticalProximityManager);

  _objc_release_x1();
}

void MTProximityChangedCallbackFunc(uint64_t a1, uint64_t a2)
{
  v3 = +[DAOpticalProximityManager sharedInstance];
  [v3 handleNewProximityValue:a2];
}

id numberOrNull(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;

  return v4;
}

void sub_1000017C8(id a1)
{
  qword_100011A80 = objc_alloc_init(DADopplerProximityManager);

  _objc_release_x1();
}

id sub_100001AD8(uint64_t a1)
{
  result = [*(a1 + 32) activateProximitySensor];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100001FFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 == 132)
  {
    v18 = v10;
    v19 = v9;
    v20 = v7;
    v21 = v8;
    v11 = *(a6 + 16);
    v12 = a1;
    v13 = v12[7];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000022F4;
    v15[3] = &unk_10000C498;
    v16 = v12;
    v17 = v11;
    v14 = v12;
    dispatch_async(v13, v15);
  }
}

void sub_1000022F4(uint64_t a1)
{
  if ([*(a1 + 32) isUpdating])
  {
    v3 = *(a1 + 40);
    v2 = (a1 + 40);
    [*(v2 - 1) handleNewProximityValue:v3];
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100006224(v2, v4);
    }
  }
}

void sub_100002BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002BDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002BF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DiagnosticLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v5)
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Asset data for [%@] is nil", buf, 0xCu);
    }

    v18 = NSLocalizedDescriptionKey;
    v19 = @"Image asset data is nil.";
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = -7;
    goto LABEL_11;
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got asset data for [%@]", buf, 0xCu);
  }

  v7 = [[UIImage alloc] initWithData:v3];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unable to load asset data for [%@]", buf, 0xCu);
    }

    v20 = NSLocalizedDescriptionKey;
    v21 = @"Downloaded image data is not compatible with UIImage.";
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v13 = -6;
LABEL_11:
    v15 = [NSError errorWithDomain:@"DAProximitySensorErrorDomain" code:v13 userInfo:v12];
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

id sub_100003628(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) testPhase];
  if (v2 == 2)
  {
    v3 = [*v1 result];
    v4 = v3;
    v5 = &off_10000CAF0;
    goto LABEL_7;
  }

  if (v2 == 1)
  {
    v3 = [*v1 result];
    v4 = v3;
    v5 = &off_10000CAD8;
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = [*v1 result];
    v4 = v3;
    v5 = &off_10000CAC0;
LABEL_7:
    [v3 setStatusCode:v5];
    goto LABEL_10;
  }

  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000063D4(v1);
  }

LABEL_10:

  return [*v1 setTestPhase:3];
}

void sub_1000038E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000038FC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 24);
  if (a2 < 200 && v7 == 1)
  {
    v9 = v5;
    v8 = 0;
LABEL_7:
    *(v6 + 24) = v8;
    [*(a1 + 32) resetHoldTimerWithProximityState:*(*(*(a1 + 40) + 8) + 24)];
    v5 = v9;
    goto LABEL_8;
  }

  if (a2 > 200 && !v7)
  {
    v9 = v5;
    v8 = 1;
    goto LABEL_7;
  }

LABEL_8:
}

void sub_100003E00(uint64_t a1)
{
  [*(a1 + 32) stopHoldTimer];
  v8 = [*(a1 + 32) inputs];
  v2 = [v8 holdTime];
  [v2 doubleValue];
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v7 = [NSTimer scheduledTimerWithTimeInterval:v5 target:"holdTimerFinished:" selector:v6 userInfo:0 repeats:v4];
  [*(a1 + 32) setHoldTimer:v7];
}

void sub_10000436C(uint64_t a1)
{
  v1 = [*(a1 + 32) instructionImageView];
  [v1 setAlpha:1.0];
}

void sub_100004474(uint64_t a1)
{
  v1 = [*(a1 + 32) instructionImageView];
  [v1 setAlpha:0.0];
}

void sub_1000053B8(id a1)
{
  qword_100011A90 = objc_alloc_init(DAHIDEventMonitor);

  _objc_release_x1();
}

void sub_100005910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005928(uint64_t a1)
{
  v2 = [*(a1 + 32) HIDEvents];
  v3 = [v2 objectAtIndexedSubscript:*(a1 + 48)];
  v4 = [v3 objectForKeyedSubscript:@"HIDServiceClient"];
  v5 = [v4 pointerValue];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = IOHIDServiceClientSetProperty(v5, *(a1 + 56), *(a1 + 64)) != 0;
  }

  else
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000064D8();
    }
  }
}

uint64_t _HIDEventFilterCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = [a2 delegate];
    [v5 handleHIDEvent:a4];
  }

  return 0;
}

void sub_100006148(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100006198(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Found %li dopplers, which is unexpected. Taking the first one.", &v3, 0xCu);
}

double sub_100006224(float *a1, NSObject *a2)
{
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "ProxVal = %f", &v4, 0xCu);
  return result;
}

void sub_1000062A4(void *a1)
{
  [a1 proximityState];
  [a1 testPhase];
  sub_100004750();
  sub_100004740();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10000633C(void *a1)
{
  [a1 testPhase];
  [a1 proximityState];
  sub_100004750();
  sub_100004740();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000063D4(id *a1)
{
  [*a1 testPhase];
  sub_100004740();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100006540(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[ERROR] - Could not find plugin.", buf, 2u);
}