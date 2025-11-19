void sub_100001A8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_autoreleasePoolPush();
  [a2 _receivedNotification:a3 notificationObject:a4 notificationPayload:a5];

  objc_autoreleasePoolPop(v9);
}

void sub_100001DFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (CFStringCompare(*(a1 + 40), kFigCaptureStreamNotification_StreamStarted, 0) == kCFCompareEqualTo)
  {
    v4 = [WeakRetained streamStartSemaphore];

    if (!v4)
    {
      goto LABEL_8;
    }

    v3 = [WeakRetained streamStartSemaphore];
    goto LABEL_7;
  }

  if (CFStringCompare(*(a1 + 40), kFigCaptureStreamNotification_StreamStopped, 0) == kCFCompareEqualTo)
  {
    v2 = [WeakRetained streamStopSemaphore];

    if (v2)
    {
      v3 = [WeakRetained streamStopSemaphore];
LABEL_7:
      v5 = v3;
      dispatch_semaphore_signal(v3);
    }
  }

LABEL_8:
}

char **sub_100002364()
{
  v0 = off_100015DF0;
  v1 = off_100015DF0[0];
  while (1)
  {
    if (!v1)
    {
      goto LABEL_5;
    }

    v2 = IOServiceMatching(v1);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
    if (MatchingService)
    {
      break;
    }

    v4 = v0[5];
    v0 += 5;
    v1 = v4;
    if (!v4)
    {
LABEL_5:
      v1 = 0;
      if (!v0[1])
      {
        v1 = 0;
        if (!v0[2])
        {
          v1 = 0;
          if (!*(v0 + 6))
          {
            return v0;
          }
        }
      }
    }
  }

  IOObjectRelease(MatchingService);
  return v0;
}

id sub_100003068(uint64_t a1)
{
  [*(a1 + 32) runCameraTest];
  v2 = *(a1 + 32);

  return [v2 setFinished:1];
}

void sub_1000040B4(uint64_t a1)
{
  [*(a1 + 32) setSoloFrameCount:{objc_msgSend(*(a1 + 32), "soloFrameCount") + 1}];
  v2 = [*(a1 + 32) exclavesStatus];

  if (!v2)
  {
    v3 = [DAExclavesSupport exclavesStatusForSensors:2];
    [*(a1 + 32) setExclavesStatus:v3];
  }

  v4 = [*(a1 + 32) soloFrameCount];
  v5 = [*(a1 + 32) inputs];
  v6 = [v5 framesToSample];

  if (v4 == v6)
  {
    v7 = *(a1 + 40);

    dispatch_group_leave(v7);
  }
}

void sub_1000044A0(uint64_t a1)
{
  [*(a1 + 32) setAlphaSyncFrameCount:{objc_msgSend(*(a1 + 32), "alphaSyncFrameCount") + 1}];
  v2 = [*(a1 + 32) exclavesStatus];

  if (!v2)
  {
    v3 = [DAExclavesSupport exclavesStatusForSensors:2];
    [*(a1 + 32) setExclavesStatus:v3];
  }

  v4 = [*(a1 + 32) alphaSyncFrameCount];
  v5 = [*(a1 + 32) inputs];
  v6 = [v5 framesToSample];

  if (v4 == v6)
  {
    v7 = *(a1 + 40);

    dispatch_group_leave(v7);
  }
}

void sub_100004574(uint64_t a1)
{
  [*(a1 + 32) setBravoSyncFrameCount:{objc_msgSend(*(a1 + 32), "bravoSyncFrameCount") + 1}];
  v2 = [*(a1 + 32) exclavesStatus];

  if (!v2)
  {
    v3 = [DAExclavesSupport exclavesStatusForSensors:2];
    [*(a1 + 32) setExclavesStatus:v3];
  }

  v4 = [*(a1 + 32) bravoSyncFrameCount];
  v5 = [*(a1 + 32) inputs];
  v6 = [v5 framesToSample];

  if (v4 == v6)
  {
    v7 = *(a1 + 40);

    dispatch_group_leave(v7);
  }
}

void sub_100004864(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100005D58(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000160F8;
  qword_1000160F8 = v1;

  v3 = objc_alloc_init(OSDCaptureDevice);
  [qword_1000160F8 setDevice:v3];
}

void sub_100007448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007478(uint64_t a1, uint64_t a2, __int128 *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = *a3;
  v7 = *(a3 + 2);
  [WeakRetained _receivedPixelBuffer:a2 time:&v6];
}

void sub_1000074D8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = *a3;
  v9 = *(a3 + 2);
  [WeakRetained _receivedEvent:a2 timestamp:&v8 info:a4];
}

void sub_1000079C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100007A00(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  [v7 doubleValue];
  if (v5 > *(*(*(a1 + 32) + 8) + 24))
  {
    [v7 doubleValue];
    *(*(*(a1 + 32) + 8) + 24) = v6;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void sub_100007E0C(uint64_t a1)
{
  [*(a1 + 32) _processBuffer:*(a1 + 40)];
  v2 = *(a1 + 40);

  CVPixelBufferRelease(v2);
}

void sub_100008514(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "NSError variable was previously assigned.  New unsaved error: %@", &v2, 0xCu);
}

void sub_10000858C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "NSError variable was nil.  New unsaved error: %@", &v2, 0xCu);
}